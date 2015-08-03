/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.springtiles.controller;

import com.springmvc.videoteca.spring.service.MasVistoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
        return "/Home/index";
    }
    
    
    @RequestMapping(value = "/nosotros.htm", method = RequestMethod.GET)
    public String formloginCliente() {
        return "/nosotros";
    }

}
