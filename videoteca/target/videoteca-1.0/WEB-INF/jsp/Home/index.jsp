<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <!-- jmpress plugin -->
        <script type="text/javascript" src="<c:url value="/resources/js/jmpress.min.js"/>"></script>
        <!-- jmslideshow plugin : extends the jmpress plugin -->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery.jmslideshow.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/MasVistoSlides.js"/>"></script>
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
            <div class="contenedorSlides">
                <header class="tituloDiv" ><h1>Estrenos</h1></header>
                <section id="jms-slideshow" class="jms-slideshow">
                    <%
                        int dataX = 1000;
                        int dataY = 500;
                        int dataZ = 3000;
                        int i = 1;
                    %>
                    <c:forEach items="${estrenos}" var="it" varStatus="status" >
                        <c:choose>
                            <c:when test="${status.first}">
                                <div class="step" data-color="color-<c:out value="${status.count}"/>" >
                                    <div class="jms-content">
                                        <h3>${it.nombre}</h3>
                                        <p>${it.descripcionCorta}...</p>
                                        <a class="jms-link" href="${pageContext.servletContext.contextPath}/Pelicula/${it.id}">Leer más</a>
                                    </div>
                                    <img src="${it.imagen}" height="90%" width="35%" />
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="step" data-scale="0.4" data-rotate-x="30"
                                     data-x="<% out.print(dataX); %>" 
                                     data-y="<% out.print(dataY); %>"
                                     data-z="<% out.print(dataZ); %>"
                                     data-color="color-<% out.print(i); %>" >
                                    <div class="jms-content">
                                        <h3>${it.nombre}</h3>
                                        <p>${it.descripcionCorta}...</p>
                                        <a class="jms-link" href="${pageContext.servletContext.contextPath}/Pelicula/${it.id}">Leer más</a>
                                    </div>
                                    <img src="${it.imagen}" height="90%" width="35%" />
                                </div>
                            </c:otherwise>
                        </c:choose>
                        <%
                            dataX += 1000;
                            dataY += 500;
                            dataZ -= 50;
                            i += 1;
                        %>
                    </c:forEach>
                </section>
                <script type="text/javascript">
                    $(function () {
                        var jmpressOpts = {
                            animation: {transitionDuration: '2.0s'}
                        };

                        $('#jms-slideshow').jmslideshow($.extend(true, {jmpressOpts: jmpressOpts}, {
                            autoplay: true,
                            bgColorSpeed: '2.0s',
                            arrows: true
                        }));
                    });
                </script>
            </div>
            <div class="contenedorSlides">
                <header class="tituloDiv" ><h1>Mas vistos</h1></header>
                <section id="jms-slideshowMasVisto" class="jms-slideshow">
                    <%
                        dataX = 1000;
                        dataY = 500;
                        dataZ = 3000;
                        i = 5;
                    %>
                    <c:forEach items="${masvistos}" var="it" varStatus="status" >
                        <c:choose>
                            <c:when test="${status.first}">
                                <div class="step" data-color="color-<c:out value="${status.count}"/>" >
                                    <div class="jms-content">
                                        <h3>${it.nombre}</h3>
                                        <p>${it.descripcionCorta}...</p>
                                        <a class="jms-link" href="${pageContext.servletContext.contextPath}/Pelicula/${it.id}">Leer más</a>
                                    </div>
                                        <img src="${it.imagen}" height="90%" width="35%" />
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="step" data-scale="0.4" data-rotate-x="30"
                                     data-x="<% out.print(dataX); %>" 
                                     data-y="<% out.print(dataY); %>"
                                     data-z="<% out.print(dataZ); %>"
                                     data-color="color-<% out.print(i); %>" >
                                    <div class="jms-content">
                                        <h3>${it.nombre}</h3>
                                        <p>${it.descripcionCorta}...</p>
                                        <a class="jms-link" href="${pageContext.servletContext.contextPath}/Pelicula/${it.id}">Leer más</a>
                                    </div>
                                    <img src="${it.imagen}" height="90%" width="35%" />
                                </div>
                            </c:otherwise>
                        </c:choose>
                        <%
                            dataX += 1000;
                            dataY += 500;
                            dataZ -= 50;
                            i -= 1;
                        %>
                    </c:forEach>
                </section>
                <script type="text/javascript">
                    $(function () {
                        var jmpressOpts = {
                            animation: {transitionDuration: '2.0s'}
                        };

                        $('#jms-slideshowMasVisto').jmslideshowmasvisto($.extend(true, {jmpressOpts: jmpressOpts}, {
                            autoplay: true,
                            bgColorSpeed: '2.0s',
                            arrows: true
                        }));
                    });
                </script>
            </div>
        </main>
        <br/>
        <br/>
        <br/>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>