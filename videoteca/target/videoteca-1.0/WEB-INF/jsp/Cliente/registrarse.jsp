<%-- 
    Document   : registrarse
    Created on : 25/07/2015, 09:52:02 AM
    Author     : nazaret
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <tiles:insertDefinition name="cabeza"/>
        <style type="text/css">
            span.campoConError {
                color: red;
            }
        </style>
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />
        <section>
            <center>
                <spring:url value="registrar.htm" var="clienteActionURL"/>
                <form:form method="POST" action="${clienteActionURL}" modelAttribute="clienteForm">
                    <table>
                        <tr>
                            <td><label>Nombre:</label></td>
                            <td><form:input path="nombre" placeholder="Nombre" /></td>
                            <td><form:errors path="nombre" cssClass="campoConError"/> </td>
                        </tr>
                        <tr>
                            <td><label>DNI:</label></td>
                            <td><form:input path="dni" placeholder="12345678" /></td>
                            <td><form:errors path="dni" cssClass="campoConError"/> </td>
                        </tr>
                        <tr>
                            <td><label>Celular:</label></td>
                            <td><form:input path="celular" type="tel" placeholder="987654321" /></td>
                            <td><form:errors path="celular" cssClass="campoConError"/> </td>
                        </tr>
                        <tr>
                            <td><label>Correo:</label></td>
                            <td><form:input path="email" type="email" placeholder="mail@mail.com" /></td>
                            <td><form:errors path="email" cssClass="campoConError"/> </td>
                        </tr>
                        <tr>
                            <td><label>Usuario:</label></td>
                            <td><form:input path="nick" placeholder="nombre de usuario" /></td>
                            <td><form:errors path="nick" cssClass="campoConError"/> </td>
                        </tr>
                        <tr>
                            <td><label>Contraseña:</label></td>
                            <td><form:password path="password" placeholder="contraseña" /></td>
                            <td><form:errors path="password" cssClass="campoConError"/> </td>
                        </tr>
                        <tr>
                            <td><label>Repita la contraseña:</label></td>
                            <td><form:password path="confirmPassword" placeholder="contraseña" /></td>
                            <td><form:errors path="confirmPassword" cssClass="campoConError"/> </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <spring:url value="/Cliente/" var="cancelURL" />
                                <input class="btn-form" type="submit"  value ="Registrar"/>
                                <input class="btn-form" type="reset"  value ="Limpiar"/>
                                <input class="btn-form" type="button"  value ="Cancelar" onclick="location.href = '${cancelURL}'"/>
                            </td>
                            
                            <td></td>
                        </tr>
                    </table>
                </form:form>
                <br/>
            </center>
        </section>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
