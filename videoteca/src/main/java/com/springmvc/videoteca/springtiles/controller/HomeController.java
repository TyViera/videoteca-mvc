/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.springtiles.controller;

import com.springmvc.videoteca.spring.bean.Pelicula;
import com.springmvc.videoteca.spring.service.MasVistoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author nazaret
 */
@Controller
@RequestMapping("/Home/")
public class HomeController {

    @Autowired
    private MasVistoService masVistoService;

    @RequestMapping(method = RequestMethod.GET)
    public String inicio(Model modelo) {
        modelo.addAttribute("estrenos", masVistoService.estrenos());
        modelo.addAttribute("masvistos", masVistoService.masvistos());
        modelo.addAttribute("favoritos", masVistoService.favoritos());
        return "/Home/index";
    }

    @RequestMapping(value = "/pelicula.htm", method = RequestMethod.GET)
    public ModelAndView pelicula(Model modelo, @ModelAttribute("pelicula") Pelicula p) {
        ModelAndView mv;
        mv = new ModelAndView();
        //Buscar pelicula por id en la base de datos con alguna clase de servicio
        p.setActores("Arnold Switgnager");
        p.setDirector("Algun humano");
        p.setNombre("Terminator");
        mv.setViewName("/Home/pelicula");
        mv.addObject("pelicula", p);
        return mv;
    }

}
