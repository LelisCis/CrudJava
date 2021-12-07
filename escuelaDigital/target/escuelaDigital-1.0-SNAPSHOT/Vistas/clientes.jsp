<%-- 
    Document   : clientes
    Created on : 23 nov. 2021, 14:22:01
    Author     : Usuario
--%>

<%@page import="modelo.ClientesDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de clientes</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
       <h1 class="text-center mt-5">Lista de clientes</h1>
        <div class="container">
            <div class="row">
                <a class="btn btn-dark w-25 m-3 text-uppercase" 
                   href="ClienteController?accion=nuevo">Agregar cliente</a>
                <table class="table text-white w-100 text-center"  style="background-color:darkcyan">
                    <thead>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Email</th>
                        <th>Telefono</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                    </thead>
                    <tbody>
                        <%
                            List<Clientes> resultado=null;
                            ClientesDAO cliente =new ClientesDAO();
                            resultado = cliente.listarClientes();
                            
                            for(int a = 0; a < resultado.size(); a++){
                                String ruta ="ClienteController?accion=modificar&id=" + resultado.get(a).getId();
                                String rutaE ="ClienteController?accion=eliminar&id=" + resultado.get(a).getId();
                                %>
                                
                                
                                <tr>
                                    <td><%= resultado.get(a).getId()%></td>
                                    <td><%= resultado.get(a).getNombre()%></td>
                                    <td><%= resultado.get(a).getApellido()%></td>
                                    <td><%= resultado.get(a).getEmail()%></td>
                                    <td><%= resultado.get(a).getTelefono()%></td>
                                    <td><a class="text-warning border border-warning " href=<%= ruta%>>X</a></td>
                                    <td><a class="text-danger border border-danger" href=<%= rutaE%>>X</a></td>
                                </tr>
                                <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
