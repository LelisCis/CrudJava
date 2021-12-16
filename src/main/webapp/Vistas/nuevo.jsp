         <%-- 
    Document   : nuevo
    Created on : 23 nov. 2021, 14:22:26
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      </head>
      
      <style>
          body {
         background-image: linear-gradient(to top, #30cfd0 0%, #330867 100%);
         background-repeat: no-repeat;
           height: 150vh;

          }
            .contenedor {
            margin-top: 120px !important;
            background: skyblue; 
            opacity: 0.8;
            
        }
        
        .contenedor:focus {
            
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
        
          
        <div class="container">
             <div class="row d-flex justify-content-center shadow p-3 mb-5 rounded mt-5 col-sm-8 col-md-8 col-lg-6 contenedor">
                <form class="p-5" action="ClienteController?accion=insert" method="POST">
                    <h1 class="mt-3 mb-3 text-center text-uppercase text-white fs-3">Formulario de registro</h1>

                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control borde" id="nombre" name="nombre"></input>
                    </div>
                     <div class="mb-3">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control borde" id="apellido" name="apellido"></input>
                    </div>
                    
                     <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control borde" id="email" name="email"></input>
                    </div>
                     <div class="mb-3">
                        <label for="telefono" class="form-label">Teléfono</label>
                        <input type="text" class="form-control borde" id="telefono" name="telefono"></input>
                    </div>
                    
                   <button type="submit" class="btn btn-primary botonAgregar text-white">Agregar</button>
                    
                </form>
                
            </div>
            </div>
    
        
        
        
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="./js/appi.js"></script>  
    </body>

