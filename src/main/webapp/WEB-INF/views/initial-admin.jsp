<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-purple"><i class="fa fa-user-secret"></i></span>

                <div class="info-box-content">
                  <span class="info-box-text">Administradores</span>
                  <span class="info-box-number">3 <small>cadastrados</small></span>
                </div>
              </div>
            </div>
          
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-purple"><i class="fa fa-users"></i></span>

                <div class="info-box-content">
                  <span class="info-box-text">Usuários</span>
                  <span class="info-box-number">12 <small>cadastrados</small></span>
                </div>
              </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-3">
                <div class="box box-primary">
                  <div class="box-header with-border">
                    <h3 class="box-title">Minhas Informações</h3>
                  </div>
                    
                  <div class="box-body">
                    <strong><i class="glyphicon glyphicon-envelope margin-r-5"></i> E-mail</strong>

                    <p class="text-muted">
                      ${ cookie.currentUser.value }
                    </p>

                    <hr>

                    <strong><i class="fa fa-calendar margin-r-5"></i> Data</strong>

                    <p class="text-muted">${ dataAtual }</p>
                  </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:template>