<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template title="OBMEP - Portal Aluno">
    <jsp:body>
        <div class="row">
            <div class="col s6 texto-form">
                <h1>Cadastro</h1>
            </div>
        </div>

        <form:form method="post" modelAttribute="u" action="/registrar" >
            <div class="row">
                <div class="input-field col s6">
                    <form:input id="nome" type="text" path="name" data-length="64"/>
                    <label for="nome" class="active" data-error="Excedeu!">Nome</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <form:input id="username" type="email" path="email" class="validate" data-length="100"/>
                    <label for="email" class="active" data-error="Inválido">E-mail</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <form:input id="password" type="password" path="password" data-length="20" />
                    <label for="password" class="active" data-error="Excedeu!">Senha</label>
                </div>
            </div>

            <c:if test="${ isAdministrador }">
                <div class="row">
                    <div class="input-field col s6 m6">
                        <select class="icons" name="tRole">
                            <option value="" disabled selected>Escolha o tipo de Usuário</option>
                            <option value="ADMINISTRADOR" data-icon="resources/img/admin.png">Administrador</option>
                            <option value="USUARIO" data-icon="resources/img/usuario.png">Usuário</option>
                        </select>
                        <label>Tipos de Usuários</label>
                    </div>
                </div>
            </c:if>

            <div class="row">
                <div class="col s12">
                    <form:button type="submit" class="waves-effect waves-light btn blue lighten-2 col s6">
                        Cadastrar
                    </form:button>
                </div>
            </div>
        </form:form>

    </jsp:body>
</t:template>