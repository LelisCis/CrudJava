 
package controlador;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Clientes;
import modelo.ClientesDAO;



@WebServlet(name = "ClienteController", urlPatterns = {"/ClienteController"})
    public class ClienteController extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            ClientesDAO clientesDao = new ClientesDAO();
            String accion; 
            RequestDispatcher dispatcher = null;
            accion = request.getParameter("accion");
            if(accion == null || accion.isEmpty()){
                dispatcher = request.getRequestDispatcher("Vistas/clientes.jsp");
            }else if(accion.equals("modificar")){
            dispatcher = request.getRequestDispatcher ("Vistas/modificar.jsp");
            }else if(accion.equals("actualizar")){
                int id  =  Integer.parseInt(request.getParameter("id"));
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String email = request.getParameter("email");
                String telefono = request.getParameter("telefono");
                int tl = Integer.parseInt(telefono);
                Clientes cliente = new Clientes(id,nombre,apellido,email, tl);
                clientesDao.actualizarCliente(cliente);
                dispatcher = request.getRequestDispatcher("Vistas/clientes.jsp");
                
                
            }
       
            dispatcher.forward(request, response);
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doGet(request, response);
       
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
