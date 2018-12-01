<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<t:template title="OBMEP - Página Inicial">
    <jsp:body>

        <div class="logo-font">Os números governam o mundo.</div>
        <div class="logo-font font-sub-slogan">bem vindo ao portal da matemática... crie uma conta!!! :)</div>

        <div class="row">
            <div class="col s12 center">
                <img class="img-responsive" src="resources/img/cerebro.png" height="300px">
            </div>
        </div>

        <sec:authorize access="!isAuthenticated()">
            <div class="fixed-action-btn">
                <a class="btn-floating btn-large pink accent-2">
                    <i class="large material-icons">menu</i>
                </a>
                <ul>
                    <li><a class="btn-floating light-green accent-4" href="/entrar"><i class="material-icons">account_circle</i></a></li>
                    <li><a class="btn-floating blue lighten-2" href="/entrar"><i class="material-icons">lock</i></a></li>
                </ul>
            </div>
        </sec:authorize>

    </jsp:body>
</t:template>