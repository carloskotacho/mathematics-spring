<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>

        <div class="error-page">
            <h2 class="headline text-danger"> Oops!</h2>

            <div class="error-content">
                <h3><i class="fa fa-warning text-danger"></i> Usuário não encontrado!</h3>

                <p>
                  <a href="/a">Página inicial</a>
                  OU
                  <a href="/a/listar">Ver lista de usuários</a>
                </p>

            </div>
        </div>

    </jsp:body>
</t:template>
