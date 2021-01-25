<%-- 
    Document   : login
    Created on : 13/01/2021, 01:05:15 AM
    Author     : Carlos Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
    </head>
    <body>
        <h1>login</h1>
        <form action="iniciar_sesion" method="post">
            
            <label for="">Nombre</label> <input type="text" name="nombre">
            <label for="">Password</label> <input type="password" name="password">
            <input type="submit" name="iniciar">
        </form>
            
    </body>
</html>
