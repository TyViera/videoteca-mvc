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
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300,300italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slidesShow/demo.css" />" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slidesShow/styleSlide.css"/>"/>
        <%--Javascript--%>
        <!-- jQuery -->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <!-- jmpress plugin -->
        <script type="text/javascript" src="<c:url value="/resources/js/jmpress.min.js"/>"></script>
        <!-- jmslideshow plugin : extends the jmpress plugin -->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery.jmslideshow.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.48780.js"/>"></script>
        <noscript>
        <style>
            .step {
                width: 100%;
                position: relative;
            }
            .step:not(.active) {
                opacity: 1;
                filter: alpha(opacity=99);
                -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(opacity=99)";
            }
            .step:not(.active) a.jms-link{
                opacity: 1;
                margin-top: 40px;
            }
        </style>
        </noscript>        
    </head>
    <body>

        <tiles:insertDefinition name="topSection" />
        <main>
            <div class="fondoDiv" >
                <header class="tituloDiv" ><h1>Estrenos</h1></header>
                    <%--<c:forEach items="${estrenos}" var="es">
                    Película: ${es.nombre} protagonizada por: ${es.actores}
                    y dirigida por: ${es.directores} <br>
                </c:forEach>--%>
                <div class="container">
                    <section id="jms-slideshow" class="jms-slideshow">
                        <div class="step" data-color="color-1">
                            <div class="jms-content">
                                <h3>Just when I thought...</h3>
                                <p>From fairest creatures we desire increase, that thereby beauty's rose might never die</p>
                                <a class="jms-link" href="#">Read more</a>
                            </div>
                            <img src="<c:url value="/resources/images/slides/1.png"/>" />
                        </div>
                    </section>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $('#jms-slideshow').jmslideshow();
                    });
                </script>
            </div>
            <div class="fondoDiv">
                <header class="tituloDiv"><h1>Los más vistos</h1></header>
                    <c:forEach items="${masvistos}" var="es">
                    Película: ${es.nombre} protagonizada por: ${es.actores}
                    y dirigida por: ${es.directores} <br>
                </c:forEach>
            </div>
            <div class="fondoDiv">
                <header class="tituloDiv"><h1>Favoritos</h1></header>
                    <c:forEach items="${favoritos}" var="es">
                    Película: ${es.nombre} protagonizada por: ${es.actores}
                    y dirigida por: ${es.directores} <br>
                </c:forEach>
            </div>
        </main>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>