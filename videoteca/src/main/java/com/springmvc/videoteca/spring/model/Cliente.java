package com.springmvc.videoteca.spring.model;
// Generated 19/07/2015 12:42:23 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Cliente generated by hbm2java
 */
@Entity
@Table(name="cliente"
    ,schema="public"
)
public class Cliente  implements java.io.Serializable {


     private int id;
     private String nombre;
     private String dni;
     private String nick;
     private String email;
     private String password;
     private String celular;
     private Set reservas = new HashSet(0);

    public Cliente() {
    }
	
    public Cliente(int id, String nombre, String dni, String nick, String email, String password, String celular) {
        this.id = id;
        this.nombre = nombre;
        this.dni = dni;
        this.nick = nick;
        this.email = email;
        this.password = password;
        this.celular = celular;
    }
    
    public Cliente(int id, String nombre, String dni, String nick, String email, String password, String celular, Set reservas) {
       this.id = id;
       this.nombre = nombre;
       this.dni = dni;
       this.nick = nick;
       this.email = email;
       this.password = password;
       this.celular = celular;
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

    
    @Column(name="nombre", nullable=false, length=50)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    
    @Column(name="dni", nullable=false, length=8)
    public String getDni() {
        return this.dni;
    }
    
    public void setDni(String dni) {
        this.dni = dni;
    }

    
    @Column(name="nick", nullable=false, length=20)
    public String getNick() {
        return this.nick;
    }
    
    public void setNick(String nick) {
        this.nick = nick;
    }

    
    @Column(name="email", nullable=false, length=200)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    
    @Column(name="password", nullable=false, length=20)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    
    @Column(name="celular", nullable=false, length=9)
    public String getCelular() {
        return this.celular;
    }
    
    public void setCelular(String celular) {
        this.celular = celular;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="cliente")
    public Set getReservas() {
        return this.reservas;
    }
    
    public void setReservas(Set reservas) {
        this.reservas = reservas;
    }




}


