/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import conexion_config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Cliente;

/**
 *
 * @author Carlos Andres
 */
public class ClienteDao {
    
    private final Conexion conexion;
    private Connection conexion_actual = null;
    private Statement instruccion = null;
    private ResultSet conjuntoResultados = null;

    public ClienteDao() {
        conexion = new Conexion();
    }
    
    public List listar() throws SQLException{
        
        List<Cliente> clientes = new ArrayList<>();
        String consultaSql = "SELECT * FROM Cliente";
        
        try
        {
            conexion_actual = conexion.conectar();
            instruccion = conexion_actual.createStatement();
            conjuntoResultados = instruccion.executeQuery(consultaSql);
            
            while (conjuntoResultados.next()) { 
                Cliente cliente_actual = new Cliente();
                cliente_actual.setIdCliente(conjuntoResultados.getByte("id_cliente"));
                cliente_actual.setNombre(conjuntoResultados.getString("nombre"));
                cliente_actual.setCedula(conjuntoResultados.getString("cedula"));
                cliente_actual.setTelefono(conjuntoResultados.getString("telefono"));
                
                clientes.add(cliente_actual);
            }
        }
         catch ( SQLException excepcionSql )
        {
          excepcionSql.printStackTrace();
        }
        // fin de catch
              
        return clientes;
    }
}
