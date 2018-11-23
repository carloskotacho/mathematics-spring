<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <br />
        <br />
        <div class="logo-font font-sub-slogan">Usuário deletado com sucesso!</div>
        <div class="row">
            <div class="col s12 center">
                <img class="img-responsive" src="resources/img/clean.png" height="120px">
            </div>
        </div>
        <div class="logo-font font-sub-slogan">
            <p><a href="/a">Página inicial</a></p>
            <p><a href="/a/listar">Ver lista de usuários</a></p>
        </div>

    </jsp:body>
</t:template>