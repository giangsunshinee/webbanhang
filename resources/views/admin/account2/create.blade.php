@extends('master.admin')
@section('title', 'Create new a Customer')
@section('main')


<div class="row">
    <div class="col-md-4">

        <form action="{{ route('account2.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for=""> Name</label>
                <input type="text" class="form-control" name="name" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Email</label>
                <input type="text" class="form-control" name="email" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Phone</label>
                <input type="text" class="form-control" name="phone" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Address</label>
                <input type="text" class="form-control" name="address" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Password</label>
                <input type="text" class="form-control" name="password" placeholder="Input field" required>
            </div>

            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
        </form>

    </div>
</div>


@endsection