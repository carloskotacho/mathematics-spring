<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <jsp:body>
        <br><br>
        <div class="row">
            <div class="col s12 texto-form">
                <h5>Pirâmide</h5>
                <p>Em outros termos, a pirâmide é um <b>sólido geométrico</b> de <b>base poligonal</b> que possui todos os vértices num plano (plano da base).
                    Sua altura corresponde a distância entre o vértice e sua base.</p>
            </div>
        </div>

        <div class="row">
            <div class="col s12 center">
                <img class="img-responsive" src="resources/img/piramide2.png" height="180px">
            </div>
        </div>
        <br><br>
        <form:form method="post" modelAttribute="solid" action="u/solido/piramide" >
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="altura" type="text" path="height" name="height"/>
                    <label for="height" class="active">Altura</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="ladoBase" type="text" path="sideBase" name="sideBase" />
                    <label for="sideBase" class="active">Lado da Base</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="apotemaBase" type="text" path="apothemBase" name="apothemBase" />
                    <label for="apothemBase" class="active">Apótema da Base</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="apotemaPiramide" type="text" path="apothemPyramid" name="apothemPyramid" />
                    <label for="apothemPyramid" class="active">Apótema da Pirâmide</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s12 m6">
                    <select class="icons" path="type" name="type">
                        <option value="" disabled selected>Escolha a sua opção</option>
                        <option value="triangular" data-icon="resources/img/pTriangular.png">Triangular</option>
                        <option value="quadrangular" data-icon="resources/img/pQuadrangular.png">Quadrangular</option>
                        <option value="pentagonal" data-icon="resources/img/pPentagonal.png">Pentagonal</option>
                        <option value="hexagonal" data-icon="resources/img/pHexagonal.png">Hexagonal</option>
                    </select>
                    <label>Tipos de Pirâmide</label>
                </div>
            </div>

            <div class="row">
                <form:button type="submit" class="waves-effect waves-light btn yellow darken-3 col s12 m6">
                    Calcular
                </form:button>
            </div>
        </form:form>

        <br/><br/>
        <div class="row">
            <div class="col s12 m6">
                <div class="card green accent-3">
                    <div class="card-content white-text">
                        <span class="card-title">Fórmulas da Pirâmide</span>
                        <p>Área Base = (Triangular, Quadrangular, Pentagonal, Hexagonal)</p>
                        <p>Área Lateral = nFaces x ((ladoBase x apotemaPiramide) / 2)</p>
                        <p>Área Total = areaLateral + areaBase</p>
                        <p>Volume = (areaBase x altura) / 3</p>
                    </div>
                </div>
            </div>
        </div>

    </jsp:body>
</t:template>