@extends('master.admin')
@section('title', 'Edit a Customer')
@section('main')


<div class="row">
    <div class="col-md-4">
        
        <form action="{{ route('account2.update', $customer->id) }}" method="POST" enctype="multipart/form-data">
        @csrf @method('PUT')
        <div class="form-group">
                <label for=""> Name</label>
                <input type="text" class="form-control" name="name" value="{{ $customer->name }}" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Email</label>
                <input type="text" class="form-control" name="email" value="{{ $customer->email }}" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Phone</label>
                <input type="text" class="form-control" name="phone" value="{{ $customer->phone }}" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Address</label>
                <input type="text" class="form-control" name="address" value="{{ $customer->address }}" placeholder="Input field" required>
            </div>

            <div class="form-group">
                <label for=""> Password</label>
                <input type="text" class="form-control" name="password" value="{{ $customer->password }}" placeholder="Input field" required>
            </div>
            <div class="form-group">
                <label for="">Category Status</label>

                <div class="radio">
                    <label>
                        <input type="radio" name="status" value="1" />
                        Publish
                    </label>
                </div>

                <div class="radio">
                    <label>
                        <input type="radio" name="status" value="0" />
                        Hidden
                    </label>
                </div>
            </div>
        
            
        
            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
        </form>
        
    </div>
</div>


@endsection
