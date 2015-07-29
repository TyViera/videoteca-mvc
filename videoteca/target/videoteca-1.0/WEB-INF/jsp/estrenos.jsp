<%-- 
    Document   : estrenos
    Created on : 25/07/2015, 10:15:54 AM
    Author     : nazaret
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <tiles:insertDefinition name="cabeza"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Slideshow with jmpress.js" />
        <meta name="keywords" content="jmpress, slideshow, container, plugin, jquery, css3" />
        <meta name="author" content="for Codrops" />
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
        <div class="clr"></div>
        <section id="jms-slideshowEstrenos" class="jms-slideshow">
            <div class="step" data-color="color-1">
                <div class="jms-content">
                    <h3>Just when I thought...</h3>
                    <p>From fairest creatures we desire increase, that thereby beauty's rose might never die</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/1.png"/>" />
            </div>
            <div class="step" data-color="color-2" data-y="500" data-scale="0.4" data-rotate-x="30">
                <div class="jms-content">
                    <h3>Holy cannoli!</h3>
                    <p>But as the riper should by time decease, his tender heir might bear his memory</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/2.png"/>" />
            </div>
            <div class="step" data-color="color-3" data-x="2000" data-z="3000" data-rotate="170">
                <div class="jms-content">
                    <h3>No time to waste</h3>
                    <p>Within thine own bud buriest thy content and, tender churl, makest waste in niggarding</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/3.png"/>" />
            </div>
            <div class="step" data-color="color-4" data-x="3000">
                <div class="jms-content">
                    <h3>Supercool!</h3>
                    <p>Making a famine where abundance lies, thyself thy foe, to thy sweet self too cruel</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/4.png"/>" />
            </div>
            <div class="step" data-color="color-5" data-x="4500" data-z="1000" data-rotate-y="45">
                <div class="jms-content">
                    <h3>Did you know that...</h3>
                    <p>Thou that art now the world's fresh ornament and only herald to the gaudy spring</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/5.png"/>" />
            </div>
        </section>
        <script type="text/javascript">
            $(function () {

                $('#jms-slideshow').jmslideshow();

            });
        </script>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
