<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Videoteca</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/estilos.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/jquery.menu.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/datePicker.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/jquery.alerts.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/custom-theme/jquery-ui-1.8.4.custom.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/jquery.tree.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/pagination.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/tyStyles.css"/>" />
        <!-- por el menu -->
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/superfish-navbar.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/superfish-vertical.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/superfish.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/styles.css"/>" />


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