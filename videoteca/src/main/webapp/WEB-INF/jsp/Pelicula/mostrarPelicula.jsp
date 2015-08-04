<%-- 
    Document   : pelicula
    Created on : 14/07/2015, 06:34:08 PM
    Author     : nazaret
--%>

<%@page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<jsp:useBean id="pelicula" scope="request" class="com.springmvc.videoteca.spring.model.Pelicula"></jsp:useBean>
    <!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Pelicula</title>
        <tiles:insertDefinition name="cabeza"/>
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />
        <main>
            <div class="contenedorPelicula">
                <header><h1><jsp:getProperty name="pelicula" property="nombre"/></h1></header>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="20%">
                            <img alt="<jsp:getProperty name="pelicula" property="nombre"/>" 
                                 src="<jsp:getProperty name="pelicula" property="imagen"/>" 
                                 height="200" width="150" />
                        </td>
                        <td width="80%">
                            <table class="tablaContenedor" width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="20%">Id: </td>
                                    <td width="80%"><jsp:getProperty name="pelicula" property="id"/></td>
                                </tr>
                                <tr>
                                    <td width="20%">Titulo: </td>
                                    <td width="80%"><jsp:getProperty name="pelicula" property="nombre"/></td>
                                </tr>
                                <tr>
                                    <td width="20%">Género: </td>
                                    <td width="80%"><jsp:getProperty name="pelicula" property="genero"/></td>
                                </tr>
                                <tr>
                                    <td width="20%">Duración: </td>
                                    <td width="80%"><jsp:getProperty name="pelicula" property="duracion"/></td>
                                </tr>
                                <tr>
                                    <td width="20%">Fecha de Estreno: </td>
                                    <td width="80%">
                                        <%
                                            Date fecha = pelicula.getFechaestreno();
                                            SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                                            String fecha2 = df.format(fecha);
                                            out.print(fecha2);
                                        %>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20%">Director:</td>
                                    <td width="80%"><jsp:getProperty name="pelicula" property="directores"/></td>
                                </tr>
                                <tr>
                                    <td width="20%">Reparto: </td>
                                    <td width="80%"><jsp:getProperty name="pelicula" property="actores"/></td>
                                </tr>
                                <tr>
                                    <td width="20%">Nacionalidad:</td>
                                    <td width="80%"><jsp:getProperty name="pelicula" property="nacionalidad"/></td>
                                </tr>
                                <tr>
                                    <td width="20%">Restricción:</td>
                                    <td width="80%"><jsp:getProperty name="pelicula" property="restriccion"/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br/>
                <div>
                    <header><h1>Sinopsis de <jsp:getProperty name="pelicula" property="nombre"/></h1></header>
                    <p><jsp:getProperty name="pelicula" property="sinapsis"/></p>
                </div>
                <br/>
                <div>
                    <header><h1>Trailer de <jsp:getProperty name="pelicula" property="nombre"/></h1></header>
                    <br/>
                    <center>
                        <iframe class="youtube-player" width="640" height="385" frameborder="0" 
                                src= "<jsp:getProperty name="pelicula"  property="trailerlink"/>" >
                        </iframe>
                    </center>
                </div>
            </div>
        </main>
        <br/>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
