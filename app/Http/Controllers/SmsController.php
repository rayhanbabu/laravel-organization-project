<?php

namespace App\Http\Controllers;

use App\Models\sms;
use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\validator;
use App\Models\Testimonial;
use DB;
use Session;
use PDF;

class SmsController extends Controller
{
    public function smsview()
     {
         if (Session::has('admin')) {
          $admin = Admin::where('admin_name', Session::get('admin')->admin_name)->first();
          return view('admin.smsview', ['admin' => $admin]);
        }
    }

    public function smsbuy()
    {
      if(Session::has('admin')){
       $admin=Admin::where('admin_name',Session::get('admin')->admin_name)->first();  
       $smsbuy=DB::table('eiin_sms')->where('admin_name',$admin->admin_name)->get();
       $activesms=DB::table('eiin_sms')->where('admin_name',$admin->admin_name)->where('verify_status',1)
       ->where('status',1)->sum('smsno');
       return view('admin.smsbuy',['admin'=>$admin ,'smsbuy'=>$smsbuy,'activesms'=>$activesms]);
      }
    }


    public function smsdetails()
    {
      if(Session::has('admin')){
        $admin=Admin::where('admin_name',Session::get('admin')->admin_name)->first();  
        $smsbuy=DB::table('eiin_sms')->where('admin_name',$admin->admin_name)->where('verify_status',1)
        ->where('status',1)->get();
        $smsspend=DB::table('sms')->where('admin_name',$admin->admin_name)->get();
       return view('admin.smsdetails',['admin'=>$admin ,'smsbuy'=>$smsbuy,'smsspend'=>$smsspend]);
      }
    }


  public function smsinsert(Request $request)
  {
    if (Session::has('admin')) {
      $admin = Admin::where('admin_name', Session::get('admin')->admin_name)->first();
      $smsavailable = $admin->available_sms;
      if ($smsavailable > 0) {
        $sms_type = $request->input('sms_type');
        if ($sms_type == 'single') {
          $text = $request->input('text');
          $textinfo = $text.'. '.strtoupper($admin->admin_name);
          $characterCount = strlen($textinfo);
          $phone = $request->input('phone');
          $phonearr = $phone;
          $textinfo = $text;
          $smscount = 1;
          $balancedata = json_decode(get_balance());
          $getsms = (int)($balancedata->balance / .25);
          if ($getsms < $smscount) {
              return back()->with('danger', 'SMS API Server Problem. Please Contact Service provider');
          } else if ($smsavailable < $smscount) {
              return back()->with('danger', '	Balance Validity Not Available');
          } else if ($characterCount>150) {
              return back()->with('danger','Character must be 150');
          } else {
            sms_send($phonearr, $textinfo);
            $current_sms = $smsavailable - $smscount;
            DB::update("update admins set  available_sms='$current_sms'  where admin_name ='$admin->admin_name'");

            $model = new Sms;
            $model->admin_name = $admin->admin_name;
            $model->sms_type = $sms_type;
            $model->sms_count = 1;
            $model->text = $text;
            $model->save();
          }
        } else if ($sms_type == 'members') {
          $text = $request->input('text');
          $category = $request->input('category');
          $fromserial = $request->input('fromserial');
          $toserial = $request->input('toserial');
       
        $data=Testimonial::where('category', $category)
             ->whereBetween('serial',[$fromserial,$toserial])->where('admin_name', $admin->admin_name)->where('verify_status',1)->get();
        $smscount = $data->count();
        $textinfo = $text;
        if ($smscount>81) {
          return back()->with('danger', 'Invalid Range Or Range geather 80 ');
        }

        $balancedata = json_decode(get_balance());
        $getsms = (int)($balancedata->balance / .25);
          if ($getsms < $smscount) {
            return back()->with('danger', 'SMS API Server Problem. Please Contact Service provider');
          } else if ($smsavailable < $smscount OR empty($smscount) ) {
            return back()->with('danger', '	Balance Validity Not Available OR Database  Empty ');
          } else {
            foreach ($data as $row) {
              $phonearr = $row->phone;
                sms_send($phonearr, $textinfo);
              $current_sms = $smsavailable - $smscount;
              DB::update("update admins set available_sms='$current_sms'  where admin_name ='$admin->admin_name'");
            }

            $sms_others="serial(".$fromserial." to ".$toserial.")";
            $model = new Sms;
            $model->admin_name = $admin->admin_name;
            $model->sms_type = $sms_type;
            $model->sms_count = $smscount;
            $model->others1 = $sms_others;
            $model->class = $category;
            $model->text = $text;
            $model->save();
          }
        }

        return back()->with('success', 'SMS Send Successfully ');
      } else {
        return back()->with('danger', 'SMS not available');
      }
    }
  }

  



    public function index(Request $request){
          $data =  DB::table('eiin_sms')->get();
          return view('maintain.smsinfo',['data'=>$data]);
     }


      



       

   public function smsbuyinsert(Request $request){
    if(Session::has('admin')){
        $admin=Admin::where('admin_name',Session::get('admin')->admin_name)->first();  

        $sms['admin_name']=$admin->admin_name;
        $sms['nameen']=$admin->nameen;
        $sms['smsno']=round($request->input('payment')/.40);
        $sms['payment']=$request->input('payment');
        $sms['payment_type']='';
        $sms['ref']='';
        $sms['created_at']=date('Y-m-d H:i:s');
        DB::table('eiin_sms')->insert($sms);   
       return back()->with('success','Sms Submit  Successfully');
      }
   }



    public function smspayment(Request $request)
  {
    $status = $request->input('status');
    $invoice_id = $request->input('invoice_id_view');
    $admin_name = $request->input('admin_name');
    $smsno = $request->input('smsno');
    $admin = Admin::where('admin_name', $admin_name)->first();

    if ($status == 1) {
      $status1 = 0;
      $paymenttime = date('2010-10-10 10:10:10');
      $paymenttype = '';
      $availablesms = $admin->available_sms - $smsno;
    } else {
      $status1 = 1;
      $paymenttime = date('Y-m-d H:i:s');
      $paymenttype = 'Admin';
      $availablesms = $admin->available_sms + $smsno;
    }

    $payment_date = date('Y-m-d');
    $payment_day = date('d');
    $payment_month = date('n');
    $payment_year = date('Y');

    DB::update(
      "update eiin_sms set status ='$status1', payment_time=' $paymenttime',payment_type='$paymenttype' 
       ,payment_date='$payment_date',payment_day='$payment_day',payment_month='$payment_month', payment_year='$payment_year' where id ='$invoice_id'"
    );

    DB::update("update admins set  available_sms='$availablesms'  where admin_name ='$admin_name'");

    return back()->with('success', 'Update Information');
  }





   public function smsstatus($type,$status,$id){

     if($status=='deactive'){
         $status1=0;
       }else{
        //$type=md5(1);
          $status1=1;
       }

 if($type=='verify_status'){
     DB::update(
         "update eiin_sms set verify_status ='$status1' where id = '$id'"
        );  
        return back()->with('success','Admin Status change Successful'); 
   }
   }




   public function onlinesmspdf(Request $request){
 
      $month=date('n',strtotime($_POST['month']));
      $year=date('Y',strtotime($_POST['month']));
      $monthyear=$request->input('month');
      $status=$request->input('status');
      $invoice= DB::table('eiin_sms')->where('payment_month',$month)->where('payment_year',$year)->where('status',$status)->get();

        $file='Invoice-'.$monthyear.'.pdf';

        $pdf = PDF::loadView('pdf.onlinesmspdf',[
            'title' => 'PDF Title',
            'author' => 'PDF Author',
            'margin_left' => 20,
            'margin_right' => 20,
            'margin_top' => 60,
            'margin_bottom' => 20,
            'margin_header' => 15,
            'margin_footer' => 10,
            'showImageErrors' => true,
            'invoice' => $invoice,
            'monthyear' => $monthyear,
            'status' => $status,
        ]);

        return $pdf->stream($file.'.pdf');

   }

}
