<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <br><br>
        <div class="row">
            <div class="col s12 texto-form">
                <h3>Usuários</h3>

                <c:if test="${ empty users }">
                    <p class="texto-form">Não há usuários cadastrados!</p>
                </c:if>

                <c:if test="${ not empty users }">
                    <div class="row">
                        <div class="col s12 m6">
                            <table class="responsive-table texto-form">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th>Email</th>
                                        <th>Senha</th>
                                        <th>Perfil</th>
                                        <th>Ativo</th>
                                        <th>Criado</th>
                                        <th>Atualizado</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach var="u" items="${users}">
                                        <tr>
                                            <td> ${ u.name     } </td>
                                            <td> ${ u.email    } </td>
                                            <td> ${ u.password } </td>
                                            <td> ${ u.profile  } </td>
                                            <td> ${ u.active   } </td>
                                            <td> ${ u.createdAt} </td>
                                            <td> ${ u.updateAt } </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>

    </jsp:body>
</t:template>