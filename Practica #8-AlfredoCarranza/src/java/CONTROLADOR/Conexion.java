package CONTROLADOR;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
 
    private String USERNAME = "root";
    private String PASSWORD = "1234";
    private String HOST = "localhost";
    private String PORT = "1527";
    private String DATABASE = "login";
    private String CLASSNAME = "java.sql.Driver";
    private String URL ="jdbc:derby://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection conexion;
    
    
    public Conexion() throws SQLException{
        try{
            Class.forName(CLASSNAME);
            conexion = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e){
            System.err.println("Error " + e);
        } 
    }
    
    public Connection getConexion(){
        return conexion;      
    }
    
    public static void main(String[] args) throws SQLException{
        Conexion conexion = new Conexion();
    }
}