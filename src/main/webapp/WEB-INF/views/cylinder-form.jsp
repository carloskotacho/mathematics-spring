<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <jsp:body>
        <br />
        <div class="row">
            <div class="col s12 texto-form">
                <h5>Cilindro</h5>
                <p>O <b>cilindro</b> ou <b>cilindro circular</b> é um sólido geométrico alongado e arredondado que possui o mesmo diâmetro ao longo de todo o comprimento.</p>
            </div>
        </div>

        <div class="row">
            <div class="col s12 center">
                <img class="img-responsive" src="resources/img/cilindro2.png" height="200px">
            </div>
        </div>

        <form:form method="post" modelAttribute="solid" action="u/solido/cilindro" >
            <div class="row">
                <div class="input-field col s6">
                    <form:input id="raio" type="text"  path="r" name="r"/>
                    <label for="r" class="active">Raio</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <form:input id="altura" type="text" path="height" name="height" />
                    <label for="height" class="active">Altura</label>
                </div>
            </div>
            <p>
                <form:button type="submit" class="waves-effect waves-light btn blue lighten-2">
                    Calcular
                </form:button>
            </p>
        </form:form>

        <br/><br/>
        <div class="row">
            <div class="col s12 m6">
                <div class="card pink accent-2">
                    <div class="card-content white-text">
                        <span class="card-title">Fórmulas do Cilindro</span>
                        <p>Área Base = PI x raio x raio</p>
                        <p>Área Lateral = 2 x PI x raio x altura</p>
                        <p>Área Total = (2 x areaBase) + areaLateral</p>
                        <p>Volume = solido.areaBase x altura</p>
                    </div>
                </div>
            </div>
        </div>

    </jsp:body>
</t:template>