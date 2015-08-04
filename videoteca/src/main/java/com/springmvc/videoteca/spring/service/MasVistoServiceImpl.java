/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.dao.PeliculaDAO;
import com.springmvc.videoteca.spring.model.Pelicula;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author nazaret
 */
@Service("masVistoService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class MasVistoServiceImpl implements MasVistoService{

    @Autowired
    private PeliculaDAO peliculaDAO;
    
    @Override
    @Transactional
    public List<Pelicula> estrenos() {
        return peliculaDAO.findEstrenos();
    }

    @Override
    @Transactional
    public List<Pelicula> masvistos() {
        List<Pelicula> lista;
        lista = estrenos();
        Collections.shuffle(lista);
        return lista;
    }

    @Override
    @Transactional
    public List<Pelicula> favoritos() {
        List<Pelicula> lista;
        lista = estrenos();
        Collections.shuffle(lista);
        return lista;
    }

}
