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
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
    
    @RequestMapping(value = "/administrarSala.htm", method = RequestMethod.GET)
    public String showAddSalaForm(Model modelo) {
        modelo.addAttribute("salaUnit", new Sala());
        modelo.addAttribute("salaList", salaService.findAll());
        return "Administrador/salaAdmin";
    }
    
    @RequestMapping(value = "/administrarSala.htm", method = RequestMethod.POST)
    public String loadSalaForm(Model modelo) {
        modelo.addAttribute("salaUnit", new Sala());
        modelo.addAttribute("salaList", salaService.findAll());
        return "Administrador/salaAdmin";
    }
    
    @RequestMapping(value = "/saveOrUpdate.htm", method = RequestMethod.POST)
    public @ResponseBody void addSala(@RequestBody Sala sala) {
        salaService.saveOrUpdate(sala);
    }
    
    @RequestMapping(value = "/remove/{id}", method = RequestMethod.POST)
//    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public @ResponseBody void removeSala(@PathVariable("id") int id) {
        salaService.delete(id);
    }
    
    
    @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
    public @ResponseBody Sala getSalaJSON(@PathVariable("id") int id) {
        return salaService.findById(id);
    }
}
