<%-- 
    Document   : crea_u
    Created on : 30/05/2017, 09:29:49 AM
    Author     : jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Ingresa tus datos</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></xscript>
        <link rel="stylesheet" href="style.css"><script src="script.js"></script>
        <script src="scripts/postbtn.js" type="text/javascript"></script>
</head>
<body>
    <div class="container">
        <div class="col-12-lg">
            <h1>Crea Cuenta</h1>

            <form  action="crea_user.htm" method="post">
            
            <label for="basic-url">Username</label>
            <div class="input-group">
              <span class="input-group-addon" >@</span>
              <input name ="user" type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
            </div>

            <br>
            <label for="basic-url">Nombre</label>
            <div class="input-group">
              <input name="first" type="text" class="form-control" placeholder="Nombre" aria-describedby="basic-addon2">
              <span class="input-group-addon" ></span>
            </div>

            <br>
            <label for="basic-url">Apellido</label>
            <div class="input-group">
              <input name="last" type="text" class="form-control" placeholder="Apellido" aria-describedby="basic-addon2">
              <span class="input-group-addon" ></span>
            </div>

            <br>
            <label for="basic-url">Email</label>
            <div class="input-group">
              <input name="email"  type="email" class="form-control" placeholder="Email" aria-describedby="basic-addon2">
              <span class="input-group-addon" ></span>
            </div>

            <br><br>
          
            <button type="submit"  class="btn btn-success">Crea cuenta</button>
            </form>
        </div>
    </div>


</body>
</html>