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
public class Producto {
    
    private int idProducto;
    private String nombreProducto;
    private String marca;
    private String categoria;
    private float precio;

    public Producto(){
        
    }
    
    public Producto(String nombreProducto, String marca, float precio) {
        this.nombreProducto = nombreProducto;
        this.marca = marca;
        this.categoria = categoria;
        this.precio = precio;
    }
    
    public Producto(int idProducto, String nombreProducto, String marca, float precio) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.marca = marca;
        this.categoria = categoria;
        this.precio = precio;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

   

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }
    
    
}
