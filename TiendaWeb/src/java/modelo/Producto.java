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
    private String nombre;
    private String marca;
    private Categoria categoria;
    private float precio;

    public Producto(){
        
    }
    
    public Producto(String nombre, String marca, float precio, Categoria categoria) {
        this.nombre = nombre;
        this.marca = marca;
        this.categoria = categoria;
        this.precio = precio;
    }
    
    public Producto(int idProducto, String nombreProducto, String marca, float precio) {
        this.idProducto = idProducto;
        this.nombre = nombreProducto;
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
        return nombre;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombre = nombreProducto;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }
    
    
}
