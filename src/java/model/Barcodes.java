/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ficha1020611
 */
@Entity
@Table(name = "Barcodes")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Barcodes.findAll", query = "SELECT b FROM Barcodes b"),
    @NamedQuery(name = "Barcodes.findById", query = "SELECT b FROM Barcodes b WHERE b.id = :id"),
    @NamedQuery(name = "Barcodes.findByNombre", query = "SELECT b FROM Barcodes b WHERE b.nombre = :nombre"),
    @NamedQuery(name = "Barcodes.findByDescripcion", query = "SELECT b FROM Barcodes b WHERE b.descripcion = :descripcion"),
    @NamedQuery(name = "Barcodes.findByBarcode", query = "SELECT b FROM Barcodes b WHERE b.barcode = :barcode")})
public class Barcodes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @Column(name = "barcode")
    private String barcode;

    public Barcodes() {
    }

    public Barcodes(Integer id) {
        this.id = id;
    }

    public Barcodes(Integer id, String nombre, String descripcion, String barcode) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.barcode = barcode;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Barcodes)) {
            return false;
        }
        Barcodes other = (Barcodes) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Barcodes[ id=" + id + " ]";
    }
    
}
