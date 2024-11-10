@extends('master.admin')
@section('title', 'Category manager')
@section('main')

<form action="" method="POST" class="form-inline" role="form">

    <div class="form-group">
        <label class="sr-only" for="">label</label>
        <input type="email" class="form-control" id="" placeholder="Input field">
    </div>

    

    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
    <a href="{{ route('category.create') }}" class="btn btn-success pull-right"><i class="fa fa-plus"></i> Add new</a>
</form>


<br>


<table class="table table-hover">
    <thead>
        <tr>
            <th>STT</th>
            <th>Category Name</th>
            <th>Category Status</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach($cats as $cat)
        <tr>
            <td>{{ $loop->index + 1 }}</td>
            <td>{{$cat->name}}</td>
            <td>Hiden</td>
            <td class="text-right">
            <form action="{{ route('category.destroy', $cat->id) }}" method="post" >
                @csrf @method('DELETE')

                <a href="{{ route('category.edit', $cat->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                <button class="btn btn-sm btn-danger" onclick="return confirm('Are you suere want to delete it?')"><i class="fa fa-trash"></i></button>
                </form>
            </td>
        </tr>  
        @endforeach
    </tbody>
</table>
@endsection
