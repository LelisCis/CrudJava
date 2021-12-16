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
       <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lista de clientes</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    
    <style>
        
       body {
          background-image: linear-gradient(to top, #30cfd0 0%, #330867 100%);
      

        }
          
      
        .table {
            border-collapse: separate;
        }
        
       table tbody tr:nth-child(odd) {
	background:#eaf2f8;

        
       }
        table tbody tr:nth-child(even) {
	background:  #d4e6f1;
        
        }
    </style>
    
    
    <body>
       <div class="container"> 
            <div class="row d-flex">
                                                
                <div class="mt-5 titulo">
                    <h1 class="mt-5 text-white text-center">Lista de clientes</h1>
                </div>
                
                <div class="mt-5 text-end"><a class="" href="ClienteController?accion=nuevo"><button type="button" class="btn btn-success text-white text-uppercase">Agregar nuevo</button></a>
                 </div>
  
                <table class="table">
                                                                                             
                    <thead class="encabezado bg-info text-center text-white text-uppercase">
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
                                <tr class="text-center">
                                    <td><%= resultado.get(a).getId()%></td>
                                    <td><%= resultado.get(a).getNombre()%></td>
                                    <td><%= resultado.get(a).getApellido()%></td>
                                    <td><%= resultado.get(a).getEmail()%></td>
                                    <td><%= resultado.get(a).getTelefono()%></td>
                                    <td><a class="" href=<%= ruta%>><button type="button" class="btn btn-primary"><img src="https://img.icons8.com/windows/20/ffffff/approve-and-update.png"/></button></a></td>
                                    <td><a class="" href=<%= rutaE%>><button type="button" class="btn btn-danger"><img src="https://img.icons8.com/ios/20/ffffff/delete--v1.png"/></buttom></a></td>
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
