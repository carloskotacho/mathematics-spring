<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <jsp:body>
        <br />
        <div class="row">
            <div class="col s12 texto-form">
                <h5>Cubo</h5>
                <p>O <b>cubo</b> é uma figura que faz parte da geometria espacial. É caracterizado como um <b>poliedro</b> (hexaedro) regular ou ainda,
                    um <b>paralelepípedo retângulo</b> com todas as faces e arestas congruentes e perpendiculares (a = b = c).</p>
            </div>
        </div>

        <div class="row">
            <div class="col s12 center">
                <img class="img-responsive" src="resources/img/cubo2.png" height="200px">
            </div>
        </div>

        <form:form method="post" modelAttribute="solid" action="u/solido/cubo" >
            <div class="row">
                <div class="input-field col s5">
                    <form:input id="lado" type="text" path="side" name="side"/>
                    <label for="side" class="active">Lado</label>
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
                        <span class="card-title">Fórmulas do Cubo</span>
                        <p>Área Base = a²</p>
                        <p>Área Lateral = 4a²</p>
                        <p>Área Total = 6a²</p>
                        <p>Volume = a³</p>
                    </div>
                </div>
            </div>
        </div>

    </jsp:body>
</t:template>