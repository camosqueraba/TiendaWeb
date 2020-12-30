/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Carlos Andres
 */
public class Conexion {
    
    private static final String RUTA_DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL_DB = "jdbc:mysql://localhost/TiendaBD";
    private static final String USUARIO = "root";
    private static final String CONTRASEÑA =  "";      
    
    private Connection conexion = null;
        
    public Connection Conectar(){
        
        try 
        {
            Class.forName(RUTA_DRIVER);
            conexion  = DriverManager.getConnection(URL_DB, USUARIO, CONTRASEÑA);
            //JOptionPane.showMessageDialog(null, "Conexion establecida");
            
            
        } // fin de try
         catch ( SQLException excepcionSql )
        {
          excepcionSql.printStackTrace();
        } // fin de catch
          catch ( ClassNotFoundException noEncontroClase )
        {
          noEncontroClase.printStackTrace();
        } // fin de catch
        
        return conexion;
 
    }

    
}
