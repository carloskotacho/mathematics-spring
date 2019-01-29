<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="OBMEP - Portal Aluno">
    <jsp:body>
        <br/><br/>
        <c:if test="${param.logout}">
            <h1>Até logo!</h1>
        </c:if>

        <div class="row">
            <div class="col s6 texto-form">
                <h3>Login</h3>
            </div>
        </div>

        <form class="" action="/entrar" method="POST">
            <div class="row">
                <div class="input-field col s12 m6">
                    <input id="username" type="text" name="username" value="${ cookie.login.value }"/>
                    <label for="username" class="active">E-mail</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m6">
                    <input id="password" type="password" name="password" value="${ cookie.pwd.value }"/>
                    <label for="password" class="active">Senha</label>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m6">
                    <input type="checkbox" class="filled-in" id="filled-in-box" name="remember-me" />
                    <label for="filled-in-box">Permanecer logado?</label>
                </div>
            </div>
            <div class="row">
                <button type="submit" class="waves-effect waves-light btn yellow darken-3 col s12 m6">
                    Entrar
                </button>
            </div>

        </form>

    </jsp:body>
</t:template>
