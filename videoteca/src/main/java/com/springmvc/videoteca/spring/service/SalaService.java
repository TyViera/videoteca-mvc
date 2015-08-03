/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.springmvc.videoteca.spring.service;

import com.springmvc.videoteca.spring.model.Sala;
import java.util.List;

public interface SalaService {
    
    public Sala findById(int id);

    public List<Sala> findAll();

    public void saveOrUpdate(Sala sala);

    public void delete(int id);

    
}
