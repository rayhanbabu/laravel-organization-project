@extends('admin/dashboardheader')
@section('page_title','Admin Panel')
@section('notice_select','active')
@section('content')

<div class="row mt-4 mb-3">
               <div class="col-6"> <h4 class="mt-0">Notice View</h4></div>
                     <div class="col-3">
                         <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            
                         </div>
                     </div>
                     <div class="col-3">
                         <div class="d-grid gap-2 d-md-flex ">
                         <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#AddModal">
                           Add
                        </button>         
              </div>
        </div> 
 </div> 


      <!-- Modal Add -->
<div class="modal fade" id="AddModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"> Add</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <form method="post" id="add_form" enctype="multipart/form-data" >
   <div class="modal-body">
           <ul class="alert alert-warning d-none"  id="add_form_errlist"></ul>
	   
       <div class="form-group  my-2">
           <label><b>Serial </b></label>
	        <input name="serial" id='serial' min="1" type="number" class="form-control" required/>
      </div>

   <div class="form-group  my-2">   
		    <label><b>Title</b></label>
	     <input name="title" id="title" type="text" class="form-control" required />
  </div>

  <div class="form-group  my-2">  
       <label><b>Description </b></label>
       <textarea name="text" id="text" col="15" rows="5"  class="form-control" ></textarea>
  </div>

  <div class="form-group  my-2">  
	      <label>Select Image/pdf (Max size:500px)</label>
        <input type="file" name="image" id="image" />
  </div>
    
    
      <div class="loader">
                  <img src="{{ asset('images/abc.gif') }}" alt="" style="width: 50px;height:50px;">
			 </div><br>
	 
    
     <button type="submit"  class=" btn btn-success">Submit</button>

   </div>
   </form> 


      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>   

 <!-- Modal Add  End-->



  <!-- Modal Edit -->
  <div class="modal fade" id="EditModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Edit</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

<form method="post" id="edit_form" enctype="multipart/form-data" >
   <div class="modal-body">
   <ul class="alert alert-warning d-none"  id="edit_form_errlist"></ul>

   <input type="hidden" name="edit_id"  id="edit_id" >
	   
   <div class="form-group  my-2">
         <label><b>Page</b></label>
         <input name="serial" id='edit_serial' min="1" type="number" class="form-control" required/>
   </div>     
  
  <div class="form-group  my-2">
      <label><b>Title</b></label>
      <input name="title" id="edit_title" type="text" class="form-control" required/>
  </div>    
 

  <div class="form-group  my-2">
       <label><b>Description</b> </label>
       <textarea name="text" id="edit_text" col="15" rows="5"  class="form-control"></textarea>
  </div>
    
  <div class="form-group  my-2">
       <label>Select Image/pdf (Max size:500px)</label>
       <input type="file" name="image"  />
  </div>  

    <div class="loader">
            <img src="{{ asset('images/abc.gif') }}" alt="" style="width: 50px;height:50px;">
        </div><br>
 
<input type="submit"  value="Update" class="btn btn-success" />


   </div>
   </form> 


      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>   

 <!-- Modal Edit End-->



<div id="success_message"></div>
 <div class="row mb-2">
    <div class="col-md-9">

    </div>
    <div class="col-md-3">
     <div class="form-group">
      <input type="text" name="search" id="search" placeholder="Enter Search " class="form-control"  autocomplete="off"  />
     </div>
    </div>
   </div>


   <div class="card-block table-border-style">                     
 <div class="table-responsive">
 <div class="x_content">
 <table class="table table-bordered" id="employee_data">
 <thead>
       <tr>
       <th width="10%" class="sorting" data-sorting_type="asc" data-column_name="serial" style="cursor: pointer">Page
                <span id="serial_icon" ><i class="fas fa-sort-amount-up-alt"></i></span> </th>
       <th width="20%" class="sorting" data-sorting_type="asc" data-column_name="title" style="cursor: pointer">Title
                  <span id="text_icon"><i class="fas fa-sort-amount-up-alt"></span></th>
          <th  width="15%">Image</th>
          <th  width="40%">Description </th>
		      <th  width="10%">Created_at</th>
		      <th  width="10%"></th>
          <th  width="10%"></th>
      </tr>
    </thead>
    <tbody>
       
    </tbody>
  </table>
    <input type="hidden" name="hidden_page" id="hidden_page" value="1" />
    <input type="hidden" name="hidden_column_name" id="hidden_column_name" value="id" />
    <input type="hidden" name="hidden_sort_type" id="hidden_sort_type" value="asc" />
 
 
</div>
</div>
</div>

<script>  
$(document).ready(function(){ 

  $.ajaxSetup({headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')} });

     $('#add').click(function(){  
           $('#submit').val("Submit");  
           $('#add_form')[0].reset();   			   
      }); 


         fetch();
         function fetch(){
            $.ajax({
             type:'GET',
             url:'/admin/notice_fetch',
             datType:'json',
             success:function(response){
                    $('tbody').html('');
                   $('.x_content tbody').html(response);
              }
             });
          }
    


           $(document).on('click', '.delete_id', function(e){ 
            e.preventDefault(); 
            var delete_id = $(this).val(); 
            if(confirm("Are you sure you want to delete this?"))
                 {
                   $.ajax({
                   type:'DELETE',
                   url:'/admin/notice_delete/'+delete_id,
                   success:function(response){    
                   //console.log(response);
                    $('#success_message').html("");
                    $('#success_message').addClass('alert alert-success');
                    $('#success_message').text(response.message)
                    $('#deleteexampleModal').modal('hide');
                    fetch();
                
                      }
                   }); 
                
                 }
                 else
                  {
                  return false; 
                  }
            });





        $(document).on('submit', '#edit_form', function(e){ 
        e.preventDefault(); 
        var edit_id=$('#edit_id').val();

        let editData=new FormData($('#edit_form')[0]);
        $.ajax({
             type:'POST',
             url:'/admin/notice_update/'+edit_id,
             data:editData,
             contentType: false,
             processData:false,
             beforeSend : function()
               {
               $('.loader').show();
               },
             success:function(response){
                 // console.log(response);
                  if(response.status == 400){
                    $('#edit_form_errlist').html("");
                    $('#edit_form_errlist').removeClass('d-none');
                    $.each(response.errors,function(key,err_values){ 
                    $('#edit_form_errlist').append('<li>'+err_values+'</li>');
                    });
                  }else if(response.status == 300){
                      Swal.fire("Warning", response.message, "warning");
                  }else {
                    $('#edit_form_errlist').html("");
                    $('#edit_form_errlist').addClass('d-none');
                    $('#success_message').html("");
                    $('#success_message').addClass('alert alert-success');
                    $('#success_message').text(response.message)
                    $('#EditModal').modal('hide');
                    fetch();
                  }
                  $('.loader').hide();
             }
          });
       });




           $(document).on('click', '.edit_id', function(e){ 
            e.preventDefault(); 
            var edit_id = $(this).val(); 
            //alert(edit_id)
            $('#EditModal').modal('show');
            $.ajax({
             type:'GET',
             url:'/admin/notice_edit/'+edit_id,
             success:function(response){
                //console.log(response);
                if(response.status == 404){
                  $('#success_message').html("");
                  $('#success_message').addClass('alert alert-danger');
                  $('#success_message').text(response.message);
                }else{
                  $('#edit_serial').val(response.edit_value.serial);
                  $('#edit_title').val(response.edit_value.title);
                  $('#edit_text').val(response.edit_value.text);
                  $('#edit_id').val(edit_id);
                }
             }
             });
           });

  


    $(document).on('submit', '#add_form', function(e){ 
        e.preventDefault();
         var extension = $('#image').val().split('.').pop().toLowerCase();
         let formData=new FormData($('#add_form')[0]);
            /// else if(jQuery.inArray(extension, ['pdf']) == -1)
            // {
           // swal("Pdf of Residential  card not found !!!!  ", "", "warning");
           // }
       
         $.ajax({
             type:'POST',
             url:'/admin/notice',
             data:formData,
             contentType: false,
             processData:false,
             beforeSend : function()
               {
               $('.loader').show();
               },
             success:function(response){
              //console.log(response);
              if(response.status == 400){
                  $('#add_form_errlist').html("");
                  $('#add_form_errlist').removeClass('d-none');
                  $.each(response.errors,function(key,err_values){ 
                  $('#add_form_errlist').append('<li>'+err_values+'</li>');
                  });
                 }else if(response.status == 700){
                      Swal.fire("Warning", response.message, "warning");
                  }else if(response.status == 300){
                      Swal.fire("Warning", response.message, "warning");
                  }
                 else{
                    //console.log(response.message);
                    $('#add_form_errlist').html("");
                    $('#add_form_errlist').addClass('d-none');
                    $('#success_message').html("");
                    $('#success_message').addClass('alert alert-success');
                    $('#success_message').text(response.message)
                    $('#AddModal').modal('hide');
                    $('#AddModal').find('input').val("");
                    $('#AddModal').find('textarea').val("");
                    fetch();
                 }
                 $('.loader').hide();
             }
          });
      
    });  



    function fetch_data(page, sort_type="", sort_by="", search=""){
        $.ajax({
        url:"/admin/notice/fetch_data?page="+page+"&sortby="+sort_by+"&sorttype="+sort_type+"&search="+search,
        success:function(data)
        {
        $('tbody').html('');
        $('.x_content tbody').html(data);
        }
        });
         }
   
       
    $(document).on('keyup', '#search', function(){
        var search = $('#search').val();
        var column_name = $('#hidden_column_name').val();
        var sort_type = $('#hidden_sort_type').val();
        var page = $('#hidden_page').val();
        fetch_data(page, sort_type, column_name, search);
      });


      $(document).on('click', '.pagin_link a', function(event){
           event.preventDefault();
           var page = $(this).attr('href').split('page=')[1];
           var column_name = $('#hidden_column_name').val();
           var sort_type = $('#hidden_sort_type').val();
           var search = $('#serach').val();
          fetch_data(page, sort_type, column_name, search);
        }); 


        $(document).on('click', '.sorting', function(){
          var column_name = $(this).data('column_name');
          var order_type = $(this).data('sorting_type');
          var reverse_order = '';
            if(order_type == 'asc')
             {
            $(this).data('sorting_type', 'desc');
            reverse_order = 'desc';
            $('#'+column_name+'_icon').html('<i class="fas fa-sort-amount-down"></i>');
             }
            else
            {
            $(this).data('sorting_type', 'asc');
            reverse_order = 'asc';
            $('#'+column_name+'_icon').html('<i class="fas fa-sort-amount-up-alt"></i>');
            }
           $('#hidden_column_name').val(column_name);
           $('#hidden_sort_type').val(reverse_order);
           var page = $('#hidden_page').val();
           var search = $('#serach').val();
          fetch_data(page, reverse_order, column_name, search);
          });


    


});  
</script>   
  




 @endsection             