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
        <title>Peliculas</title>
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
                            <th>Titulo</th>
                            <th>Actores</th>
                            <th>Director</th>
                            <th>Duración</th>
                            <th>Restricción</th>
                            <th>Nacionalidad</th>
                            <th>Fecha de Estreno</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <c:forEach items="${peliculas}" var="pelicula">
                        <tr>
                            <td>${pelicula.id}</td>
                            <td>${pelicula.nombre}</td>
                            <td>${pelicula.actores}</td>
                            <td>${pelicula.directores}</td>
                            <td>${pelicula.duracion}</td>
                            <td>${pelicula.restriccion}</td>
                            <td>${pelicula.nacionalidad}</td>
                            <td>${pelicula.fechaestreno}</td>
                            <td>
                                <spring:url value="/Pelicula/${pelicula.id}" var="peliculaUrl" />
                                <spring:url value="/Pelicula/${pelicula.id}/delete" var="deleteUrl" /> 
                                <spring:url value="/Pelicula/${pelicula.id}/update" var="updateUrl" />

                                <button class="btn btn-info" onclick="location.href = '${peliculaUrl}'">Query</button>
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
