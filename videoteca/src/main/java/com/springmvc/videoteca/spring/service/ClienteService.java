/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.model.Cliente;
import java.util.List;

/**
 *
 * @author nazaret
 */
public interface ClienteService {

    public Cliente findById(int id);

    public List<Cliente> findAll();

    public void saveOrUpdate(Cliente cliente);

    public void delete(int id);

}
