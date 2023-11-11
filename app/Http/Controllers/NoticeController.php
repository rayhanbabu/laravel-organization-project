<?php

namespace App\Http\Controllers;

use App\Models\Notice;
use App\Models\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\validator;
use Illuminate\Support\Collection;
use DB;
use Cookie;
use Session;

class NoticeController extends Controller
{
   
    public function index(){
        return view('admin.notice');
    }

    public function fetch(){
      if(Session::has('admin')){
      $admin= Admin::where('admin_name',Session::get('admin')->admin_name)->first();
      $data=DB::table('notices')->where('admin_name',$admin->admin_name)->orderBy('serial', 'asc')->paginate(10);
      return view('admin.notice_data',compact('data'));
      }
   }



    function fetch_data(Request $request)
    {
     if($request->ajax())
     {
      $sort_by = $request->get('sortby');
      $sort_type = $request->get('sorttype'); 
            $search = $request->get('search');
            $search = str_replace(" ", "%", $search);
      $data = DB::table('notices')
                    ->where('serial', 'like', '%'.$search.'%')
                    ->orWhere('title', 'like', '%'.$search.'%')
                    ->orWhere('text', 'like', '%'.$search.'%')
                    ->orderBy($sort_by, $sort_type)
                    ->paginate(5);
      return view('admin.notice_data', compact('data'))->render();
     }
    }



       public function edit($id){
        $edit_value=Notice::find($id);
        if($edit_value){
           return response()->json([
                'status'=>200,  
                'edit_value'=>$edit_value,
              ]);
         }else{
             return response()->json([
                'status'=>404,  
                'message'=>'Student not found',
              ]);
         }
        }


        public function update(Request $request, $id){
           
      
                $notice=Notice::find($id);
                if($notice){
                  $notice->serial=$request->input('serial');
                  $notice->title=$request->input('title');
                  $notice->text=$request->input('text');
                    if($request->hasfile('image')){
                     $size = $request->file('image')->getsize(); 
                           if($size<512000){
                           $path=public_path('uploads/admin/').$notice->image;
                          if(File::exists($path)){
                           File::delete($path);
                           }
                           $image = $request->file('image');
                           $new_name = rand() . '.' . $image->getClientOriginalExtension();
                           $image->move(public_path('uploads/admin'), $new_name);
                        $notice->image=$new_name;
                           } 
                           else{
                           return response()->json([
                              'status'=>300,  
                              'message'=>'Notice image/pdf Size not geather than 500KB',
                            ]);
                           } 
                 }  
                 $notice->save();   
                 return response()->json([
                      'status'=>200,
                      'message'=>'Data Updated'
                  ]);
                }else{
                    return response()->json([
                        'status'=>404,  
                        'message'=>'Student not found',
                      ]);
                }
         }


  public function destroy($id){
        $notice=Notice::find($id);
        $destination=public_path('uploads/admin/').$notice->image;
            if(File::exists($destination)){
               File::delete($destination);
            }
        $notice->delete();
        return response()->json([
           'status'=>200,  
           'message'=>'Deleted Data',
         ]);
    }


  public function store(Request $request){
   if(Session::has('admin')){
     $admin= Admin::where('admin_name',Session::get('admin')->admin_name)->first();
     $data= Notice::where('serial',$request->input('serial'))->where('admin_name',$admin->admin_name)->count('serial');
     $data1= Notice::where('admin_name',$admin->admin_name)->count('serial');
    if($data>=1){
         return response()->json([
             'status'=>700,
             'message'=> 'Serial Number Already Exist',
         ]);  
     }else if($data1>=$admin->member_size){  
          return response()->json([
            'status'=>700,
            'message'=> 'Row Insert Permision is '.$admin->member_size. '. More Details Contact service Provider',
         ]);  
     }else{
      $notice= new Notice;
      $notice->admin_name=$admin->admin_name;
      $notice->serial=$request->input('serial');
      $notice->title=$request->input('title');
      $notice->text=$request->input('text');

      if($request->hasfile('image')){
         $size = $request->file('image')->getsize(); 
            if($size<512000){
              $image= $request->file('image'); 
              $new_name = rand() . '.' . $image->getClientOriginalExtension();
              $image->move(public_path('uploads/admin/'), $new_name);
              $notice->image=$new_name;
          }else{
               return response()->json([
                  'status'=>300,  
                  'message'=>'Notice image/pdf Size not  geather than 500KB',
               ]);
           }
        }
     
         $notice->save();

        return response()->json([
         'status'=>200,  
         'message'=>'Inserted Data',
       ]);
    
   }

  }
}


}
