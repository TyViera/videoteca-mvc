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
        <div class="alert alert-error" hidden="error">{{errorMessage}}</div>
        
        <spring:url value="saveOrUpdate" var="salaActionURL"/>
        <form:form method="POST" action="${clienteActionURL}" commandName="salaUnit" id="saveOrUpdate">
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
                        <input class="btn-form" type="submit"  value ="Registrar" id="registrar"/>
                        <input class="btn-form" type="reset"  value ="Limpiar" />
                        
                    </td>
                    <td></td>
                </tr>
            </table>
        </form:form>
        <br><br>
        
        <table class="table table-bordered table-striped" style="width: 70%;">
            <thead>
                <tr>
                    <th style="text-align: center; width: 35px;">Id</th>
                    <th style="text-align: center;">Numero</th>
                    <th style="text-align: center;">Tipo</th>
                    <th style="text-align: center;">Capacidad</th>
                    <th style="text-align: center;">Action</th>
                </tr>
            </thead>
            <tbody>
                
                <c:forEach items="${salaList}" var="salaList" >
                    <tr>
                        <td style="text-align: right;">
                            <c:out value="${salaList.id}" />
                        </td>
                        <td style="text-align: right;">
                            <c:out value="${salaList.numero}" />
                        </td>
                        <td style="text-align: right;">
                            <c:out value="${salaList.tipo}" />
                        </td>
                        <td style="text-align: center; width: 20px;">
                            <c:out value="${salaList.capacidad}" />
                        </td>
                        <td style="width: 160px; text-align: center;">
                            <button class="btn btn-mini btn-danger" data-id='${salaList.id}'>Remove</button>
                            <button class="btn btn-mini btn-success" data-id='${salaList.id}'>Edit</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
    </center>

    <tiles:insertDefinition name="botomSection" />
</body>
</html>
