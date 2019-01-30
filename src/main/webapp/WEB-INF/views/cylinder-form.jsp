<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="Cilindro">
    <jsp:body>
        
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Cilindro</h3>
                </div>

                  <form:form method="post" modelAttribute="solid" action="u/solido/cilindro" role="form">
                  <div class="box-body">
                    <p class="help-block">
                        O <b>cilindro</b> ou <b>cilindro circular</b> é um sólido geométrico alongado e arredondado que possui o mesmo diâmetro ao longo de todo o comprimento.
                    </p>
                    <div class="form-group">
                      <label for="r">Raio</label>
                      <form:input id="r" type="text" path="r" name="r" class="form-control" placeholder="Raio" />
                    </div>
                    <div class="form-group">
                      <label for="height">Altura</label>
                      <form:input id="height" type="text" path="height" name="height" class="form-control" placeholder="Altura" />
                    </div>
                  </div>

                  <div class="box-footer">
                    <form:button type="submit" class="btn btn-primary">
                        Calcular
                    </form:button>
                  </div>
                </form:form>
              </div>
            </div>
        </div>
        
    </jsp:body>
</t:template>