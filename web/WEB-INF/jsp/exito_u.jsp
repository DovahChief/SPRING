<%-- 
    Document   : exito_u
    Created on : 30/05/2017, 09:55:17 AM
    Author     : jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


    <title>(${requestScope.exito})</title>
</head>
<body>
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-6 col-sm-offset-3">
            <br><br> <h2 style="color:#0fad00">Exito</h2>
            
            <img src="resources/imagenes/check_s.png">
            
            <h3>Estimado ${requestScope.nombre}</h3>
            
            <p style="font-size:20px;color:#5C5C5C;">
                Se ha creado su nueva cuenta exitosamente por favor verifique 
                su direccion de correo  electronico (${requestScope.correo}) para mas informacion
            </p>
            <a href="index.htm" class="btn btn-success">INICIO</a>
            <br><br>
            </div>
            
        </div>
    </div>

</body>