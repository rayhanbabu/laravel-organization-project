<?php

namespace App\Http\Controllers;

use App\Models\App;
use Illuminate\Http\Request;
use Validator;
use App\Models\Admin;
use DB;
use Session;

class AppController extends Controller
{
    
    public function index(){
        return view('admin.app');
    }

    public function fetch(){
      if(Session::has('admin')){
        $admin= Admin::where('admin_name',Session::get('admin')->admin_name)->first();
        $data=APP::where('admin_name',$admin->admin_name)->orderBy('id', 'desc')->paginate(15);
         return view('admin.app_data',compact('data'));
      }
     }

     public function store(Request $request){

      if(Session::has('admin')){
      $admin= Admin::where('admin_name',Session::get('admin')->admin_name)->first();
      $validator=\Validator::make($request->all(),[  
         'dureg' => 'required',
         'phone' => 'required',
        ],
        [
         'dureg.required'=>'Text is required',
         'phone.required'=>'Serial is required',
        ]);
      

     if($validator->fails()){
           return response()->json([
             'status'=>400,
             'validate_err'=>$validator->messages(),
           ]);
     }else{

           $dureg=$request->input('dureg');
           $phone=$request->input('phone');
           
               $app= new App;
               $app->dureg=$request->input('dureg');
               $app->phone=$request->input('phone');
               $app->category=$request->input('category');
               $app->admin_name=$admin->admin_name;
               $app->save();
               return response()->json([
                 'status'=>200,  
                 'message'=>'Inserted Data',
               ]);
         }
        }
      }


        public function edit($id){
            $edit_value=App::find($id);
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

      $validator=\Validator::make($request->all(),[
                    
         'dureg' => 'required',
         'phone' => 'required',
     ]);

     if($validator->fails()){
      return response()->json([
        'status'=>400,
        'validate_err'=>$validator->messages(),
      ]);
      }else{
            $app=App::find($id);
            if($app){
                $app->dureg=$request->input('dureg');
                $app->phone=$request->input('phone');
                 $app->category=$request->input('category');
                $app->update();   
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
     }  


     public function destroy($id){
        $notice=App::find($id);
        $notice->delete();
        return response()->json([
           'status'=>200,  
           'message'=>'Deleted Data',
         ]);
    }
    


    function fetch_data(Request $request)
    {
     if($request->ajax())
     {
      $sort_by = $request->get('sortby');
      $sort_type = $request->get('sorttype'); 
            $search = $request->get('search');
            $search = str_replace(" ", "%", $search);
      $data = App::where('dureg', 'like', '%'.$search.'%')
                    ->orWhere('phone', 'like', '%'.$search.'%')
                    ->orderBy($sort_by, $sort_type)
                    ->paginate(15);
                    return view('admin.app_data', compact('data'))->render();
                   
     }
    }



}
