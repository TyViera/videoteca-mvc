<%-- 
    Document   : add
    Created on : 28/07/2015, 10:27:45 PM
    Author     : nazaret
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Pelicula</title>
        <tiles:insertDefinition name="cabeza"/>
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />
    <center>
        <spring:url value="/Pelicula/registrar" var="peliculaActionURL"/>
        <form:form method="POST" action="${peliculaActionURL}" modelAttribute="peliculaForm" enctype="multipart/form-data">
            <table width="100%">
                <tr>
                    <!--<td width="15%"><label>Id</label></td>-->
                    <td></td>
                    <td width="80%"><form:hidden path="id" readonly="true"/></td>
                </tr>
                <tr>
                    <td width="15%"><label>Titulo</label></td>
                    <td width="80%"><form:input path="nombre" placeholder="Titulo" required="true" /></td>
                </tr>
                <tr>
                    <td width="15%"><label>Actores</label></td>
                    <td width="80%">
                        <form:textarea path="actores" placeholder="Reparto de la película" required="true" />
                    </td>
                </tr>
                <tr>
                    <td width="15%"><label>Director</label></td>
                    <td width="80%"><form:input path="directores" placeholder="Director" required="true" /></td>
                </tr>
                <tr>
                    <td width="15%"><label>Género</label></td>
                    <td width="80%"><form:select path="genero" placeholder="Acción" required="true" >
                            <form:option value="Accion"/>
                            <form:option value="Aventura"/>
                            <form:option value="Comedia"/>
                            <form:option value="Drama"/>
                            <form:option value="Fantasia"/>
                            <form:option value="Ficcion"/>
                            <form:option value="Romantico"/>
                            <form:option value="Terror"/>
                        </form:select>    
                    </td>
                </tr>
                <tr>
                    <td width="15%"><label>Duración</label></td>
                    <td width="80%"><form:input path="duracion" placeholder="120 min" required="true"/></td>
                </tr>
                <tr>
                    <td width="15%"><label>Restricción</label></td>
                    <td width="80%"><form:input path="restriccion" placeholder="+14" required="true" /></td>
                </tr>
                <tr>
                    <td width="15%"><label>Nacionalidad</label></td>
                    <td width="80%"><form:input path="nacionalidad" placeholder="Peruana" required="true" /></td>
                </tr>
                <tr>
                    <td width="15%"><label>Fecha de Estreno</label></td>
                    <td width="80%">
                        <form:input type="date"  path="fechaestreno" placeholder="12/12/12" required="true" /></td>

                </tr> 
                <tr>
                    <td width="15%"><label>Sinopsis</label></td>
                    <td width="80%">
                        <form:textarea path="sinapsis" placeholder="Descripción de la película" required="true" />
                    </td>
                </tr>
                <tr>
                    <td width="15%"><label>Url de Trailer</label></td>
                    <td width="80%"><form:input type="url" path="trailerlink" required="true" placeholder="https://www.youtube.com/embed/bVUCdy36TKE" /></td>
                </tr>
                <tr>
                    <td width="15%"><label>Imagen</label></td>
                    <td width="80%">
                        <c:choose>
                            <c:when test="${peliculaForm.id} == 0">
                                <form:input type="file" path="imagenPeli" required="true" />
                            </c:when>
                            <c:otherwise>
                                <form:input type="file" path="imagenPeli" />
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <spring:url value="/Pelicula/" var="cancelURL" />
                        <input class="btn-form" type="submit"  value ="Registrar"/>
                        <input class="btn-form" type="reset"  value ="Limpiar"/>
                        <input class="btn-form" type="button"  value ="Cancelar" onclick="location.href = '${cancelURL}'"/>
                    </td>
                </tr>
            </table>
        </form:form>
    </center>
    <tiles:insertDefinition name="botomSection" />
</body>
</html>
