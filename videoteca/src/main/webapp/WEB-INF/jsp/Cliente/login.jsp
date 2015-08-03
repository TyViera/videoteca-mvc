<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <tiles:insertDefinition name="cabeza"/>
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />

        <form  method="post" action="login.htm">
            <table align="center" valign="middle" height="250px">
                <tr>
                    <td align="right" >
                        <img src="../resources/images/candado.jpg">
                    </td>
                    <td align="left">
                        <table valign="center">
                            <tr>
                                <td>
                                </td>
                                <td colspan="2" align="center"><b>Ingrese usuario y contrase&ntilde;a</b></td>
                            </tr>
                            <tr>
                                <td>Usuario(enter):</td>
                                <td><input name="usuario" type="text" value="" size="20" class="required"></td>
                            </tr>
                            <tr>
                                <td>contrase&ntilde;a(enter):</td>
                                <td><input name="contrasena" type="password" value="" size="20" class="required"></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="1">
                                </td>
                                <td align="center" colspan="2">
                                    <input type="submit" value="Ingresar"> <input type="RESET" value="Limpiar">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    ¿No estas registrado?, <a href="registrar.htm">registrate aqui</a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>