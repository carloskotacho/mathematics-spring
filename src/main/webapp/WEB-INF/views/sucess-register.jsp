<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>

        <div class="error-page">
            <h2 class="headline text-success"> OK</h2>

            <div class="error-content">
                <h3><i class="fa fa-check text-success"></i> Cadastro realizado com sucesso!</h3>

                <p>
                  <a href="/entrar">Realizar o Login</a>
                </p>

            </div>
        </div>

    </jsp:body>
</t:template>