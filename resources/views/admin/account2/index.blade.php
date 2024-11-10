@extends('master.admin')
@section('title', 'Customer manager')
@section('main')

<H1>ADMIN</H1>
<form action="" method="POST" class="form-inline" role="form">

    <div class="form-group">
        <label class="sr-only" for="">label</label>
        <input type="email" class="form-control" id="" placeholder="Input field">
    </div>



    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
    <a href="{{ route('account2.create') }}" class="btn btn-success pull-right"><i class="fa fa-plus"></i> Add new</a>
</form>

<table class="table table-hover">
    <thead>
        <tr>
            <th>STT</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Password</th>
        </tr>
    </thead>
    <tbody>
        @foreach($customers as $customer)
        <tr>
            <td>{{ $loop->index + 1 }}</td>
            <td>{{$customer->name}}</td>
            <td>{{$customer->email}}</td>
            <td>{{$customer->phone}}</td>
            <td>{{$customer->address}}</td>
            <td>{{$customer->password}}</td>
            <td class="text-right">
                <form action="{{ route('account2.destroy', $customer->id) }}" method="post">
                    @csrf @method('DELETE')

                    <a href="{{ route('account2.edit', $customer->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                    <button class="btn btn-sm btn-danger" onclick="return confirm('Are you suere want to delete it?')"><i class="fa fa-trash"></i></button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

@endsection