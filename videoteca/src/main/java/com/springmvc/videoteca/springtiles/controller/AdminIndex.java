/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.springmvc.videoteca.springtiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author more-panta
 */
@Controller
@RequestMapping("/Administrador/")
public class AdminIndex {
    
    @RequestMapping
    public String getIndexPage() {
        return "Administrador/index";
    }
    
}
