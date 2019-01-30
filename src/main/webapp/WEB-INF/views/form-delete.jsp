<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="Deletar Usuário">
    <jsp:body>
        
        <div class="row">
            <div class="col-md-6">
                <div class="box box-tools">
                <div class="box-header with-border">
                  <h3 class="box-title">Deletar Usuário</h3>
                </div>

                  <form:form method="post" modelAttribute="email" action="a/deletar" role="form">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="email">E-mail</label>
                      <form:input type="email" path="email" name="email" class="form-control" id="email" placeholder="E-mail" />
                    </div>
                  </div>

                  <div class="box-footer">
                    <form:button type="submit" class="btn bg-purple">
                        Deletar
                    </form:button>
                  </div>
                </form:form>
              </div>
            </div>
        </div>
        
    </jsp:body>
</t:template>