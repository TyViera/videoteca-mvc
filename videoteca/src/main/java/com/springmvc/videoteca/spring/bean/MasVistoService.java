/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.bean;

import com.springmvc.videoteca.spring.model.Pelicula;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Component;

/**
 *
 * @author nazaret
 */
@Component
public class MasVistoService {

    public List<Pelicula> estrenos() {
        List<Pelicula> lista;
        Pelicula p;
        lista = new ArrayList<>();
        p = new Pelicula(1, "Algun Humano putin", "Rambo es una popular saga de "
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
        
        lista.add(p);

        p.setId(2);
        p.setNombre("Rambo 2");
        lista.add(p);
        
        p.setId(3);
        p.setNombre("Rambo 3");
        lista.add(p);
        
        p.setId(4);
        p.setNombre("Rambo 4");
        lista.add(p);
        
        p.setId(5);
        p.setNombre("Rambo 5");
        lista.add(p);

        return lista;
    }

    public List<Pelicula> masvistos() {
        List<Pelicula> lista;
        Pelicula p;
        lista = new ArrayList<>();
        p = new Pelicula(1, "Algun Humano putin", "Rambo es una popular saga de "
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
        
        lista.add(p);

        p.setId(2);
        p.setNombre("Rambo 2");
        lista.add(p);
        p.setId(3);
        p.setNombre("Rambo 3");
        lista.add(p);
        
        p.setId(4);
        p.setNombre("Rambo 4");
        lista.add(p);
        
        p.setId(5);
        p.setNombre("Rambo 5");
        lista.add(p);
        Collections.shuffle(lista);
        return lista;
    }

    public List<Pelicula> favoritos() {
        List<Pelicula> lista;
        Pelicula p;
        lista = new ArrayList<>();
        p = new Pelicula(1, "Algun Humano putin", "Rambo es una popular saga de "
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
        
        lista.add(p);

        p.setId(2);
        p.setNombre("Rambo 2");
        lista.add(p);
        
        p.setId(3);
        p.setNombre("Rambo 3");
        lista.add(p);
        
        p.setId(4);
        p.setNombre("Rambo 4");
        lista.add(p);
        
        p.setId(5);
        p.setNombre("Rambo 5");
        lista.add(p);
        Collections.shuffle(lista);
        return lista;
    }

}
