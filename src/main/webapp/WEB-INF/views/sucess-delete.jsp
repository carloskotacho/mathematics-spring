<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>

        <div class="error-page">
            <h2 class="headline"><i class="fa fa-check text-gray"></i></h2>

            <div class="error-content">
                <h3>Usuário deletado com sucesso!</h3>

                <p>
                  <a href="/a" class="text-purple">Página inicial</a>
                  OU
                  <a href="/a/listar" class="text-purple">Ver lista de usuários</a>
                </p>
            </div>
        </div>

    </jsp:body>
</t:template>