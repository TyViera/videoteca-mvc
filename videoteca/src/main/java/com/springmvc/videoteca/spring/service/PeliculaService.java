/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.model.Pelicula;
import java.util.Date;
import org.springframework.stereotype.Service;

/**
 *
 * @author nazaret
 */
@Service
public class PeliculaService implements IPeliculaService {

    @Override
    public Pelicula buscarPelicula(Pelicula p) {
        Pelicula p2;
        p2 = new Pelicula(p.getId(), "Algun Humano putin", "Rambo es una popular saga de "
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
                "Silvester Stalone", "180 minutos", "+14", "EEUU", new Date(), "Rambo1.jpg",
                "https://www.youtube.com/embed/bVUCdy36TKE");
        return p2;
    }

}
