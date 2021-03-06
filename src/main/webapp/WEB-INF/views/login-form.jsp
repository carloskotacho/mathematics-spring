<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Geometry | Login</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
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
    <p class="login-box-msg">Entre para iniciar sua sess�o</p>

    <form action="/entrar" method="POST">
      <div class="form-group has-feedback">
        <input class="form-control" id="username" type="text" name="username" value="${ cookie.login.value }" placeholder="E-mail">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input class="form-control" id="password" type="password" name="password" value="${ cookie.pwd.value }" placeholder="Senha">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox" name="remember-me"> Permanecer logado?
            </label>
          </div>
        </div>
        <div class="col-xs-4">
          <button type="submit" class="btn btn-block btn-flat bg-purple">Entrar</button>
        </div>
      </div>
    </form>

    <div class="social-auth-links text-center">
      <p>- OU -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat disabled"><i class="fa fa-facebook"></i> Entre usando
        Facebook</a>
    </div>
  
    <a href="/registrar" class="text-center">Registre uma nova conta</a>

  </div>
</div>

<script src="../../resources/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
<script src="../../resources/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
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
