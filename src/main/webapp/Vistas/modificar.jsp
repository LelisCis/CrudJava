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
        
    <style>
         
        body {
           background-image: linear-gradient(to top, #30cfd0 0%, #330867 100%);
           height: 140vh;

          }
            .contenedor {
            margin-top: 120px !important;
            background: skyblue; 
            opacity: 0.8;
            
        }
    
        .contenedor:hover {
            background: blue; 
            opacity: 0.8;
            }
        
        
        
         label {
              color: white;
              text-transform: uppercase;
              font-size: 12px;
              
          }
          
         .borde:hover {
              border: 1.5px solid darkblue;
          }
        
         
         .container {
              display: flex;
              justify-content: center !important;
              align-items: center !important;
         }
    
      </style>
    
    
    <body>
        
        <%         
        String id = request.getParameter("id");
        int mid;
        mid= Integer.parseInt(id);
        Clientes resultado=null;
        ClientesDAO clientes = new ClientesDAO();
        resultado = clientes.mostrarCliente(mid);
       
        %>
                      
     
     <div class="container">
             <div class="row d-flex justify-content-center shadow p-3 mb-5 rounded mt-5 col-sm-8 col-md-8 col-lg-6 contenedor">
                <form class=" p-5" action="ClienteController?accion=actualizar" method="POST">
                <h1 class="mt-3 mb-3 text-center text-uppercase fs-3 text-white">Modificar registro</h1>

                    <div class="mb-3">
                        <label for="id" class="form-label"></label>
                        <input type="hidden" class="form-control borde"  id="id" name="id"  value="<%= resultado.getId()%>" />
                    </div>
                    
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control borde" id="nombre" name="nombre"  value="<%= resultado.getNombre()%>" />
                    </div>
                     <div class="mb-3">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control borde" id="apellido" name="apellido" value="<%= resultado.getApellido()%>"/>
                    </div>
                     <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control borde" id="email" name="email" value="<%= resultado.getEmail()%>" />
                    </div>
                     <div class="mb-3">
                        <label for="telefono" class="form-label">Telefono</label>
                        <input type="text" class="form-control borde" id="telefono" name="telefono" value="<%= resultado.getTelefono()%>" />
                    </div>
                    
                    <button type="submit" class="btn btn-primary text-white botonAModificar">Actualizar              
                    </button>
                    
                </form>
                
            </div>
            </div>
    
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
        
</html>
