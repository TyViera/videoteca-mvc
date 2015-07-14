/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.springtiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author nazaret
 */
@Controller
@RequestMapping("/Home/")
public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public String inicio() {
        return "/Home/index";
    }
}
