<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sistem Informasi Puskesmas Loa Bakung</title>

      <meta name="csrf-token" content="{{ csrf_token() }}">
      {{-- <link rel="stylesheet" href="{{asset('dist/plugins/fontawesome-free/css/all.min.css') }}"> --}}
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="{{asset('plugins/fontawesome-free/css/all.min.css')}}">

<link rel="stylesheet" href="{{asset('dist/css/adminlte.min.css?v=3.2.0')}}">
<link rel="stylesheet" href="{{asset('dist/css/custom.css')}}">


<script src="{{asset('plugins/jquery/jquery.min.js')}}"></script>
<script src="{{asset('plugins/jquery-ui/jquery-ui.min.js')}}"></script>

<script src="{{asset('plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('dist/js/custom.js')}}"></script>

<link rel="icon" type="image/png" href="/logo/logo.png">
</head>
<body class=" login-page">
    {{show_alert()}}
<div class="login-box">
  <div style="text-align:center;margin:30px 0">
    <img src="/logo/logo.png" alt="Logo Puskesmas Loa Bakung" style="max-width:120px; margin-bottom: 10px;">
  </div>

 <div class="card card-outline card-success">
   
    <div class="card-body">
      <p class="login-box-msg">Sistem Informasi Puskesmas Loa Bakung</p>

    <form action="{{ url('/login/cek') }}" method="post">
        @csrf  
        @method('POST')
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="username" name="username">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Password" name="password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
         <div >
            <button type="submit" class="btn btn-success btn-block">Masuk</button>
          </div>
      </form>

      <div class="mt-4 p-2 bg-light rounded border" style="font-size: 14px;">
        <strong>Keterangan Login:</strong><br>
        <table class="table table-sm table-bordered mt-2 mb-0" style="background: #fff;">
          <thead>
            <tr>
              <th>Username</th>
              <th>Password</th>
            </tr>
          </thead>
          <tbody>
            <tr><td>admin</td><td>admin</td></tr>
            <tr><td>kapus</td><td>kapus</td></tr>
            <tr><td>dokter</td><td>dokter</td></tr>
            <tr><td>apoteker</td><td>apoteker</td></tr>
          </tbody>
        </table>
      </div>
      <!-- /.social-auth-links -->

   
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<script src="{{asset('dist/js/adminlte.min.js?v=3.2.0')}}"></script>
</body>
</html>