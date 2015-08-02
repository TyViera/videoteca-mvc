/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.dao.PeliculaDAO;
import com.springmvc.videoteca.spring.model.Pelicula;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author nazaret
 */
@Service("peliculaService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PeliculaServiceImpl implements PeliculaService {

    /*@Override
    public Pelicula buscarPeliculaById(Integer id) {
        Pelicula p2;
        p2 = new Pelicula(id, "Algun Humano putin", "Rambo es una popular saga de "
                + "películas de acción protagonizadas por Sylvester Stallone. "
                + "Está basada en los personajes creados por el novelista David "
                + "Morrell en su novela First blood (‘primera sangre’), "
                + "que también es el título original de la primera película de "
                + "la saga. Las películas se centran en un veterano de la Guerra"
                + " de Vietnam, John James Rambo, sumamente experto en todas "
                + "las técnicas de supervivencia y guerra de guerrillas. La saga"
                + " consta de cuatro películas: First Blood (Rambo: primera sangre,"
                + " o Acorralado, 1982), Rambo: First Blood Part II "
                + "(Rambo: acorralado parte II, 1985), Rambo III (Rambo III, 1988) "
                + "y Rambo IV John Rambo (2008).\n"
                + "A finales de 2014, el actor Sylvester Stallone confirmó que ya "
                + "se encuentra completo el guion de la quinta entrega de Rambo, "
                + "la cual llevara por nombre Rambo: Last Blood.1 El rodaje de la "
                + "cinta se realizara en Filadelfia y estará a cargo de Ryan Coogler.",
                "Rambo",
                "Silvester Stalone", "180 minutos", "+14", "EEUU", new Date(), 
                "http://localhost:81/Imgs_Videoteca/1.png",
                "https://www.youtube.com/embed/bVUCdy36TKE");
        return p2;
    }*/

    @Autowired
    private PeliculaDAO peliculaDAO;
    
    @Override
    @Transactional
    public Pelicula findById(int id) {
        return peliculaDAO.findById(id);
    }

    @Override
    @Transactional
    public List<Pelicula> findAll() {
        return peliculaDAO.findAll();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void saveOrUpdate(Pelicula pelicula) {
        Pelicula act;
        act = peliculaDAO.findById(pelicula.getId());
        if(act == null){
            peliculaDAO.save(pelicula);
        }else{
            peliculaDAO.update(pelicula);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void merge(Pelicula pelicula){
        peliculaDAO.merge(pelicula);
    }
    
    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void delete(int id) {
        peliculaDAO.delete(id);
    }

}
