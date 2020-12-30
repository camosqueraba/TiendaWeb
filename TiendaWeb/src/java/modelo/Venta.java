/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author Carlos Andres
 */
public class Venta {
    
    private int idVenta;
    private Cliente cliente;
    private ArrayList<SubVenta> subventa;
    private Vendedor vendedor;
    private float importeTotal;

    public Venta(Cliente cliente, ArrayList<SubVenta> subventa, Vendedor vendedor, float importeTotal) {
        this.cliente = cliente;
        this.subventa = subventa;
        this.vendedor = vendedor;
        this.importeTotal = importeTotal;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    
    
    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public ArrayList<SubVenta> getSubventa() {
        return subventa;
    }

    public void setSubventa(ArrayList<SubVenta> subventa) {
        this.subventa = subventa;
    }

    public Vendedor getVendedor() {
        return vendedor;
    }

    public void setVendedor(Vendedor vendedor) {
        this.vendedor = vendedor;
    }

    public float getImporteTotal() {
        return importeTotal;
    }

    public void setImporteTotal(float importeTotal) {
        this.importeTotal = importeTotal;
    }
    
    
}
