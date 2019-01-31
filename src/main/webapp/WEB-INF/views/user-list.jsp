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
              <h3 class="box-title">Usuários</h3>
            </div>
              
            <c:if test="${ empty users }">
                <div class="box-body no-padding">
                    <p class="text-muted" style="margin-left: .7em;">Não há usuários cadastrados.</p>
                </div>
            </c:if>
            
            <c:if test="${ not empty users }">
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                  <th>Nome</th>
                  <th>E-mail</th>
                  <th>Senha</th>
                  <th>Perfil</th>
                  <th>Ativo</th>
                  <th>Criado</th>
                  <th>Atualizado</th>
                </tr>
                <c:forEach var="u" items="${users}">
                    <tr>
                      <td>${ u.name     }</td>
                      <td>${ u.email    }</td>
                      <td>${ u.password }</td>
                      <td>${ u.profile  }</td>
                      <td><span class="label label-success">${ u.active   }</span></td>
                      <td>${ u.createdAt}</td>
                      <td>${ u.updateAt }</td>
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

