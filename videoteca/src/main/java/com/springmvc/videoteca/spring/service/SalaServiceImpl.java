/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.dao.SalaDAO;
import com.springmvc.videoteca.spring.model.Sala;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("SalaService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class SalaServiceImpl implements SalaService{

    @Autowired
    private SalaDAO salaDAO;
    
    @Override
    @Transactional
    public Sala findById(int id) {
        return salaDAO.findById(id);
    }

    @Override
    @Transactional
    public List<Sala> findAll() {
        return salaDAO.findAll();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void saveOrUpdate(Sala sala) {
        Sala act;
        act = salaDAO.findById(sala.getId());
        if(act == null){
            salaDAO.save(sala);
        }else{
            salaDAO.update(sala);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void delete(int id) {
        salaDAO.delete(id);
    }
    
}
