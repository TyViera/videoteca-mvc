<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acerca De..</title>
        <tiles:insertDefinition name="cabeza"/>
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />

        <table align="center" >
            <tr>
                <td colspan="2" ><img alt=""  src="../resources/images/logo.jpg"></td>
            </tr>
            <tr>
                <td>
                    <center>
                        More Panta Martin Jhon<br>
                        Viera Ipanaque Tyler<br>
                        Merino Hurtado Ana
                    </center>
                </td>
            </tr>
        </table>
    <tiles:insertDefinition name="botomSection" />
    </body>
</html>