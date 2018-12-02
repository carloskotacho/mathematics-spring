<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="OBMEP - Portal Aluno">
    <jsp:body>
        <div class="row">
            <div class="col s12 texto-form center">
                <h1>Deletar</h1>
            </div>
        </div>
        <form:form method="post" modelAttribute="email" action="a/deletar">
            <div class="row">
                <div class="input-field col s6 offset-s3">
                    <form:input id="email" type="email" path="email" name="email" data-length="100"/>
                    <label for="email" class="active">Email do Usuário</label>
                </div>
            </div>

            <div class="row">
                <div class="col s12">
                    <form:button type="submit" class="waves-effect waves-light btn yellow darken-3 col s6 offset-s3">
                        Deletar
                    </form:button>
                </div>
            </div>
        </form:form>
    </jsp:body>
</t:template>
