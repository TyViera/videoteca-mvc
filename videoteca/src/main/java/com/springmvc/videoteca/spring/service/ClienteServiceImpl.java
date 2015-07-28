/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.dao.ClienteDAO;
import com.springmvc.videoteca.spring.model.Cliente;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("clienteService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ClienteServiceImpl implements ClienteService {

    @Autowired
    private ClienteDAO clienteDAO;
    
    @Override
    @Transactional
    public Cliente findById(int id) {
        return clienteDAO.findById(id);
    }

    @Override
    @Transactional
    public List<Cliente> findAll() {
        return clienteDAO.findAll();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void saveOrUpdate(Cliente cliente) {
        Cliente act;
        act = clienteDAO.findById(cliente.getId());
        if(act == null){
            clienteDAO.save(cliente);
        }else{
            clienteDAO.update(cliente);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void delete(int id) {
        clienteDAO.delete(id);
    }
    
}
