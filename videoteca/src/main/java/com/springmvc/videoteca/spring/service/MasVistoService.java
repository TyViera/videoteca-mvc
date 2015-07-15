/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.bean.Pelicula;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author nazaret
 */
@Service
public class MasVistoService {

    public List<Pelicula> estrenos() {
        List<Pelicula> lista;
        lista = new ArrayList<>();
        lista.add(new Pelicula(1, "Rambo", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(2, "Rambo2", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(3, "Rambo3", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(4, "Rambo4", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(5, "Rambo5", "Silvester Stalone", "Alguien"));

        return lista;
    }

    public List<Pelicula> masvistos() {
        List<Pelicula> lista;
        lista = new ArrayList<>();
        lista.add(new Pelicula(1, "Rambo", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(2, "Rambo2", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(3, "Rambo3", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(4, "Rambo4", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(5, "Rambo5", "Silvester Stalone", "Alguien"));
        Collections.shuffle(lista);
        return lista;
    }

    public List<Pelicula> favoritos() {
        List<Pelicula> lista;
        lista = new ArrayList<>();
        lista.add(new Pelicula(1, "Rambo", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(2, "Rambo2", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(3, "Rambo3", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(4, "Rambo4", "Silvester Stalone", "Alguien"));
        lista.add(new Pelicula(5, "Rambo5", "Silvester Stalone", "Alguien"));
        Collections.shuffle(lista);
        return lista;
    }

}
