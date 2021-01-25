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
public class Cliente {
    
    private int idCliente;
    private String nombre;
    private String cedula;
    private String telefono;

    public Cliente() {
    }

    
    public Cliente(String nombreCliente, String cedulaCliente, String telefono){
        this.nombre = nombreCliente;
        this.cedula = cedulaCliente;
        this.telefono = telefono;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombreCliente) {
        this.nombre = nombreCliente;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedulaCliente) {
        this.cedula = cedulaCliente;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    
    
    
}
