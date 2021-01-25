/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion_config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



/**
 *
 * @author Carlos Andres
 */
public class Conexion {
    
    private static final String RUTA_DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL_DB = "jdbc:mysql://localhost/tienda_bd";
    private static final String USUARIO = "root";
    private static final String CONTRASENA =  "";      
    
    private static Connection conexion = null;
        
    public  Conexion(){
        
        try 
        {
            Class.forName(RUTA_DRIVER);
            conexion  = DriverManager.getConnection(URL_DB, USUARIO, CONTRASENA);
            //JOptionPane.showMessageDialog(null, "Conexion establecida");
            
            
            
        } // fin de try
         catch ( SQLException | ClassNotFoundException excepcionSql )
        {
          excepcionSql.printStackTrace();
        }
        // fin de catch
         
    }
    
    public Connection conectar(){
        
        return conexion;
    }
    
    public void desconectar(){ 
        try{ 
            if(conexion != null) 
                conexion.close(); 
        } catch (SQLException excepcionSql)
        { 
            System.out.println("Error: No se logro cerrar "
                    + "conexion:\n" +excepcionSql); 
        }
    }
    
}
