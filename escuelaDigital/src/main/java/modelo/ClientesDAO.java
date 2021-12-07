package modelo;

import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClientesDAO {
    Connection conexion;
    public ClientesDAO(){
        Conexion con = new Conexion();
        conexion = con.getConection();
    }
    public List<Clientes> listarClientes(){
       PreparedStatement ps;
       ResultSet rs;
       List<Clientes> lista = new ArrayList<>();
       /*List es abstracta*/
       try{
           ps = conexion.prepareStatement("SELECT * FROM participantes");
           rs = ps.executeQuery();
           
           while(rs.next()){
               int id = rs.getInt("id");
               String nombre = rs.getString("nombre");
               String apellido = rs.getString("apellido"); 
               String email = rs.getString("email");
               int telefono = rs.getInt("telefono");
               Clientes clientes = new Clientes(id, nombre, apellido,
               email, telefono);
               lista.add(clientes);
           }
           return lista;
           
       }catch(SQLException e){
           System.out.println(e.toString());
           return null;
       }
    }
    public Clientes mostrarCliente(int _id){
       PreparedStatement ps;
       ResultSet rs;
       Clientes cliente = null;
       
       try{
            ps = conexion.prepareStatement("SELECT * FROM "
                    + "participantes WHERE id=?");
            ps.setInt(1,_id);
           rs = ps.executeQuery();
           while(rs.next()){
               int id = rs.getInt("id");
               String nombre = rs.getString("nombre");
               String apellido = rs.getString("apellido"); 
               String email = rs.getString("email");
               int telefono = rs.getInt("telefono");
               
               cliente = new Clientes(id,nombre,apellido,
               email, telefono);
           } return cliente;
           
       }catch(SQLException e){
           System.out.println(e.toString());
           return null;
       }
       
    }
    public boolean insertarCliente(Clientes cliente){
        PreparedStatement ps;
        try{
             ps = conexion.prepareStatement("INSERT INTO "
                     + "participantes"
                     + "(nombre,apellido,email,telefono)"
                     + "VALUES (?,?,?,?)");
             ps.setString(1,cliente.getNombre());
             ps.setString(2,cliente.getApellido());
             ps.setString(3,cliente.getEmail());
             ps.setInt(4, cliente.getTelefono());
             ps.execute();
             return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
                
    }
    public boolean actualizarCliente(Clientes cliente){
        PreparedStatement ps;
        try{
            ps = conexion.prepareStatement("UPDATE participantes SET nombre=?, apellido=?, email=?, telefono=? where id=?");
                       
             
             ps.setString(1,cliente.getNombre());
             ps.setString(2,cliente.getApellido());
             ps.setString(3,cliente.getEmail());
             ps.setInt(4, cliente.getTelefono());
             ps.setInt(5, cliente.getId());
             ps.execute();
             return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    public boolean eliminarCliente(int _id){
        PreparedStatement ps;
          try{
            ps = conexion.prepareStatement("DELETE FROM "
                    + "participantes WHERE id=?");
            ps.setInt(1,_id);
            ps.execute();
            return true;
          }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
}