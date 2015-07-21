package com.springmvc.videoteca.spring.model;
// Generated 19/07/2015 03:21:56 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Peliculasala generated by hbm2java
 */
@Entity
@Table(name="peliculasala"
    ,schema="public"
)
public class Peliculasala  implements java.io.Serializable {


     private int id;
     private Pelicula pelicula;
     private Sala sala;
     private Set<Reserva> reservas = new HashSet<Reserva>(0);

    public Peliculasala() {
    }

	
    public Peliculasala(int id, Pelicula pelicula, Sala sala) {
        this.id = id;
        this.pelicula = pelicula;
        this.sala = sala;
    }
    public Peliculasala(int id, Pelicula pelicula, Sala sala, Set<Reserva> reservas) {
       this.id = id;
       this.pelicula = pelicula;
       this.sala = sala;
       this.reservas = reservas;
    }
   
     @Id 

    
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="peliculaid", nullable=false)
    public Pelicula getPelicula() {
        return this.pelicula;
    }
    
    public void setPelicula(Pelicula pelicula) {
        this.pelicula = pelicula;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="salaid", nullable=false)
    public Sala getSala() {
        return this.sala;
    }
    
    public void setSala(Sala sala) {
        this.sala = sala;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="peliculasala")
    public Set<Reserva> getReservas() {
        return this.reservas;
    }
    
    public void setReservas(Set<Reserva> reservas) {
        this.reservas = reservas;
    }




}


