/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.springmvc.videoteca.spring.dao;

import com.springmvc.videoteca.spring.model.Sala;
import java.util.List;

/**
 *
 * @author more-panta
 */
public interface SalaDAO {
    
    public Sala findById(Integer id);

    public List<Sala> findAll();

    public void save(Sala sala);

    public void update(Sala sala);

    public void delete(Integer id);
}
