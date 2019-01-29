<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <jsp:body>
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
        
        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-purple">
                    <div class="inner">
                    <h3>1</h3>

                    <p>Geometria</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-reorder"></i>
                    </div>
                <a href="u/solido" class="small-box-footer">Sólidos<i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
        </div>
    </jsp:body>
</t:template>