/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.springmvc.videoteca.spring.dao;

import com.springmvc.videoteca.spring.model.Sala;
import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

@Repository("salaDAO")
public class SalaDAOImpl extends AbstractDao<Integer, Sala> implements SalaDAO{

    @Override
    public Sala findById(Integer id) {
        return super.getByKey(id);
    }

    @Override
    public List<Sala> findAll() {
        Criteria criteria = super.createEntityCriteria();
        return (List<Sala>) criteria.list();
    }

    @Override
    public void delete(Integer id) {
        Sala c;
        c = this.findById(id);
        super.delete(c);
    }

    @Override
    public void save(Sala entity) {
        super.save(entity); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Sala entity) {
        super.update(entity); //To change body of generated methods, choose Tools | Templates.
    }
    
}
