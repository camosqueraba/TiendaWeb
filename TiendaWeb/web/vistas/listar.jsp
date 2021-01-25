<%-- 
    Document   : listar
    Created on : 7/01/2021, 09:51:24 PM
    Author     : Carlos Andres
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ClienteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Clientes</title>
    </head>
    <body>
        <div>
             <h1>Clientes</h1>
             <table border="1">
                 <thead>
                     <tr>
                         <th>ID</th>
                         <th>NOMBRE</th>
                         <th>CEDULA</th>
                         <th>TELEFONO</th>
                     </tr>
                 </thead>
                 <%
                     ClienteDao cliente_dao = new ClienteDao();
                     List<Cliente> clientes = cliente_dao.listar();
                     Iterator<Cliente> iterador_cliente = clientes.iterator();
                     Cliente cliente = null;
                     
                     while(iterador_cliente.hasNext()){
                         cliente = iterador_cliente.next();
                     }
                 %>
                     
                 <tbody>
                     <tr>
                         <td><%= cliente.getIdCliente() %></td>
                         <td><%= cliente.getNombre() %></td>
                         <td><%= cliente.getCedula() %></td>
                         <td><%= cliente.getTelefono() %></td>
                     </tr>
                 </tbody>
             </table>

             
        </div>
            
       
    </body>
</html>
