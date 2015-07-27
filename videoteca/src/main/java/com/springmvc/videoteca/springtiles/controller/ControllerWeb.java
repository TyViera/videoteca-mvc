/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.springmvc.videoteca.springtiles.controller;

/**
 *
 * @author more-panta
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ControllerWeb {
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
   public String index() {
       return "login";
   }

   @RequestMapping("/login.htm")
   public String redirect1() {
       return "login";
   }
   @RequestMapping("/bienvenido.htm")
   public String redirect2() {
       return "bienvenido";
   }
   
   @RequestMapping("/nosotros.htm")
   public String redirect4() {
       return "nosotros";
   }
   
   @RequestMapping("/registrar.htm")
   public String redirect3() {
       return "registrarse";
   }
   
   @RequestMapping("/estrenos.htm")
   public String redirect5() {
       return "estrenos";
   }
   
}