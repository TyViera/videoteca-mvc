/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.dao;

import com.springmvc.videoteca.spring.model.Pelicula;
import java.util.List;

/**
 *
 * @author nazaret
 */
public interface PeliculaDAO {
 
    public Pelicula findById(Integer id);

    public List<Pelicula> findAll();

    public void save(Pelicula pelicula);

    public void update(Pelicula pelicula);

    public void delete(Integer id);
    
}
