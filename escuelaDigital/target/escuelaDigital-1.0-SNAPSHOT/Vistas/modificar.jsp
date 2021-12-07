<%-- 
    Document   : modificar
    Created on : 23 nov. 2021, 14:22:48
    Author     : Usuario
--%>

<%@page import="modelo.Clientes"%>
<%@page import="modelo.ClientesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar cliente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body style= "background-color: darkcyan";>
        
        <% 
        
        String id = request.getParameter("id");
        int mid;
        mid= Integer.parseInt(id);
        mid = Integer.parseInt(id);
        Clientes resultado=null;
        ClientesDAO clientes = new ClientesDAO();
        resultado = clientes.mostrarCliente(mid);
        
        %>
                
        
    <nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Empresa</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contactos</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Más información
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">Dónde estamos</a></li>
            <li><a class="dropdown-item" href="#">Clientes</a></li>
            <li><a class="dropdown-item" href="#">Servicios</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
        
                      
            <div class="container">
            <div class="row d-flex justify-content-center shadow p-5 mb-5 rounded text-white mt-5 col-sm-10 col-md-12 col-lg-6" style="background: darkslategrey">
                <form class=" p-5" action="ClienteController?accion=actualizar" method="POST">
                <h1 class="mt-3 mb-3 text-center text-uppercase fs-3">Modificar registro</h1>

                    <div class="mb-3">
                        <label for="id" class="form-label">ID:</label>
                        <input type="hidden" class="form-control" id="id" name="id"  value=<%= resultado.getId()%> />
                    </div>
                    
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre"  value="<%= resultado.getNombre()%>" />
                    </div>
                     <div class="mb-3">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value="<%= resultado.getApellido()%>"/>
                    </div>
                     <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email" value=""<%= resultado.getEmail()%>" />
                    </div>
                     <div class="mb-3">
                        <label for="telefono" class="form-label">Telefono</label>
                        <input type="text" class="form-control" id="telefono" name="telefono" value="<%= resultado.getTelefono()%>" />
                    </div>
                    
                    <button type="submit" class="btn btn-success">Modificar              
                    </button>
                    
                </form>
                
            </div>
            </div>
    
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
        
</html>