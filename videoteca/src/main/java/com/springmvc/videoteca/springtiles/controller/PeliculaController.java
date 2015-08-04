/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.springtiles.controller;

import com.springmvc.videoteca.spring.model.Pelicula;
import com.springmvc.videoteca.spring.service.PeliculaService;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author nazaret
 */
@Controller
@RequestMapping("/Pelicula/")
public class PeliculaController {

    @Autowired
    private PeliculaService peliculaService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model modelo, @RequestParam(value = "genero", required = false) String genero) {

        if (genero == null) {
            modelo.addAttribute("peliculas", peliculaService.findAll());
            return "/Pelicula/listAll";
        } else {
            modelo.addAttribute("peliculas", peliculaService.findByGenero(genero));
            return "/Pelicula/verPorGenero";
        }
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String ver(Model modelo, @PathVariable("id") Integer id) {
        Pelicula pelicula;
        pelicula = peliculaService.findById(id);
        if (pelicula == null) {
            modelo.addAttribute("msg", "Pelicula no encontrada");
        }
        modelo.addAttribute("pelicula", pelicula);
        return "/Pelicula/mostrarPelicula";
    }

    // show update form
    @RequestMapping(value = "/{id}/update", method = RequestMethod.GET)
    public String showUpdateUserForm(@PathVariable("id") int id, Model model) {

        Pelicula pelicula = peliculaService.findById(id);
        model.addAttribute("peliculaForm", pelicula);
        return "Pelicula/add";

    }

    //Formulario para registrar
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String mostrarFormularioAgregarModificar(Model modelo) {
        modelo.addAttribute("peliculaForm", new Pelicula());
        return "Pelicula/add";
    }

    @RequestMapping(value = "/registrar", method = RequestMethod.POST)
    public String saveOrUpdate(@ModelAttribute("peliculaForm") @Validated Pelicula pelicula, BindingResult result, Model model, final RedirectAttributes redirectAttributes) {
        String rutaGuardar;
        if (result.hasErrors()) {
            System.out.println(result);
            return "Pelicula/add";
        } else {
            if (pelicula.esNuevo()) {
                redirectAttributes.addFlashAttribute("msg", "Pelicula agregado correctamente!");
            } else {
                redirectAttributes.addFlashAttribute("msg", "Pelicula modificado correctamente!");
            }
            rutaGuardar = "C:\\xampp\\htdocs\\Imgs_Videoteca\\";
            peliculaService.saveOrUpdate(pelicula);
            try {
                guardarImagenPelicula(pelicula, rutaGuardar);
                peliculaService.merge(pelicula);
            } catch (IOException ex) {
                Logger.getLogger(PeliculaController.class.getName()).log(Level.SEVERE, null, ex);
            }
            return "redirect:/Pelicula/" + pelicula.getId();
        }
    }

    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
    public String delete(@PathVariable("id") int id, final RedirectAttributes redirectAttributes) {

        peliculaService.delete(id);
        redirectAttributes.addFlashAttribute("msg", "¡Pelicula borrada con exito!");
        redirectAttributes.addFlashAttribute("css", "success");

        return "redirect:/Pelicula/";

    }

    private void guardarImagenPelicula(Pelicula pelicula, String rutaGuardar) throws FileNotFoundException, IOException {
        FileOutputStream fos;
        String extension;
        try {
            if (pelicula != null) {
                extension = pelicula.getImagenPeli().getOriginalFilename();
                extension = extension.substring(extension.lastIndexOf("."));

                rutaGuardar += pelicula.getId() + extension;
                pelicula.setImagen("http://localhost:81/Imgs_Videoteca/" + pelicula.getId() + extension);

                fos = new FileOutputStream(rutaGuardar);
                fos.write(pelicula.getImagenPeli().getBytes());
                fos.close();
            }
        } catch (java.lang.StringIndexOutOfBoundsException ex) {
            //Ignore
        }
    }

}
