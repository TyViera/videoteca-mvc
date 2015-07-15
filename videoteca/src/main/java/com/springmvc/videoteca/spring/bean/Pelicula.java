/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.bean;

/**
 *
 * @author nazaret
 */
public class Pelicula {
 
    private Integer id;
    private String nombre;
    private String actores;
    private String director;

    public Pelicula() {
    }

    public Pelicula(Integer id, String nombre, String actores, String director) {
        this.id = id;
        this.nombre = nombre;
        this.actores = actores;
        this.director = director;
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

    public String getActores() {
        return actores;
    }

    public void setActores(String actores) {
        this.actores = actores;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }
    
    
    
}
