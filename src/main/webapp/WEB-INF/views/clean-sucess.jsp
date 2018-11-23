<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <br />
        <br />
        <div class="logo-font font-sub-slogan">Histórico vazio!</div>
        <div class="row">
            <div class="col s12 center">
                <img class="img-responsive" src="resources/img/clean.png" height="120px">
            </div>
        </div>
        <div class="logo-font font-sub-slogan">
            <p><a href="/u/solido">Realizar um novo cálculo</a></p>
            <p><a href="/u/solido/historico">Ver histórico de resultados</a></p>
        </div>

    </jsp:body>
</t:template>