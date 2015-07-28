/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.dao;

import com.springmvc.videoteca.spring.model.Cliente;
import java.util.List;

/**
 *
 * @author nazaret
 */
public interface ClienteDAO {

    public Cliente findById(Integer id);

    public List<Cliente> findAll();

    public void save(Cliente cliente);

    public void update(Cliente cliente);

    public void delete(Integer id);

}
