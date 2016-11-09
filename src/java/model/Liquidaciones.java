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
 * @author alejo
 */
@Entity
@Table(name = "Liquidaciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Liquidaciones.findAll", query = "SELECT l FROM Liquidaciones l")
    , @NamedQuery(name = "Liquidaciones.findById", query = "SELECT l FROM Liquidaciones l WHERE l.id = :id")
    , @NamedQuery(name = "Liquidaciones.findByEmpleadoid", query = "SELECT l FROM Liquidaciones l WHERE l.empleadoid = :empleadoid")
    , @NamedQuery(name = "Liquidaciones.findByDiasLaborados", query = "SELECT l FROM Liquidaciones l WHERE l.diasLaborados = :diasLaborados")})
public class Liquidaciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "Empleado_id")
    private int empleadoid;
    @Basic(optional = false)
    @Column(name = "dias_laborados")
    private int diasLaborados;

    public Liquidaciones() {
    }

    public Liquidaciones(Integer id) {
        this.id = id;
    }

    public Liquidaciones(Integer id, int empleadoid, int diasLaborados) {
        this.id = id;
        this.empleadoid = empleadoid;
        this.diasLaborados = diasLaborados;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getEmpleadoid() {
        return empleadoid;
    }

    public void setEmpleadoid(int empleadoid) {
        this.empleadoid = empleadoid;
    }

    public int getDiasLaborados() {
        return diasLaborados;
    }

    public void setDiasLaborados(int diasLaborados) {
        this.diasLaborados = diasLaborados;
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
        if (!(object instanceof Liquidaciones)) {
            return false;
        }
        Liquidaciones other = (Liquidaciones) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Liquidaciones[ id=" + id + " ]";
    }
    
}
