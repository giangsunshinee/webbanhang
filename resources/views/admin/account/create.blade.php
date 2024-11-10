@extends('master.admin')
@section('title', 'Create new a Account')
@section('main')


<div class="row">
    <div class="col-md-4">

        <form action="{{ route('account.store') }}" method="post" enctype="multipart/form-data">
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
                <label for=""> Password</label>
                <input type="text" class="form-control" name="password" placeholder="Input field" required>
            </div>

            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
        </form>

    </div>
</div>


@endsection