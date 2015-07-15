<%-- 
    Document   : pelicula
    Created on : 14/07/2015, 06:34:08 PM
    Author     : nazaret
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pelicula" scope="request" class="com.springmvc.videoteca.spring.bean.Pelicula"></jsp:useBean>
    <!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pelicula</title>
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
            <div class="fondoDiv">
                <header class="tituloDiv">
                    <h1><jsp:getProperty name="pelicula" property="nombre"/></h1>
                </header>
                Id: <jsp:getProperty name="pelicula" property="id"/>
                Película: <jsp:getProperty name="pelicula" property="nombre"/>
                protagonizada por: <jsp:getProperty name="pelicula" property="actores"/>
                y dirigida por: <jsp:getProperty name="pelicula" property="director"/>
            </div>
        </main>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
