/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ficha1020611
 */
@Entity
@Table(name = "Sugerencias")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sugerencias.findAll", query = "SELECT s FROM Sugerencias s")
    , @NamedQuery(name = "Sugerencias.findById", query = "SELECT s FROM Sugerencias s WHERE s.id = :id")
    , @NamedQuery(name = "Sugerencias.findByNombrePelicula", query = "SELECT s FROM Sugerencias s WHERE s.nombrePelicula = :nombrePelicula")})
public class Sugerencias implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nombre_pelicula")
    @Temporal(TemporalType.DATE)
    private Date nombrePelicula;
    @Basic(optional = false)
    @Lob
    @Column(name = "descripcion")
    private String descripcion;
    @JoinColumn(name = "Cliente_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Clientes clienteid;

    public Sugerencias() {
    }

    public Sugerencias(Integer id) {
        this.id = id;
    }

    public Sugerencias(Integer id, Date nombrePelicula, String descripcion) {
        this.id = id;
        this.nombrePelicula = nombrePelicula;
        this.descripcion = descripcion;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getNombrePelicula() {
        return nombrePelicula;
    }

    public void setNombrePelicula(Date nombrePelicula) {
        this.nombrePelicula = nombrePelicula;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Clientes getClienteid() {
        return clienteid;
    }

    public void setClienteid(Clientes clienteid) {
        this.clienteid = clienteid;
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
        if (!(object instanceof Sugerencias)) {
            return false;
        }
        Sugerencias other = (Sugerencias) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Sugerencias[ id=" + id + " ]";
    }
    
}
