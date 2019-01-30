<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="Cone">
    <jsp:body>
      
        <div class="row">
            <div class="col-md-6">

                <div class="box box-tools">
                <div class="box-header with-border">
                  <h3 class="box-title">Cone</h3>
                </div>

                  <form:form method="post" modelAttribute="solid" action="u/solido/cone" role="form">
                  <div class="box-body">
                    <p class="help-block">
                        <b>Cone</b> é um sólido geométrico que faz parte dos estudos da geometria espacial.
                        <br/>Ele possui uma base circular (r) formada por segmentos de reta que têm uma extremidade num vértice (V) em comum.
                        <br/>Além disso, o cone possui a altura (h), caracterizada pela distância do vértice do cone ao plano da base.
                        <br/>Possui também a denominada <b>geratriz</b>, ou seja, a lateral formada por qualquer segmento que tenha uma extremidade no vértice e a outra na base do cone.
                    </p>
                    <div class="form-group">
                      <label for="r">Raio</label>
                      <form:input type="text" path="r" name="r" class="form-control" id="raio" placeholder="Raio" />
                    </div>
                    <div class="form-group">
                      <label for="height">Altura</label>
                      <form:input type="text" path="height" name="height" class="form-control" id="height" placeholder="Altura" />
                    </div>
                    <div class="form-group">
                      <label for="generatrix">Geratriz</label>
                      <form:input type="text" path="generatrix" name="generatrix" class="form-control" id="generatrix" placeholder="Geratriz" />
                    </div>

                  </div>

                  <div class="box-footer">
                    <form:button type="submit" class="btn bg-purple">
                        Calcular
                    </form:button>
                  </div>
                </form:form>
              </div>
            </div>
        </div>

    </jsp:body>
</t:template>