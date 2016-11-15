/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author alejo
 */
@Entity
@Table(name = "Peliculas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Peliculas.findAll", query = "SELECT p FROM Peliculas p"),
    @NamedQuery(name = "Peliculas.findById", query = "SELECT p FROM Peliculas p WHERE p.id = :id"),
    @NamedQuery(name = "Peliculas.findByNombre", query = "SELECT p FROM Peliculas p WHERE p.nombre = :nombre"),
    @NamedQuery(name = "Peliculas.findByPoster", query = "SELECT p FROM Peliculas p WHERE p.poster = :poster"),
    @NamedQuery(name = "Peliculas.findByDuracion", query = "SELECT p FROM Peliculas p WHERE p.duracion = :duracion"),
    @NamedQuery(name = "Peliculas.findByEstado", query = "SELECT p FROM Peliculas p WHERE p.estado = :estado"),
    @NamedQuery(name = "Peliculas.findByEjemplar", query = "SELECT p FROM Peliculas p WHERE p.ejemplar = :ejemplar"),
    @NamedQuery(name = "Peliculas.findByDescripcion", query = "SELECT p FROM Peliculas p WHERE p.descripcion = :descripcion")})
public class Peliculas implements Serializable {

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
    @Column(name = "poster")
    private String poster;
    @Basic(optional = false)
    @Column(name = "duracion")
    private int duracion;
    @Basic(optional = false)
    @Column(name = "estado")
    private String estado;
    @Basic(optional = false)
    @Column(name = "ejemplar")
    private int ejemplar;
    @Basic(optional = false)
    @Column(name = "descripcion")
    private String descripcion;
    @JoinColumn(name = "genero_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Generos generoId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "peliculaid")
    private Collection<Prestamos> prestamosCollection;

    public Peliculas() {
    }

    public Peliculas(Integer id) {
        this.id = id;
    }

    public Peliculas(Integer id, String nombre, String poster, int duracion, String estado, int ejemplar, String descripcion) {
        this.id = id;
        this.nombre = nombre;
        this.poster = poster;
        this.duracion = duracion;
        this.estado = estado;
        this.ejemplar = ejemplar;
        this.descripcion = descripcion;
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

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getEjemplar() {
        return ejemplar;
    }

    public void setEjemplar(int ejemplar) {
        this.ejemplar = ejemplar;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Generos getGeneroId() {
        return generoId;
    }

    public void setGeneroId(Generos generoId) {
        this.generoId = generoId;
    }

    @XmlTransient
    public Collection<Prestamos> getPrestamosCollection() {
        return prestamosCollection;
    }

    public void setPrestamosCollection(Collection<Prestamos> prestamosCollection) {
        this.prestamosCollection = prestamosCollection;
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
        if (!(object instanceof Peliculas)) {
            return false;
        }
        Peliculas other = (Peliculas) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Peliculas[ id=" + id + " ]";
    }

}
