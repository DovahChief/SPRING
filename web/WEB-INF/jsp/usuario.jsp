<%-- 
    Document   : usuario
    Created on : 30/05/2017, 07:57:02 AM
    Author     : jose
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
        <title>JSP Page</title>
        
        
    </head>
    
   
    <body>
        
        <h1>Usuarios que Coeinciden</h1>
        
         <div class="panel panel-default">
           
            <div class="panel-heading">Usuario</div>

            <table class="table">
                <tr>
                    <td>${requestScope.nombre}</td>   
                    <td>${requestScope.email}</td> 
                </tr>
                
                
            </table>
        </div>
        
    </body>
</html>
