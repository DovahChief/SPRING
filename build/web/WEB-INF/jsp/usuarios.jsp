<%-- 
    Document   : usuarios
    Created on : 30/05/2017, 07:11:46 AM
    Author     : jose
--%>

<%@page import="java.util.Date"%>
<%@page import="DB_CON.Connexion" %>
<%@page import="java.sql.ResultSet"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.ResultSetMetaData"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Tabla de Usuarios Activos</title>
        
    </head>
    
        <%
            Date dt = new Date();
            Connexion bd = new Connexion();
            ResultSet rs = bd.fetch_users();
            ResultSetMetaData meta = rs.getMetaData();
            int n = meta.getColumnCount();   
         %>                       
    
    <body>
        <h1>  Usuarios en bd </h1>
        <p>Fecha : <%= dt %></p>
         <div class="panel panel-default">
           
            <div class="panel-heading">Lista de Usuarios</div>

            <table class="table">
                <tr>
                    <% for(int i = 1; i <= n; i++){
                        %>
                        <td><%= meta.getColumnName(i) %></td>
                        <%
                    } %>
                </tr>
                
                <% while(rs.next()){
                %> <tr> <%
                     for(int i = 1; i <= n; i++){
                        %>
                        <td><%= rs.getObject(i) %></td>
                        <%
                    }
                %> </tr> <%
                } %>
                
            </table>
        </div>
    </body>
</html>