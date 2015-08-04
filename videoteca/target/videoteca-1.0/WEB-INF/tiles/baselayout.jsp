<%-- 
    Document   : baselayout
    Created on : 10/07/2015, 08:30:27 AM
    Author     : more-panta
--%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--plantilla principal de todo mi sistema web -->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="resources/css/estilos.css"/>
        <link type="text/css" rel="stylesheet" href="resources/css/jquery.menu.css"/>
        <link type="text/css" rel="stylesheet" href="resources/css/custom-theme/jquery-ui-1.8.4.custom.css"/>
        <!-- por el menu -->
        <link type="text/css" rel="stylesheet" href="resources/css/styles.css"/>

        <!-- SCRIPTS -->
        <title><tiles:insertAttribute name="title" ignore="true"/></title>
    </head>
    <body>
        <table border="0" align="center" width="80%" bgcolor="#FFFFFF" cellpadding="1px" cellspacing="0px">
            <tr>
                <td height="60px" colspan="2"><img src="resources/images/banner.jpg" width="100%"></td>
            </tr>
            <tr>
                <td align="center">
                    <tiles:insertAttribute name="menu" />
                </td>
            </tr>
            <!-- 
            
            -->
            
            <tr align="center">
                <td align="center" valign="top">
                    <tiles:insertAttribute name="contenido" />
                </td>
            </tr>
            <tr>
                <td background="resources/images/foot.jpg" colspan="2">
                    <center><br>
                        <div class="copyrigth">Todos los Derechos Reservados</div><br>
                    </center>
                </td>
            </tr>
        </table>
    </body>
</html>