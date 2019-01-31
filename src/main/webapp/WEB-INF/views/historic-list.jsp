<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        
        <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Histórico</h3>

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <div class="input-group-btn">
                    <a href="/u/solido" type="submit" class="btn btn-default"><i class="fa fa-calculator"></i></a>
                    <c:if test="${ empty solids }">
                        <a href="/u/solido/historico/limpar" type="submit" class="btn btn-default disabled"><i class="fa fa-trash-o"></i></a>
                    </c:if>
                    <c:if test="${ not empty solids }">
                        <a href="/u/solido/historico/limpar" type="submit" class="btn btn-default"><i class="fa fa-trash-o"></i></a>
                    </c:if>
                  </div>
                </div>
              </div>
            </div>
              
            <c:if test="${ empty solids }">
                <div class="box-body no-padding">
                    <p class="text-muted" style="margin-left: .7em;">Seu histórico está vazio no momento.</p>
                </div>
            </c:if>
            
            <c:if test="${ not empty solids }">
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                  <th>Nome</th>
                  <th>Área da Base</th>
                  <th>Área Lateral</th>
                  <th>Área Total</th>
                  <th>Volume</th>
                </tr>
                <c:forEach var="s" items="${solids}">
                    <tr>
                      <td>${ s.name      }</td>
                      <td>${ s.areaBase  }</td>
                      <td>${ s.areaSide  }</td>
                      <td>${ s.areaTotal }</td>
                      <td>${ s.volume    }</td>
                    </tr>
                </c:forEach>
              </table>
            </div>
            </c:if>
          </div>
        </div>
        </div>

    </jsp:body>
</t:template>
