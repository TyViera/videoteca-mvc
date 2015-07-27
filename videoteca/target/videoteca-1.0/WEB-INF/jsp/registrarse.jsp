<%-- 
    Document   : registrarse
    Created on : 25/07/2015, 09:52:02 AM
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
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />
        <section>
            <center>
                <form>
                    <table>
                        <tr>
                            <td><label>Nombre:</label></td>
                            <td><input type="text" /></td>
                        </tr>
                        <tr>
                            <td><label>DNI:</label></td>
                            <td><input type="text" /></td>
                        </tr>
                        <tr>
                            <td><label>celular:</label></td>
                            <td><input type="text" /></td>
                        </tr>
                        <tr>
                            <td><label>correo:</label></td>
                            <td><input type="text" /></td>
                        </tr>
                        <tr>
                            <td><label>Usuario:</label></td>
                            <td><input type="text" /></td>
                        </tr>
                        <tr>
                            <td><label>Contraseña:</label></td>
                            <td><input type="text" /></td>
                        </tr>
                        <tr>
                            <td><label>Repita la contraseña:</label></td>
                            <td><input type="text" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit"  value ="Registrar"/></td>
                        </tr>
                    </table>
                </form>
                <br/>
            </center>
        </section>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
