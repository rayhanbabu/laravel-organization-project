<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Testimonial;
use App\Models\Text;
use App\Models\App;
use App\Models\Admin;
use App\Models\Maintain;
use App\Models\Magazine;
use App\Models\Notice;
use App\Models\expre;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\validator;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Lang;
use DB;
use Cookie;
use Session;

class TestimonialController extends Controller
{
     public function index($member) {
      $admin= Admin::where('admin_name',Session::get('admin')->admin_name)->first();    
      $union= App::where('admin_name',Session::get('admin')->admin_name)->where('category','union')->get();
      $university= App::where('admin_name',Session::get('admin')->admin_name)->where('category','university')->get();
           return view('admin.testimonial',['member'=>$member,'university'=>$university 
            ,'union'=>$union,'admin'=>$admin]);
     }

   public function store(Request $request){

    if(Session::has('admin')){
     $admin= Admin::where('admin_name',Session::get('admin')->admin_name)->first();
        $validator=\Validator::make($request->all(),[       
           'serial' => 'required',
           'name' => 'required',
           'category' => 'required',
           'workplace' => 'required',
           'image' => 'image|mimes:jpeg,png,jpg|max:512000',
        ]);

     if($request->input('category')=='Executive'){
         $count=$admin->executive_size;
     }else if($request->input('category')=='Senior'){
       $count=$admin->senior_size;
    }else if($request->input('category')=='Advisor'){
      $count=$admin->advisor_size;
     }else if($request->input('category')=='General'){
      $count=$admin->general_size;
     }

   if($validator->fails()){
    return response()->json([
      'status'=>700,
      'validate_err'=>$validator->messages(),
    ]);
  }else{
  
    $data= Testimonial::where('serial',$request->input('serial'))->where('category',$request->input('category'))
    ->where('admin_name',$admin->admin_name)->count('serial');
    $data1= Testimonial::where('admin_name',$admin->admin_name)->count('serial');
     if($data>=1){
         return response()->json([
              'status'=>600,
              'errors'=> 'Serial Number Already Exist',
         ]);  
      }else if($data1>=$admin->member_size){
          
         return response()->json([
             'status'=>500,
             'errors'=> 'Row Insert Permision is '.$admin->member_size. '. More Details Contact service Provider',
          ]);  
       }else{
      $testimonial= new Testimonial;
      $testimonial->serial=$request->input('serial');
      $testimonial->category=$request->input('category');
      $testimonial->admin_name=$admin->admin_name;
      $testimonial->name=$request->input('name');
      $testimonial->workplace=$request->input('workplace');
      $testimonial->current_address=$request->input('current_address');
      $testimonial->permanent_address=$request->input('permanent_address');
      $testimonial->blood=$request->input('blood');
      $testimonial->blood_status=$request->input('blood_status');
      $testimonial->phone=$request->input('phone');
      $testimonial->phone_status=$request->input('phone_status');
      $testimonial->email=$request->input('email');
      $testimonial->text1=$request->input('text1');
      $testimonial->email_status=$request->input('email_status');
      $testimonial->fb_link=$request->input('fb_link');
      $testimonial->verify_status=1;

   
    
       if($request->hasfile('image')){
       // $file=$_FILES['image']['tmp_name'];
       // $hw=getimagesize($file);
       // $w=$hw[0];
       // $h=$hw[1];	 
           // if($w<310 && $h<310){
             $image= $request->file('image'); 
             $new_name = rand() . '.' . $image->getClientOriginalExtension();
             $image->move(public_path('uploads/admin'), $new_name);
             $testimonial->image=$new_name;
          //}else{
          //  return response()->json([
           //     'status'=>300,  
           //    'message'=>'Image size must be 300*300 ',
           //  ]);
          //  }
        }
       $testimonial->save();
       return response()->json([
        'status'=>400,  
        'message'=>'Inserted Data',
      ]);
      
     
      }

      }

    }
   }


     public function storeapi(Request $request,$username){

      $admin= Admin::where('admin_name',$username)->first();
      $validator=\Validator::make($request->all(),[       
            'name' => 'required',
            'phone' => 'required|unique:testimonials,phone',
       
            'image' => 'image|mimes:jpeg,png,jpg|max:512000',
       ]);
     //  'email' => 'required|unique:testimonials,email',
        
  if($admin){
    if($validator->fails()){
       return response()->json([
           'status'=>'error',
           'message'=>$validator->messages(),
        ],402);
   }else{
     $data1= Testimonial::where('admin_name',$username)->count('serial');
      $categorynumber= Testimonial::where('admin_name',$username)->where('category','General')->count('serial')+1;
       if($data1>=$admin->member_size){  
           return response()->json([
               'status'=>600,
               'errors'=> 'Row Insert Permision is '.$admin->member_size. '. More Details Contact service Provider',
            ],403);  
       }else{
      $testimonial= new Testimonial;
      $testimonial->category="General";
      $testimonial->serial=$categorynumber;
      $testimonial->text1='General Member';
      $testimonial->admin_name=$username;
      $testimonial->name=$request->input('name');
      $testimonial->workplace=$request->input('workplace');
      $testimonial->current_address=$request->input('current_address');
      $testimonial->permanent_address=$request->input('permanent_address');
      $testimonial->blood=$request->input('blood');
      $testimonial->blood_status='show';
      $testimonial->phone=$request->input('phone');
      $testimonial->phone_status='show';
      $testimonial->email=$request->input('email');
      $testimonial->email_status='show';
      $testimonial->verify_status=0;
      $testimonial->text2=$request->input('text2');

      $testimonial->custom1=$request->input('custom1');
      $testimonial->custom2=$request->input('custom2');
      $testimonial->custom3=$request->input('custom3');
      $testimonial->custom4=$request->input('custom4');
      $testimonial->university=$request->input('university');
      $testimonial->department=$request->input('department');
      $testimonial->address_union=$request->input('address_union');


    
       if($request->hasfile('image')){
        $file=$_FILES['image']['tmp_name'];
        $hw=getimagesize($file);
        $w=$hw[0];
        $h=$hw[1];	 
            if($w<310 && $h<310){
             $image= $request->file('image'); 
             $new_name = rand() . '.' . $image->getClientOriginalExtension();
             $image->move(public_path('uploads/admin'), $new_name);
             $testimonial->image=$new_name;
          }else{
            return response()->json([
                'status'=>'error',  
                'message'=>'Image size must be 300*300 ',
             ],456);
            }
        }
       $testimonial->save();
       return response()->json([
          'status'=>'success',  
          'message'=>'Registration Successfull',
       ],200);

        }

       }

       }else{
           return response()->json([
              'status'=>'error',  
              'message'=>'Something Rong',
           ],479);
       }

    }

    
   public function fetchAll($member) {
    if(Session::has('admin')){
    $admin=Session::get('admin');
    $data = Testimonial::where('testimonials.category',$member)->where('testimonials.admin_name',$admin->admin_name)
    ->leftjoin('apps','apps.id','=','testimonials.address_union')
    ->select('apps.dureg as app_category','testimonials.*')->get();
      $output=' <h5 class="text-success"> Total Member : '.$data->count().' </h5>';	
    if ($data->count()> 0) {
       $output .= '<table class="table table-bordered table-sm text-start align-middle">
       <thead>
         <tr>
           <th>Serial Number</th>
           <th>Image</th>
           <th>Name</th>
           <th>Edit/View</th>
           <th>Phone, E-mail </th>
           <th>Blood</th>
           <th>Union</th>
           <th>University</th>
           <th>Verify Status </th>
           <th>Action</th>
         </tr>
       </thead>
       <tbody>';
       foreach ($data as $row) {
               if(empty($row->blood_date)){
          $comment='<a href="#"class="btn btn-info btn-sm">NA</a>';
     }else if(strtotime(date("Y-m-d"))-strtotime(date("Y-m-d",strtotime($row->blood_date)))>10540800){
          $comment='<a href="#"class="btn btn-success btn-sm">Available</a>';
     }else{
           $comment='<a href="#"class="btn btn-danger btn-sm">Waiting</a>';
      }
           $output .= '<tr>
            <td>' . $row->serial . '</td>
            <td><img src="/uploads/admin/'. $row->image. '" width="70" class="img-thumbnail" alt="Image"></td>
            <td>' . $row->name .'</td>
            <td>   <a href="#" id="' . $row->id . '" class="text-success mx-1 editIcon" data-bs-toggle="modal" data-bs-target="#editEmployeeModal"><i class="bi-pencil-square h4"></i></a>
            </td>
            <td>' . $row->phone .', '. $row->phone_status .', '. $row->email .', '. $row->email_status . '</td>
            <td>' . $row->blood. '</td>
            <td>' . $row->app_category. '</td>
            <td>' . $row->university. '</td>
            <td>' . $row->verify_status. '</td>
           <td>
          
           <a href="#" id="' . $row->id . '" class="text-danger mx-1 deleteIcon"><i class="bi-trash h4"></i></a>
         </td>
     </tr>';
     }
       $output .= '</tbody></table>';
       echo $output;
    } else {
       echo '<h1 class="text-center text-secondary my-5">No record present in the database!</h1>';
    }
  }
}


public function edit(Request $request) {
  $id = $request->id;
  $data = Testimonial::find($id);
  return response()->json([
    'status'=>200,  
    'data'=>$data,
  ]);
}

public function update(Request $request ){
           
      
  $validator=\Validator::make($request->all(),[
             
    'serial' => 'required',
    'name' => 'required',
    'category' => 'required',
    'workplace' => 'required',
    'image' => 'image|mimes:jpeg,png,jpg|max:512000',
  ]);

if($validator->fails()){
 return response()->json([
   'status'=>700,
   'validate_err'=>$validator->messages(),
 ]);
}else{

  $testimonial=Testimonial::find($request->input('edit_id'));
  if($testimonial){
         $testimonial->serial=$request->input('serial');
         $testimonial->category=$request->input('category');
         $testimonial->name=$request->input('name');
         $testimonial->workplace=$request->input('workplace');
         $testimonial->current_address=$request->input('current_address');
         $testimonial->permanent_address=$request->input('permanent_address');
         $testimonial->blood=$request->input('blood');
         $testimonial->blood_status=$request->input('blood_status');
         $testimonial->phone=$request->input('phone');
         $testimonial->phone_status=$request->input('phone_status');
         $testimonial->email=$request->input('email');
          $testimonial->text1=$request->input('text1');
         $testimonial->email_status=$request->input('email_status');
         $testimonial->fb_link=$request->input('fb_link');
         $testimonial->verify_status=$request->input('verify_status');
         $testimonial->text2=$request->input('text2');
         $testimonial->bloodno=$request->input('bloodno');
         $testimonial->blood_date=$request->input('blood_date');

         $testimonial->custom1=$request->input('custom1');
         $testimonial->custom2=$request->input('custom2');
         $testimonial->custom3=$request->input('custom3');
         $testimonial->custom4=$request->input('custom4');
   
         $testimonial->university=$request->input('university');
         $testimonial->department=$request->input('department');
         $testimonial->address_union=$request->input('address_union');

      if($request->hasfile('image')){
         $file=$_FILES['image']['tmp_name'];
         $hw=getimagesize($file);
         $w=$hw[0];
         $h=$hw[1];	 
            if($w<310 && $h<310){
             $path=public_path('uploads/admin/').$testimonial->image;
             if(File::exists($path)){
              File::delete($path);
              }
             $image = $request->file('image');
             $new_name = rand() . '.' . $image->getClientOriginalExtension();
             $image->move(public_path('uploads/admin'), $new_name);
             $testimonial->image=$new_name;
             } 
             else{
             return response()->json([
                'status'=>200,  
                'message'=>'Image size must be 300*300 ',
              ]);
             } 
            }  
            $testimonial->update();   
      return response()->json([
          'status'=>400,
        'message'=>'Data Updated'
      ]);
  }else{
      return response()->json([
          'status'=>404,  
          'message'=>'Student not found',
        ]);
  }
}

}


public function delete(Request $request) {
  $testimonial=Testimonial::find($request->input('id'));
  $path=public_path('uploads/admin/').$testimonial->image;
      if(File::exists($path)){
         File::delete($path);
      }
  $testimonial->delete();
  return response()->json([
     'status'=>200,  
     'message'=>'Deleted Data',
   ]);
}

 
  //website

    public function websearch() {
       return view('web.websearch');
     }

     
    function fetch_data(Request $request)
    {
     if($request->ajax())
     {
        $search = $request->get('search');
        $data = Admin::where('name', 'like', '%'.$search.'%')
                       ->orWhere('nameen', 'like', '%'.$search.'%')
                       ->orWhere('admin_name', 'like', '%'.$search.'%')
                       ->orWhere('address', 'like', '%'.$search.'%')
                       ->get();

     
    if ($data->count()> 0) {
       
       foreach ($data as $row) {
            $output= '<div class="col-md-4 my-3">
                  <div class="card shadow">
                  <div class="card-body">';

            $output.='
            <h5 class="card-text text-center">'.$row->name.'</h5>
            <p class="card-text text-center">'.$row->address.'</p>
                <div class="text-center">
            <a href="/' . $row->admin_name . '" class="btn btn-primary" >View Website<a>  
            ';

            $output .= ' </div> </div></div></div>';
           echo $output;
        }
     
       
    } else {
       echo '<h1 class="text-center text-secondary my-5">No record present in the database!</h1>';
    }
                   
       }
    }




         public function webcontact() {

          return view('web.contact');
         }

    
       public function admin_name($admin_name) {
             $admin= Admin::where('admin_name',$admin_name)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
            if($admin){
                Cookie::queue('cook_user',$admin->admin_name,259200);
                return redirect('/');   
             }else{
                return redirect('/web/search');  
             }
           
       }


       public function webhome(){
             if(Cookie::has('cook_user')){
                   $cook_user=Cookie::get('cook_user');
                   $admin= Admin::where('admin_name',$cook_user)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
                   $slide = Magazine::where('category','Slide')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
                   $slide1 = Magazine::where('category','Slide')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->first();
                   $welcome = Magazine::where('category','Welcome')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
                   $test = Magazine::where('category','Testimonial')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
                   
                   
                   
                   return view('web.home',['admin'=>$admin,'slide'=>$slide,'slide1'=>$slide1,
                      'welcome'=>$welcome,'test'=>$test]);
               }else{
                   return redirect('/web/search');   
               } 
        }

      public function webmember($member) {
         if(Cookie::has('cook_user')){
             $cook_user=Cookie::get('cook_user');
              $admin= Admin::where('admin_name',$cook_user)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
             $data = testimonial::where('category',$member)->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
             return view('web.member',['admin'=>$admin,'data'=>$data,'member'=>$member]);
         }else{
             return redirect('/web/search');   
         } 
      }


      public function viewmember(Request $request) {
        $id = $request->id;
        $data = Testimonial::find($id);
        return response()->json([
          'status'=>200,  
          'data'=>$data,
        ]);
      }
      


      public function webmagazine() {
        if(Cookie::has('cook_user')){
             $cook_user=Cookie::get('cook_user');
             $admin= Admin::where('admin_name',$cook_user)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
            $data = Magazine::where('category','Magazine')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->paginate(5);
            return view('web.magazine',['admin'=>$admin,'data'=>$data]);
        }else{
            return redirect('/web/search');   
        } 
     }


     public function webnotice() {
      if(Cookie::has('cook_user')){
          $cook_user=Cookie::get('cook_user');
           $admin= Admin::where('admin_name',$cook_user)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
          $data = Notice::where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
          return view('web.notice',['admin'=>$admin,'data'=>$data]);
      }else{
          return redirect('/web/search');   
      } 
   }


   public function webexpre() {
    if(Cookie::has('cook_user')){
        $cook_user=Cookie::get('cook_user');
         $admin= Admin::where('admin_name',$cook_user)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
        $data1 = expre::where('category','President')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
        $data2 = expre::where('category','Secretary')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
        return view('web.expre',['admin'=>$admin ,'data1'=>$data1 ,'data2'=>$data2]);
    }else{
        return redirect('/web/search');   
    } 

   }


   public function webhistory() {
      if(Cookie::has('cook_user')){
           $cook_user=Cookie::get('cook_user');
            $admin= Admin::where('admin_name',$cook_user)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
           $data = App::where('admin_name',$admin->admin_name)->orderBy('phone', 'asc')->get();
          return view('web.history',['admin'=>$admin ,'data'=>$data]);
       }else{
         return redirect('/web/search');   
       } 
    }




   
         //api

      public function apiadmin_view($username){
             $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
                 'mobile','admin_name','header_size','resheader_size','level_union','level_workplace'
                 ,'level_current_address','level_permanent_address','level_custom1'
                 ,'level_custom2','level_custom3','level_custom4','level_university','level_department')->first();   
            
              return response()->json(['admin'=>$admin]);
       }



         public function union_view($username){     
              $data = App::where('admin_name',$username)->where('category','union')->orderBy('phone', 'asc')->get();
               return response()->json(['data'=>$data]);
          }


         public function university_view($username){     
             $data = App::where('admin_name',$username)->where('category','university')->orderBy('phone', 'asc')->get();
             return response()->json(['data'=>$data]);
          }


          public function apihome($username){
                  $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
                  $slide = Magazine::where('category','Slide')->where('text4','Slide')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
                  $slide1 = Magazine::where('category','Slide')->where('text4','Slide')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->first();
                  $welcome = Magazine::where('category','Welcome')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
                  $test = Magazine::where('category','Testimonial')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
                  $logu = Magazine::where('category','Slide')->where('text4','Logu')->where('admin_name',$admin->admin_name)->first();
                  
                  $homecount=[
                   'executive'=>countinfo('testimonials',$admin->admin_name,'Executive'),
                   'advisor'=>countinfo('testimonials',$admin->admin_name,'Advisor'),
                   'senior'=>countinfo('testimonials',$admin->admin_name,'Senior'),
                   'general'=>countinfo('testimonials',$admin->admin_name,'General'),
                 ];
                     
                   return response()->json([
                       'admin'=>$admin,'slide'=>$slide,'slide1'=>$slide1,
                       'welcome'=>$welcome,'test'=>$test,'homecount'=>$homecount,'logu'=>$logu
                   ]);
             }


        
        

     public function apimember($username,$member) {
      $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
        $data = testimonial::where('category',$member)->where('admin_name',$admin->admin_name)
        ->where('verify_status',1)->orderBy('serial', 'asc')->get();
        $logu = Magazine::where('category','Slide')->where('text4','Logu')->where('admin_name',$admin->admin_name)->first();
                  
          return response()->json([
              'admin'=>$admin,
              'data'=>$data,
              'member'=>$member
              ,'logu'=>$logu
         ]);

    }


    public function apiviewmember(Request $request) {
      $id = $request->id;
      $data = Testimonial::find($id);
      return response()->json([
        'status'=>200,  
        'data'=>$data,
      ]);
    }
 
 
    public function apimagazine($username){
      $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
        $data = Magazine::where('category','Magazine')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
        $logu = Magazine::where('category','Slide')->where('text4','Logu')->where('admin_name',$admin->admin_name)->first();
          
           return response()->json([
              'admin'=>$admin,
               'data'=>$data
               ,'logu'=>$logu
          ]);

     }
    
    
    
     public function apinotice($username) {
      $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
                     'mobile','admin_name','header_size','resheader_size')->first();
          $data = Notice::where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
          $logu = Magazine::where('category','Slide')->where('text4','Logu')->where('admin_name',$admin->admin_name)->first();
          
             return response()->json([
                  'admin'=>$admin,
                  'data'=>$data
                  ,'logu'=>$logu
           ]);
      }   


    public function apiexpre($username) {
      $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
              'mobile','admin_name','header_size','resheader_size')->first();
          $data1 = expre::where('category','President')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
          $data2 = expre::where('category','Secretary')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->get();
          $logu = Magazine::where('category','Slide')->where('text4','Logu')->where('admin_name',$admin->admin_name)->first();
          
          return response()->json([
                  'admin'=>$admin 
                   ,'data1'=>$data1
                  ,'data2'=>$data2
                  ,'logu'=>$logu
           ]);
    }


    public function apihistory($username) {
        $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
             'mobile','admin_name','header_size','resheader_size')->first();
       $data = App::where('admin_name',$admin->admin_name)->where('category','history')->orderBy('phone', 'asc')->get();
       $logu = Magazine::where('category','Slide')->where('text4','Logu')->where('admin_name',$admin->admin_name)->first();
          
           return response()->json([
                'admin'=>$admin 
                ,'data'=>$data
                ,'logu'=>$logu
            ]);
      }

  public function apibank($username) {
      $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
           'mobile','admin_name','header_size','resheader_size')->first();
     $data = App::where('admin_name',$admin->admin_name)->where('category','bank')->orderBy('phone', 'asc')->get();
     $logu = Magazine::where('category','Slide')->where('text4','Logu')->where('admin_name',$admin->admin_name)->first();
        
         return response()->json([
              'admin'=>$admin 
              ,'data'=>$data
              ,'logu'=>$logu
          ]);
    }


 
   public function apiregistration($username) {
        $admin= Admin::where('admin_name',$username)->select('id','name','nameen','address','email',
             'mobile','admin_name','header_size','resheader_size','header','footer'
             ,'formname','phone' ,'custom1','custom2')->first();
       
        $logu = Magazine::where('category','Slide')->where('text4','Logu')->where('admin_name',$admin->admin_name)->first();
          
           return response()->json([
                'admin'=>$admin 
                ,'logu'=>$logu
            ]);
      }






public function testimonial() {
   $lang=Lang::getLocale();

   $test=DB::select("select * from  
      testimonials where babu='1' AND lang='Null' OR  babu='1' AND lang='$lang'");
 
   prx($test);
    die();
    return response()->json([
        'status'=>200,  
        'testimonial'=>$testimonial,
        'lang'=>Lang::getLocale(),
     ]);
}

   public function langhome() {
       $lang=Lang::getLocale();
       $test=DB::select("select * from  
       testimonials where babu='1' AND lang='Null' OR  babu='1' AND lang='$lang'");
        return view('admin.langhome',['test'=>$test]);
   }



}
