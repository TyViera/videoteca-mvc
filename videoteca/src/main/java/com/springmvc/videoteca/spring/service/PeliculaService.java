/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.model.Pelicula;
import java.util.List;

/**
 *
 * @author nazaret
 */
public interface PeliculaService {

    public Pelicula findById(int id);

    public List<Pelicula> findAll();

    public void saveOrUpdate(Pelicula pelicula);
    
    public void merge(Pelicula pelicula);

    public void delete(int id);

    public Pelicula findByNombre(String nombre);
    
    public List<Pelicula>  findByGenero(String genero);
    
    public List<Pelicula> findEstrenos();
    
    
}
