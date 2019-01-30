<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="Pirâmide">
    <jsp:body>
        
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Pirâmide</h3>
                </div>

                  <form:form method="post" modelAttribute="solid" action="u/solido/piramide" role="form">
                  <div class="box-body">
                    <p class="help-block">
                        Em outros termos, a pirâmide é um <b>sólido geométrico</b> de <b>base poligonal</b> que possui todos os vértices num plano (plano da base).
                        Sua altura corresponde a distância entre o vértice e sua base.               
                    </p>
                    <div class="form-group">
                      <label for="height">Altura</label>
                      <form:input id="height" type="text" path="height" name="height" class="form-control" placeholder="Altura" />
                    </div>
                    <div class="form-group">
                      <label for="sideBase">Lado da Base</label>
                      <form:input id="sideBase" type="text" path="sideBase" name="sideBase" class="form-control" placeholder="Lado da Base" />
                    </div>
                    <div class="form-group">
                      <label for="apothemBase">Apótema da Base</label>
                      <form:input id="apothemBase" type="text" path="apothemBase" name="apothemBase" class="form-control" placeholder="Apótema da Base" />
                    </div>
                    <div class="form-group">
                      <label for="apothemPyramid">Apótema da Pirâmide</label>
                      <form:input id="apothemPyramid" type="text" path="apothemPyramid" name="apothemPyramid" class="form-control" placeholder="Apótema da Pirâmide" />
                    </div>
                    
                    <div class="form-group has-feedback">
                        <form:select class="form-control select2" path="type" name="type" style="width: 100%;">
                            <form:option value="triangular" selected="selected">Triangular</form:option>
                            <form:option value="quadrangular">Quadrangular</form:option>
                            <form:option value="pentagonal">Pentagonal</form:option>
                            <form:option value="hexagonal">Hexagonal</form:option>
                        </form:select>
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
