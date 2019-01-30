<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
	<jsp:body>
            <div class="error-page">
              <h2 class="headline text-red"> 403</h2>

              <div class="error-content">
                <h3><i class="fa fa-warning text-red"></i> Oops! Acesso Negado.</h3>

                <p>
                  Você não tem acesso a essa página.
                  <a href="#">retornar à página de usuário.</a>
                </p>

              </div>
            </div>
	</jsp:body>
</t:template>
    