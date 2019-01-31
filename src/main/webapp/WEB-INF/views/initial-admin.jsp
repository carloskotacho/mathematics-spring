<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Admin">
    <jsp:body>
        <div class="row">
            <div class="col-md-3">
                <div class="box box-tools">
                  <div class="box-header with-border">
                    <h3 class="box-title">Minhas Informações</h3>
                  </div>
                    
                  <div class="box-body">
                    <strong><i class="glyphicon glyphicon-envelope margin-r-5"></i> E-mail</strong>

                    <p class="text-muted">
                      ${ cookie.currentUser.value }
                    </p>
                  </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:template>