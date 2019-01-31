<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Geometry | Bem Vindo!</title>

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../../resources/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../resources/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="../../resources/adminlte/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="../../resources/adminlte/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../../resources/adminlte/plugins/iCheck/square/blue.css">

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page bg-purple">
<div class="login-box">
  <div class="login-logo">
    <a href="/" class="text-gray"><b>Geometry</b>Portal</a>
  </div>
    
  <div class="login-box-body bg-gray-light">
    <p class="login-box-msg">bem vindo ao portal da matemática... crie uma conta!!! :)</p>

    <div class="social-auth-links text-center">
        <a href="/u" class="btn btn-block btn-lg bg-purple">Usuário</a>
        <a href="/a" class="btn btn-block btn-lg bg-purple">Administrador</a>
    </div>

    <a href="/registrar" class="text-center">Registre uma nova conta</a>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="../../resources/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../resources/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../resources/adminlte/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>

