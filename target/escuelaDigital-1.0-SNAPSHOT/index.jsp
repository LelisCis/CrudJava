                                                                                                                                                  <%-- 
    Document   : index.jsp
    Created on : 14 dic. 2021, 14:29:05
    Author     : CG_01
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <style>
        
        body {
           
            background-image: linear-gradient(to top, #30cfd0 0%, #330867 100%);
           height: 100vh;
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
      
        
    </head>
    
    <body style="background-">
         
          
        <div class="container">
             <div class="row d-flex justify-content-center shadow p-3 mb-5 rounded mt-5 col-sm-8 col-md-8 col-lg-4 contenedor">
                
                 <form class="p-5" action="ClienteController?accion=ingresar" method="POST">
                     <div class="text-center">
                         <img src="https://img.icons8.com/material-rounded/80/ffffff/user.png"/>
                     </div>
                     
                    <h1 class="mt-3 mb-3 text-center text-uppercase fs-3 text-white"></h1>
                    <div class="mb-3">
                        <img src="https://img.icons8.com/ios/20/ffffff/mail.png"/> <label for="nombre" class="form-label">Email del usuario</label>
                        <input type="text" class="form-control borde" id="email" name="email"/></input>
                    </div>
                     <div class="mb-3">
                        <img src="https://img.icons8.com/ios/24/ffffff/keyhole-shield.png"/> <label for="apellido" class="form-label">Ingrese su contraseña</label>
                        <input type="password" class="form-control borde" id="pass" name="pass"></input>
                    </div>
                    
                    
                   <button type="submit" class="btn btn-primary botonAgregar text-white">Ingresar</button>
                    
                </form>
                
            </div>
            </div>
    
        
        
        
        
           
    </body>
</html>
