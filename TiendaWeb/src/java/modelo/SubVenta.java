/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Carlos Andres
 */
public class SubVenta {
    
    private int idSubVenta;
    private Producto producto;
    private int cantidad;
    private float subImporte;

    public SubVenta(Producto producto, int cantidad, float subImporte) {
        this.producto = producto;
        this.cantidad = cantidad;
        this.subImporte = subImporte;
    }

    public int getIdSubVenta() {
        return idSubVenta;
    }

    public void setIdSubVenta(int idSubVenta) {
        this.idSubVenta = idSubVenta;
    }

    
    
    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getSubImporte() {
        return subImporte;
    }

    public void setSubImporte(float subImporte) {
        this.subImporte = subImporte;
    }
    
    
    
}
