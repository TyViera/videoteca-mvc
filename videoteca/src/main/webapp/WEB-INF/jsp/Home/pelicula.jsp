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
        <tiles:insertDefinition name="cabeza"/>
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />
        <main>
            <div class="fondoDiv">
                <header class="tituloDiv">
                    <h1><jsp:getProperty name="pelicula" property="nombre"/></h1>
                </header>
                <table>
                    <tr>
                        <td>
                            <div class="imgPelicula" >
                                <!--<img src=""/>-->
                            </div>
                        </td>
                        <td>
                            Id: <jsp:getProperty name="pelicula" property="id"/>
                            Película: <jsp:getProperty name="pelicula" property="nombre"/>
                            protagonizada por: <jsp:getProperty name="pelicula" property="actores"/>
                            y dirigida por: <jsp:getProperty name="pelicula" property="director"/>
                        </td>
                    </tr>
                </table>
            </div>
        </main>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
