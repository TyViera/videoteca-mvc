<%-- 
    Document   : SalaAdmin
    Created on : 02/08/2015, 04:33:42 PM
    Author     : more-panta
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <tiles:insertDefinition name="cabeza"/>
        <style type="text/css">
            span.campoConError {
                color: red;
            }
        </style>
    </head>
    <body>
        <tiles:insertDefinition name="topSectionAdmin" />
    <center>
        <spring:url value="saveOrUpdateSala.htm" var="salaActionURL"/>
        <form:form method="POST" action="${salaActionURL}" modelAttribute="salaForm">
            <table>
                <tr>
                    <td><label>Numero :</label></td>
                    <td><form:input path="numero" placeholder="Numero" /></td>
                    <td><form:errors path="numero" cssClass="campoConError"/></td>
                </tr>
                <tr>
                    <td><label>Tipo :</label></td>
                    <td><form:input path="tipo" placeholder="Tipo" /></td>
                    <td><form:errors path="tipo" cssClass="campoConError"/></td>
                </tr>
                <tr>
                    <td><label>Capacidad :</label></td>
                    <td><form:input path="capacidad" placeholder="Capacidad" /></td>
                    <td><form:errors path="capacidad" cssClass="campoConError"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input class="btn-form" type="submit"  value ="Registrar"/>
                        <input class="btn-form" type="reset"  value ="Limpiar"/>
                    </td>
                    <td></td>
                </tr>
            </table>
        </form:form>
        <br><br>
        <table class="table table-bordered table-striped" style="width: 70%;">
            <thead>
                <tr>
                    <th style="text-align: center; width: 25px;">Id</th>
                    <th style="text-align: center;">Numero</th>
                    <th style="text-align: center;">Tipo</th>
                    <th style="text-align: center;">Capacidad</th>
                    <th style="text-align: center;">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="text-align: center;"></td>
                    <td></td>
                    <td></td>
                    <td style="text-align: center; width: 20px;"><span
                            class="icon-ok"></span></td>

                    <td style="width: 160px; text-align: center;">
                        <button class="btn btn-mini btn-danger">Remove</button>
                        <button class="btn btn-mini btn-success">Edit</button>
                    </td>
                </tr>
            </tbody>
        </table>

    </center>

    <tiles:insertDefinition name="botomSection" />
</body>
</html>
