/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.ArrayList;
import modelo.Producto;
import modeloDAO.ProductoDao;

/**
 *
 * @author carlospc
 */
public class ProductoControlador {
    
    ProductoDao productoDao = new ProductoDao();
    ArrayList<Producto> productos = new ArrayList<Producto>();
    
    public void listarProductoControlador(){
        
        productos = productoDao.listarProductos();
        
        for (int i = 0; i < productos.size(); i++) {
            
            System.out.println(productos.get(i).getIdProducto());
            System.out.println(productos.get(i).getNombreProducto());
            System.out.println(productos.get(i).getMarca());
            System.out.println(productos.get(i).getPrecio());
            
        }
    }
        
    public void agregarProductoControlador(Producto producto){
        
        productoDao.crearProducto(producto);
    }
        
    
    
}
