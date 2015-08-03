/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.springmvc.videoteca.springtiles.controller;

import com.springmvc.videoteca.spring.model.Sala;
import com.springmvc.videoteca.spring.service.SalaService;
import com.springmvc.videoteca.spring.validator.SalaFormValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author more-panta
 */
@Controller
@RequestMapping("/Sala")
public class SalaController {
    
    @Autowired
    private SalaFormValidator salaFormValidator;
    
    @Autowired
    private SalaService salaService;
    
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(salaFormValidator);
    }
    
    // Cliente Login
    //Formulario para registrar un cliente
    @RequestMapping(value = "/administrarSala.htm", method = RequestMethod.GET)
    public String showAddSalaForm(Model modelo) {
        modelo.addAttribute("salaForm", new Sala());
        return "Administrador/salaAdmin";
    }
    
    
    @RequestMapping(value = "/saveOrUpdateSala.htm", method = RequestMethod.POST)
    public String saveOrUpdateSala(@ModelAttribute("salaForm") @Validated Sala sala,
            BindingResult result, Model model, final RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "redirect:/Sala/administrarSala.htm";
        } else {
            salaService.saveOrUpdate(sala);
            return "redirect:/Sala/administrarSala.htm";
        }
    }

    
}
