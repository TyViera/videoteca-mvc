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
        <div>
            <spring:url value="registrar.htm" var="peliculaActionURL"/>
            <form:form method="POST" action="${peliculaActionURL}" modelAttribute="peliculaForm">
                <table>
                    <tr>
                        <td><label>Nombre:</label></td>
                        <td><form:input path="nombre" placeholder="Nombre" /></td>
                    </tr>
                    <tr>
                        <td><label>DNI:</label></td>
                        <td><form:input path="dni" placeholder="12345678" /></td>
                    </tr>
                    <tr>
                        <td><label>Celular:</label></td>
                        <td><form:input path="celular" type="tel" placeholder="987654321" /></td>
                    </tr>
                    <tr>
                        <td><label>Correo:</label></td>
                        <td><form:input path="email" type="email" placeholder="mail@mail.com" /></td>
                        <td><form:errors path="email" cssClass="campoConError"/> </td>
                    </tr>
                    <tr>
                        <td><label>Usuario:</label></td>
                        <td><form:input path="nick" placeholder="nombre de usuario" /></td>
                    </tr>
                    <tr>
                        <td><label>Contraseña:</label></td>
                        <td><form:password path="password" placeholder="contraseña" /></td>
                    </tr>
                    <tr>
                        <td><label>Repita la contraseña:</label></td>
                        <td><form:password path="confirmPassword" placeholder="contraseña" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <spring:url value="/Pelicula/" var="cancelURL" />
                            <input class="btn-form" type="submit"  value ="Registrar"/>
                            <input class="btn-form" type="reset"  value ="Limpiar"/>
                            <input class="btn-form" type="button"  value ="Cancelar" onclick="location.href = '${cancelURL}'"/>
                        </td>
                        <td></td>
                    </tr>
                </table>
            </form:form>
        </div>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
