<%-- 
    Document   : listAll
    Created on : 28/07/2015, 09:32:55 PM
    Author     : nazaret
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <tiles:insertDefinition name="cabeza"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>"/>
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />
        <main>
            <section>
                <c:if test="${not empty msg}">
			<div class="alert alert-${css} alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>${msg}</strong>
			</div>
		</c:if>
		<h1>Todas las Películas</h1>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Dni</th>
                            <th>Nick</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Celular</th>
                        </tr>
                    </thead>
                    <c:forEach items="${clientes}" var="cliente">
                        <tr>
                            <td>${cliente.id}</td>
                            <td>${cliente.nombre}</td>
                            <td>${cliente.dni}</td>
                            <td>${cliente.nick}</td>
                            <td>${cliente.email}</td>
                            <td>${cliente.password}</td>
                            <td>${cliente.celular}</td>
                            <td>
                                <spring:url value="/Cliente/${cliente.id}" var="clienteUrl" />
                                <spring:url value="/Cliente/${cliente.id}/delete" var="deleteUrl" /> 
                                <spring:url value="/Cliente/${cliente.id}/update" var="updateUrl" />

                                <button class="btn btn-info" onclick="location.href = '${clienteUrl}'">Query</button>
                                <button class="btn btn-primary" onclick="location.href = '${updateUrl}'">Update</button>
                                <button class="btn btn-danger" onclick="this.disabled = true; post('${deleteUrl}')">Delete</button>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </section>
        </main>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
