<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="OBMEP - Portal Aluno">
    <jsp:body>
        <br><br>
        <div class="row">
            <div class="col s6 texto-form">
                <h3>Cadastro</h3>
            </div>
        </div>

        <form:form method="post" modelAttribute="u" action="/registrar" >
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="nome" type="text" path="name" data-length="64"/>
                    <label for="nome" class="active" data-error="Excedeu!">Nome</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="username" type="email" path="email" class="validate" data-length="100"/>
                    <label for="email" class="active" data-error="Inválido">E-mail</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m6">
                    <form:input id="password" type="password" path="password" data-length="20" />
                    <label for="password" class="active" data-error="Excedeu!">Senha</label>
                </div>
            </div>

            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <div class="row">
                    <div class="input-field col s12 m6">
                        <form:select class="icons" path="profile" name="profile">
                            <form:option value="ADMIN" data-icon="resources/img/admin.png">Administrador</form:option>
                            <form:option value="USER" data-icon="resources/img/usuario.png">Usuário</form:option>
                        </form:select>
                        <label>Tipos de Usuários</label>
                    </div>
                </div>
            </sec:authorize>

            <div class="row">
                <form:button type="submit" class="waves-effect waves-light btn yellow darken-2 col s12 m6">
                    Cadastrar
                </form:button>
            </div>
        </form:form>

    </jsp:body>
</t:template>