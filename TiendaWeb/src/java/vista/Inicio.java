/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vista;


import controlador.Conexion;
import controlador.ProductoControlador;
import java.util.ArrayList;
import modelo.Producto;
import modelo.Cliente;
import modelo.SubVenta;
import modelo.Venta;
import modelo.Vendedor;



/**
 *
 * @author Carlos Andres
 */
public class Inicio {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //Conexion conexion = new Conexion();
        
        Producto producto = new Producto("leche","colanta",2000);
        Producto producto2 = new Producto("yogurt","alpina",3000);
        Cliente cliente = new Cliente("carlos", "1082881993", "3006963539");
        Vendedor vendedor = new Vendedor("juanvendedor", "45563526", "4234567");
        SubVenta articulo1 = new SubVenta(producto, 1, 2000);
        SubVenta articulo2 = new SubVenta(producto2, 1, 3000);
        
        ArrayList<SubVenta> detalle = new ArrayList<SubVenta>();
        detalle.add(articulo1);
        detalle.add(articulo2);
        
        ProductoControlador controlador_producto = new ProductoControlador();
        controlador_producto.listarProductoControlador();
        controlador_producto.agregarProductoControlador(producto2);
    }
}
