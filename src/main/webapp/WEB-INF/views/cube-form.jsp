<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="Cubo">
    <jsp:body>
        
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Cubo</h3>
                </div>

                  <form:form method="post" modelAttribute="solid" action="u/solido/cubo" role="form">
                  <div class="box-body">
                    <p class="help-block">
                        O <b>cubo</b> é uma figura que faz parte da geometria espacial. É caracterizado como um <b>poliedro</b> (hexaedro) regular ou ainda,
                        um <b>paralelepípedo retângulo</b> com todas as faces e arestas congruentes e perpendiculares (a = b = c).
                    </p>
                    <div class="form-group">
                      <label for="side">Lado</label>
                      <form:input type="text" path="side" name="side" class="form-control" id="side" placeholder="Lado" />
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