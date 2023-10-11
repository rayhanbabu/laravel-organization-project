<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use DB;
use Hash;
use Mail;
use Session;

class AdminController extends Controller
{
    function loginview(){
        return view('admin.login');
    }

    public function login(Request $request){
          $request->validate([
              'admin_name'=>'required',
              'admin_password'=>'required',
          ]);
       $status=1;
       $admin=DB::table('admins')->where('admin_name','=',$request->admin_name)->first();
       if($admin){
        if($request->admin_password==$admin->admin_password){
        if($admin->email_verify==$status){
            if($admin->status==$status){
                 $request->session()->put('admin',$admin);
                 return redirect('/admin/dashboard');
             }else{
                 return back()->with('fail','Waiting for account verification');
             }
             }else{
                return back()->with('fail','Invalid E-mail.Send URL your mail. Please Click and Verify E-mail');
             } 
        }else{
            return back()->with('fail','Incorrect Password');
        }
     }else{
        return back()->with('fail','Incorrect Username');
     }

}

    function dashboard(){
        if(Session::has('admin')){
            $admin=Session::get('admin');
        }
        return view('admin.dashboard',['admin'=>$admin]); 
    }


    public function logout(){
        if(Session::has('admin')){
            Session::pull('admin');
            return redirect('admin/login');
        }
     }

     
    function password(){
        if(Session::has('admin')){
            $admin=Session::get('admin');
       }
       return view('admin.password',['admin'=>$admin]); 
        //return 'rayhan';
    }

    function passwordedit(Request $request)
    {
        $email=$request->input('email');
        $n_pass=$request->input('n_pass');
        $c_pass=$request->input('c_pass');
        if(Session::has('admin')){
            $admin=Session::get('admin');
         }
         if($email==$admin->email){
            if($n_pass==$c_pass){

             $password= Admin::find($admin->id);
             //$password->password=Hash::make($npass);
              $password->admin_password=$n_pass;
              $password->update();
              return redirect('/admin/password')->with('success','Passsword change  successfully');
            }else{
            return back()->with('fail','New Password and Confirm Password does not match');
         }
        }else{
         return back()->with('fail','Invalid E-mail');
         }
         
    }


    public function forget(){
        return view('admin.forget');
       }


       public function forgetemail(request $request){
   
        $email=$request->input('email');
        $rand=rand(11111,99999);
        $email_exist=Admin::where('email',$email)->count('email');
       if($email_exist>=1){
           DB::update(
              "update admins set forget_code ='$rand' where email = '$email'"
            );


            $subject='Admin E-mail Recovary Code';  
            $title='Hi ';
            $body='Your one time recovery code';
            $link='';
            $name='amaderthikana.com ';  
            $details = [
             'subject' => $subject,
             'title' => $title,
             'otp_code' => $rand,
             'link' => $link,
             'body' => $body,
             'name' => $name,
            ];
            Mail::to($email)->send(new \App\Mail\ForgetMail($details));


           return response()->json([
              'status'=>500,
              'errors'=> 'Email exist',
           ]); 
        }else{
            return response()->json([
              'status'=>600,
              'errors'=> 'Invalid  Email ',
           ]); 
        }   
  }   



  public function forgetcode(request $request){
        
    $email_id=$request->input('email_id');
    $forget_code=$request->input('forget_code');
    $code_exist=Admin::where('email',$email_id)->where('forget_code',$forget_code)->count('email');
    if($code_exist>=1){ 
         return response()->json([
            'status'=>500,
            'errors'=> 'valid code',
         ]); 
    }else{
        return response()->json([
          'status'=>600,
          'errors'=> 'Invalid  Code',
       ]); 
    }   
}


public function confirmpass(request $request){
    
    $email_id_pass=$request->input('email_id_pass');
    $npass=$request->input('npass');
    $cpass=$request->input('cpass');
    //$password=Hash::make($npass);
    $password=$npass;
   
     if($npass == $cpass){
       DB::update(
          "update admins set admin_password ='$password' where email = '$email_id_pass'"
        );
         return response()->json([
            'status'=>500,
            'errors'=> 'valid code',
         ]); 

    }else{
        return response()->json([
           'status'=>600,
           'errors'=> 'New password & Confirm password Does not match',
       ]); 
    }   
}








}
