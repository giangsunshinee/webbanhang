@extends('master.admin')
@section('title', 'Edit a Category')
@section('main')


<div class="row">
    <div class="col-md-4">

        <form action="{{ route('account.update', $user->id) }}" method="POST" enctype="multipart/form-data">
            @csrf @method('PUT')
            <div class="form-group">
                <label for=""> Name</label>
                <input type="text" class="form-control" name="name" value="{{ $user->name }}" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Email</label>
                <input type="text" class="form-control" name="email" value="{{ $user->email }}" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Password</label>
                <input type="text" class="form-control" name="password" value="{{ $user->password }}" placeholder="Input field" required>
            </div>

            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
        </form>

    </div>
</div>

@endsection