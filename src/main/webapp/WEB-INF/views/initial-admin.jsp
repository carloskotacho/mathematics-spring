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
            <div class="col-md-6">
                <div class="box box-solid">
                  <div class="box-header with-border">
                    <h3 class="box-title">Bem Vindo!</h3>
                  </div>
                  <div class="box-body">
                    <div class="box-group" id="accordion">
                      <div class="panel box box-primary">
                        <div class="box-header with-border">
                          <h4 class="box-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                              Minhas informações
                            </a>
                          </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="box-body">
                              <p>E-mail <b>${ cookie.currentUser.value }</b></p>
                              <p>${ dataAtual }</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
          </div>
        </div>
    </jsp:body>
</t:template>