<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="OBMEP - Portal Aluno">
    <jsp:body>
        <br><br>
        <div class="row">
            <div class="col s12 m6 texto-form">
                <h3>Deletar</h3>
            </div>
        </div>
        <form:form method="post" modelAttribute="email" action="a/deletar">
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="email" type="email" path="email" name="email" data-length="100"/>
                    <label for="email" class="active">Email do Usuário</label>
                </div>
            </div>

            <div class="row">
                <form:button type="submit" class="waves-effect waves-light btn yellow darken-3 col s12 m6">
                    Deletar
                </form:button>
            </div>
        </form:form>
    </jsp:body>
</t:template>
