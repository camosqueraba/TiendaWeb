<%-- 
    Document   : index
    Created on : 7/01/2021, 09:50:32 PM
    Author     : Carlos Andres
--%>

<%@page import="conexion_config.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <header>
            <ul>
                <li>Logo</li>
                <li>Busqueda</li>
                <li> <a href ="vistas/login.jsp">Login</a> </li>
                <li>Carrito</li>
            </ul>
        </header>
        <nav>
            <ul>
                <li>Comidas rapidas</li>
                <li>Apartamentos</li>
                <li>Tienda</li>   
            </ul>
        </nav>
        <li>Login</li>
        
        <%-- <% Conexion conexion = new Conexion();
            conexion.conectar();
            out.print("conexion");
        %>--%>
        <a href="ClienteControlador?accion=listar"> listar personas</a>
        <a href="vistas/login.jsp"> Login </a>
        <footer>
            
        </footer>
    </body>
</html>
