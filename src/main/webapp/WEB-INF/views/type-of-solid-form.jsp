<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="Sólidos">
    <jsp:body>
        
        <div class="row">
        <div class="col-md-11">
          <div class="box box-tools">
            <div class="box-header with-border">
              <h3 class="box-title">Geometria Espacial</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
              
            </div>
              
            <div class="box-body">
              A Geometria Espacial estuda os objetos que possuem mais de uma dimensão e ocupam lugar no espaço.
              Por sua vez, esses objetos são conhecidos como <b>"sólidos geométricos"</b> ou <b>"figuras geométricas espaciais"</b>.
              Conheça melhor alguns deles.
            </div>
          </div>
            
        </div>
        </div>

        <div class="row">
        <div class="col-lg-3 col-xs-6">
            
          <div class="small-box bg-purple">
            <div class="inner">
              <h3>1</h3>

              <p>Cubo</p>
            </div>
            <div class="icon">
              <i class="ion ion-cube"></i>
            </div>
            <a href="u/solido/cubo" class="small-box-footer">Calcular<i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
            
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-purple">
            <div class="inner">
              <h3>2</h3>

              <p>Pirâmide</p>
            </div>
            <div class="icon">
              <i class=""></i>
            </div>
            <a href="u/solido/piramide" class="small-box-footer">Calcular<i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-purple">
            <div class="inner">
              <h3>3</h3>

              <p>Cilindro</p>
            </div>
            <div class="icon">
              <i class=""></i>
            </div>
            <a href="u/solido/cilindro" class="small-box-footer">Calcular<i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        
        <div class="col-lg-3 col-xs-6">
          <div class="small-box bg-purple">
            <div class="inner">
              <h3>4</h3>

              <p>Cone</p>
            </div>
            <div class="icon">
              <i class=""></i>
            </div>
            <a href="u/solido/cone" class="small-box-footer">Calcular<i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
      </div>
        
    </jsp:body>
</t:template>