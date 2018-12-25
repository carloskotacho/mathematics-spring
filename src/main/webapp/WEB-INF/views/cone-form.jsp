<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>
    <jsp:body>
        <br/><br/>
        <div class="row">
            <div class="col s12 texto-form">
                <h5>Cone</h5>
                <p><b>Cone</b> é um sólido geométrico que faz parte dos estudos da geometria espacial.</p>
                <p>Ele possui uma base circular (r) formada por segmentos de reta que têm uma extremidade num vértice (V) em comum.</p>
                <p>Além disso, o cone possui a altura (h), caracterizada pela distância do vértice do cone ao plano da base.</p>
                <p>Possui também a denominada <b>geratriz</b>, ou seja, a lateral formada por qualquer segmento que tenha uma extremidade no vértice e a outra na base do cone.</p>
            </div>
        </div>

        <div class="row">
            <div class="col s12 center">
                <img class="img-responsive" src="resources/img/cone2.png" height="160px">
            </div>
        </div>
        <br/><br/>
        <form:form method="post" modelAttribute="solid" action="u/solido/cone">
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="raio" type="text" path="r" name="r"/>
                    <label for="r" class="active">Raio</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="altura" type="text" path="height" name="height" />
                    <label for="height" class="active">Altura</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="geratriz" type="text" path="generatrix" name="generatrix" />
                    <label for="generatrix" class="active">Geratriz</label>
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
                        <span class="card-title">Fórmulas do Cone</span>
                        <p>Área Base = PI x raio x raio</p>
                        <p>Área Lateral = raio x geratriz</p>
                        <p>Área Total = PI x raio x (geratriz + raio)</p>
                        <p>Volume = (PI x raio x raio x altura) / 3</p>
                    </div>
                </div>
            </div>
        </div>

    </jsp:body>
</t:template>