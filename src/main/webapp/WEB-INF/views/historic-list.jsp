<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <br />
        <div class="row">
            <div class="col s12 texto-form">
                <h5>Histórico</h5>
                <p>
                    <a class="waves-effect waves-light btn" href="/u/solido/historico/limpar">Limpar histórico</a>
                    <a class="waves-effect waves-light btn" href="/u/solido">Novo cálculo</a>
                </p>

            </div>
        </div>

        <c:if test="${ empty solids }">
            <p class="texto-form">Seu histórico de resultados está vazio no momento!</p>
        </c:if>

        <c:if test="${ not empty solids }">
            <div class="row">
                <table class="responsive-table striped texto-form">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Área Base</th>
                            <th>Área Lateral</th>
                            <th>Área Total</th>
                            <th>Volume</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="s" items="${solids}">
                            <tr>
                                <td>${ s.name      }</td>
                                <td>${ s.areaBase  }</td>
                                <td>${ s.areaSide  }</td>
                                <td>${ s.areaTotal }</td>
                                <td>${ s.volume    }</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>

    </jsp:body>
</t:template>