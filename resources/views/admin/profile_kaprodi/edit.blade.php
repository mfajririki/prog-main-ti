@extends('layouts.cms')

@section('content')
@include('alert')

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Edit Data</h1>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">

                <div class="card card-primary">
                    <div class="card-header">
                        Profil Kaprodi
                    </div>
                    <!-- /.card-header -->

                    <form action="{{ route('profile_kaprodi.update', $kaprodi->id) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        {{ method_field('PUT') }}

                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Nama </label>
                                        <input type="text" name="nama" class="form-control"
                                            value="{{ $kaprodi->nama }}" required="">
                                        <input type="hidden" name="old_nama" value="{{ $kaprodi->nama }}">
                                    </div>
                                </div>
                                <!-- /.col -->

                                <!-- Photo -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputFile">Foto</label>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input type="file" name="photo" class="custom-file-input"
                                                    id="exampleInputFile">
                                                <input type="hidden" name="old" value="{{ $kaprodi->photo }}">
                                                <label class="custom-file-label" for="exampleInputFile">Pilih
                                                    Foto</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Kutipan -->
                                <div class="col-md-12 mt-3">
                                    <div class="form-group">
                                        <label for="exampleInputFile" class="d-block">Isi Konten</label>
                                        <textarea name="kutipan" class="summernote">{{ $kaprodi->kutipan }}</textarea>
                                    </div>
                                </div>                                
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                            <span class="small text-danger">form bertanda * wajib diisi</span>
                            <button type="submit" class="float-right btn btn-primary">Submit</button>
                        </div>
                        <!-- /.card-footer -->
                    </form>
                    <!-- /form -->

                </div>
                <!-- /.card -->

            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>
<!-- /.content -->
@endsection
