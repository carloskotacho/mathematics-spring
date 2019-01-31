<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        
        <div class="row">
        <div class="col-md-3">

            <div class="box box-tools">
            <div class="box-body box-profile">
              

              <h3 class="profile-username text-center">Resultado</h3>

              <p class="text-muted text-center">Calculado com sucesso!</p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Nome</b> <a class="pull-right">${solid.name}</a>
                </li>
                <li class="list-group-item">
                  <b>Área Base</b> <a class="pull-right">${solid.areaBase}</a>
                </li>
                <li class="list-group-item">
                  <b>Área Lateral</b> <a class="pull-right">${solid.areaSide}</a>
                </li>
                <li class="list-group-item">
                  <b>Área Total</b> <a class="pull-right">${solid.areaTotal}</a>
                </li>
                <li class="list-group-item">
                  <b>Volume</b> <a class="pull-right">${solid.volume}</a>
                </li>
              </ul>

              <a href="/u/solido/historico" class="btn bg-purple btn-block"><b>Histórico</b></a>
              <a href="/u/solido" class="btn bg-purple btn-block"><b>Novo cálculo</b></a>
            </div>
          </div>
        </div>
        </div>
        
    </jsp:body>
</t:template>