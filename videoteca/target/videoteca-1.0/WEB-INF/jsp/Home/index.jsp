<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Videoteca</title>
        <tiles:insertDefinition name="cabeza"/>

    </head>
    <body>

        <tiles:insertDefinition name="topSection" />
        <main>
            <div class="fondoDiv" >
                <header class="tituloDiv" ><h1>Estrenos</h1></header>
                    <c:forEach items="${estrenos}" var="es">
                    Película: ${es.nombre} protagonizada por: ${es.actores}
                    y dirigida por: ${es.director} <br>
                </c:forEach>
            </div>
            <div class="fondoDiv">
                <header class="tituloDiv"><h1>Los más vistos</h1></header>
                <c:forEach items="${masvistos}" var="es">
                    Película: ${es.nombre} protagonizada por: ${es.actores}
                    y dirigida por: ${es.director} <br>
                </c:forEach>
            </div>
            <div class="fondoDiv">
                <header class="tituloDiv"><h1>Favoritos</h1></header>
                <c:forEach items="${favoritos}" var="es">
                    Película: ${es.nombre} protagonizada por: ${es.actores}
                    y dirigida por: ${es.director} <br>
                </c:forEach>
            </div>
        </main>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>