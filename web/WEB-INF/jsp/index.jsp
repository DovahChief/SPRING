<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
        <title>Web App Con conexion a BD</title>
        
    </head>

    <body>
        <img src="resources/imagenes/imagen1.png">
        <h1>
            Formulario de Busqueda
        </h1>
        
        
        
        <br><br>
        
        <div class="container">
        <form action="user_s.htm" method="post" class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" name="user" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-danger">BUSCAR</button>
        </form>
          
        </div>
        
        <br><br>
        
        <div class="container">
        <input type="button" class="btn btn-info" 
               onclick="location.href='http://localhost:8080/SpringMVC/usuarios.htm';"
               value="USUARIOS" />
      
        
  
        
        <input type="button" class="btn btn-info" 
               onclick="location.href='http://localhost:8080/SpringMVC/crea_u.htm';"
               value="CREA CUENTA" />
        </div>
        </div>
    </body>
</html>
