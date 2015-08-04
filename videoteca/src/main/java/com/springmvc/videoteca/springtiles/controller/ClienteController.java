/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.springtiles.controller;

import com.springmvc.videoteca.spring.model.Cliente;
import com.springmvc.videoteca.spring.model.Cliente;
import com.springmvc.videoteca.spring.service.ClienteService;
import com.springmvc.videoteca.spring.validator.ClienteFormValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
@RequestMapping("/Cliente/")
public class ClienteController {

    @Autowired
    private ClienteFormValidator clienteFormValidator;

    @Autowired
    private ClienteService clienteService;

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(clienteFormValidator);
    }

    //Listar todos los clientes
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model modelo) {
        modelo.addAttribute("clientes", clienteService.findAll());
        return "Cliente/listarClientes";
    }

    //Formulario para registrar un cliente
    @RequestMapping(value = "/registrar.htm", method = RequestMethod.GET)
    public String showAddClienteForm(Model modelo) {
        modelo.addAttribute("clienteForm", new Cliente());
        return "Cliente/registrarse";
    }

    // Mostrar cliente
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String showUser(@PathVariable("id") int id, Model model) {

        Cliente cliente = clienteService.findById(id);
        if (cliente == null) {
            model.addAttribute("msg", "Cliente no encontrado");
        }
        model.addAttribute("cliente", cliente);

        return "Cliente/mostrar";

    }

    //Registrar Cliente
    @RequestMapping(value = "/registrar.htm", method = RequestMethod.POST)
    public String saveOrUpdateCliente(@ModelAttribute("clienteForm") @Validated Cliente cliente,
            BindingResult result, Model model, final RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "Cliente/registrarse";
        } else {

            if (cliente.esNuevo()) {
                redirectAttributes.addFlashAttribute("msg", "Cliente agregado correctamente!");
            } else {
                redirectAttributes.addFlashAttribute("msg", "Cliente modificado correctamente!");
            }

            clienteService.saveOrUpdate(cliente);
            return "redirect:/Cliente/" + cliente.getId();
        }
    }

    // show update form
    @RequestMapping(value = "/{id}/update", method = RequestMethod.GET)
    public String showUpdateUserForm(@PathVariable("id") int id, Model model) {

        Cliente cliente = clienteService.findById(id);
        model.addAttribute("clienteForm", cliente);
        return "Cliente/registrarse";

    }

    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
    public String delete(@PathVariable("id") int id, final RedirectAttributes redirectAttributes) {

        clienteService.delete(id);
        redirectAttributes.addFlashAttribute("msg", "¡Cliente borrada con exito!");
        redirectAttributes.addFlashAttribute("css", "success");

        return "redirect:/Cliente/";

    }

    // Cliente Login
    @RequestMapping(value = "/login.htm", method = RequestMethod.GET)
    public String formloginCliente() {
        return "Cliente/login";
    }

    @RequestMapping(value = "/login.htm", method = RequestMethod.POST)
    public String accesoCliente() {
        return "Cliente/login";
    }
}
