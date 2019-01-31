<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="Usuário">
    <jsp:body>
        <div class="row">
            <div class="col-md-3">
                <div class="box box-tools">
                  <div class="box-header with-border">
                    <h3 class="box-title">Minhas Informações</h3>
                  </div>
                    
                  <div class="box-body">
                    <strong><i class="glyphicon glyphicon-envelope margin-r-5"></i> E-mail</strong>

                    <p class="text-muted">
                      ${ cookie.currentUser.value }
                    </p>
                    
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