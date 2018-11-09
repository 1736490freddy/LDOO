/*
 * To change this license header, choose License Headers in Project Properties.
 * Autor: Aurelio Hernandez Valdes
 * and open the template in the editor.
 */
package CONTROLADOR;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Consulta extends Conexion {

    public boolean autenticacion(String usuario, String contraseña) {
        PreparedStatement preparado = null;
        ResultSet result = null;

        try {
            String consulta = "select * from usuario where usuario = ? and password = ?";
            preparado = getConexion().prepareStatement(consulta, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            preparado.setString(1, usuario);
            preparado.setString(2, contraseña);
            result = preparado.executeQuery();
            if (!result.next()) {
            } else {
                return true;
            }
        } catch (SQLException e) {
            System.err.println("Error " + e);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (preparado != null) {
                    preparado.close();
                }
                if (result != null) {
                    result.close();
                }
            } catch (SQLException e) {
                System.err.println("ERROR " + e);
            }
        }
        return false;
    }

    public boolean registrar(String usuario, String contraseña) {

        PreparedStatement preparado = null;

        try{
            String consulta = "insert into usuario (usuario, password) values(?,?)";
            preparado = getConexion().prepareStatement(consulta);
            preparado.setString(1, usuario);
            preparado.setString(2, contraseña);
            if(preparado.executeUpdate() == 1){
                return true;
            }
        }catch(SQLException ex){
            System.err.println("Error " + ex );
        }finally{
           try{
               if(getConexion() != null) getConexion().close();
               if(preparado != null) preparado.close();
           }catch(SQLException e){
               System.err.println("Error " + e );
           }       
        }
        return false;
    }
}