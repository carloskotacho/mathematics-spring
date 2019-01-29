<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Geometry | Registrar</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../resources/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../resources/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="../../resources/adminlte/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="../../resources/adminlte/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../../resources/adminlte/plugins/iCheck/square/blue.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition register-page bg-purple">
<div class="register-box">
  <div class="register-logo">
    <a href="#" class="text-gray"><b>Geometry</b>Portal</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Registre uma nova conta</p>

    <form:form method="post" modelAttribute="u" action="/registrar">
      <div class="form-group has-feedback">
        <form:input id="nome" type="text" path="name" class="form-control" placeholder="Nome" />
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <form:input id="username" type="email" path="email" class="form-control" placeholder="E-mail" />
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <form:input id="password" type="password" path="password" class="form-control" placeholder="Senha" />
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <sec:authorize access="hasRole('ROLE_ADMIN')">
        <div class="form-group has-feedback">
          <form:select class="form-control select2" path="profile" name="profile" style="width: 100%;">
              <form:option value="ADMIN" selected="selected">Usuário</form:option>
              <form:option value="USER">Administrador</form:option>
          </form:select>
        </div>
      </sec:authorize>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
                <input type="checkbox" disabled>Concordo com os <a href="#">termos</a>
            </label>
          </div>
        </div>
        <div class="col-xs-4">
          <form:button type="submit" class="btn btn-block btn-flat bg-purple">
              Registrar
          </form:button>
        </div>
      </div>
    </form:form>

    <div class="social-auth-links text-center">
      <p>- OU -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat disabled"><i class="fa fa-facebook"></i> Entre usando
        Facebook</a>
    </div>

    <a href="/entrar" class="text-center">Eu já tenho uma conta</a>
  </div>
</div>

<!-- jQuery 3 -->
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
