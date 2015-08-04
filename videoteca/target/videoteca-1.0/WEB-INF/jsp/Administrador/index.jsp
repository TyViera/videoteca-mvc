<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <tiles:insertDefinition name="cabeza"/>
        <title>Administrador Page</title>
    </head>
    
    <body>
        <tiles:insertDefinition name="topSectionAdmin" />
        <br><br><br>
        <br><br><br>
        <br><br><br>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
