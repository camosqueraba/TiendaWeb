/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.Producto;

/**
 *
 * @author carlospc
 */
public class ProductoDao {
    
    private Statement instruccion;
    private ResultSet conjuntoResultados;
    private Connection conexion_actual;
    private Conexion conexion;
    private final String CONSULTA_LISTAR_PRODUCTOS = "SELECT * FROM Producto";
    private final String CONSULTA_CREAR_PRODUCTO = "INSERT INTO `Producto`" +
            "(`idProducto`, `nombreProducto`, `marca`, `precio`) VALUES (NULL,"+
            "?, ?, ?);";
    
    public ProductoDao(){
        
        instruccion = null;
        conjuntoResultados = null;
        conexion = new Conexion();
        conexion_actual = conexion.Conectar();
    }   
    
    public ArrayList<Producto> listarProductos(){
       
        ArrayList productos = new ArrayList();
        Producto producto = new Producto();
        String consultaSql = CONSULTA_LISTAR_PRODUCTOS;
        
        try{
            //instruccion = conexion_actual.prepareStatement(consultaSql);
            instruccion = conexion_actual.createStatement();
            conjuntoResultados = instruccion.executeQuery(consultaSql);
            ResultSetMetaData metaDatos = conjuntoResultados.getMetaData();
            
            int numeroDeColumnas = metaDatos.getColumnCount();
            
            while ( conjuntoResultados.next() )
            {
                productos.add(new Producto(conjuntoResultados.getInt(1),
                                           conjuntoResultados.getString(2),
                                           conjuntoResultados.getString(3),
                                           
                                           conjuntoResultados.getFloat(4)));
            }
        }
        catch (SQLException exepcionSql){
            
        }
        
        return productos;
    }
    
    public void crearProducto(Producto producto){
        int resultado = 0;
        try{
            PreparedStatement query_crear_producto = 
            conexion_actual.prepareStatement(CONSULTA_CREAR_PRODUCTO);
            
            query_crear_producto.setString(1, producto.getNombreProducto());
            query_crear_producto.setString(2, producto.getMarca());
            query_crear_producto.setFloat(3, producto.getPrecio());
            
            
            
            resultado =  query_crear_producto.executeUpdate();
            
        }
        catch(SQLException exepcionSql){
        
        }
        
    }
    
}
