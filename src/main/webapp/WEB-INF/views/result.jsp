<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <br/><br/>
        <div class="row">
            <div class="col s12 m6">
                <div class="card blue-grey darken-1">
                    <div class="card-content white-text">
                        <span class="card-title">Resultado</span>

                        <p>Nome = ${solid.name}</p>
                        <p>Área Base = ${solid.areaBase}</p>
                        <p>Área Lateral =  ${solid.areaSide}</p>
                        <p>Área Total =  ${solid.areaTotal}</p>
                        <p>Volume = ${solid.volume}</p>
                    </div>
                    <div class="card-action">
                        <a href="/u/solido/historico">Meu histórico</a>
                        <a href="/u/solido">Novo cálculo</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12 texto-form">
                <p>

                </p>
                <p>

                </p>
            </div>
        </div>
    </jsp:body>
</t:template>