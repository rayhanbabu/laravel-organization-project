@foreach($data as $row)
      <tr>
                  <td>{{ $row->serial}}</td>
                  <td>{{ $row->title}}</td>
                  <td><a href="{{ asset('uploads/admin/'.$row->image) }}" >{{$row->image}}</a></td>
                  <td>{{ $row->text}}</td>
                  <td>{{ $row->created_at}}</td>
                  <td> <button type="button" value="{{ $row->id}}" class="edit_id btn btn-primary btn-sm">Edit</button> </td>
                  <td> <button type="button" value="{{ $row->id}}" class="delete_id btn btn-danger btn-sm">Delete</button> </td>
      </tr>
      @endforeach

      <tr class="pagin_link">
       <td colspan="9" align="center">
        {!! $data->links() !!}
       </td>
      </tr>  
