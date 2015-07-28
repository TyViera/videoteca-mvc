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
public interface MasVistoService {
 
    public List<Pelicula> estrenos();
    
    public List<Pelicula> masvistos();
    
    public List<Pelicula> favoritos();
    
}
