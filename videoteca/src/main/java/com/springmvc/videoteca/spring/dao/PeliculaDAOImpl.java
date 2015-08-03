/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.dao;

import com.springmvc.videoteca.spring.model.Pelicula;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

@Repository("peliculaDAO")
public class PeliculaDAOImpl extends AbstractDao<Integer, Pelicula> implements PeliculaDAO {

    @Override
    public Pelicula findById(Integer id) {
        return super.getByKey(id);
    }

    @Override
    public List<Pelicula> findAll() {
        Criteria criteria = super.createEntityCriteria();
        criteria.addOrder(Order.asc("id"));
        return (List<Pelicula>) criteria.list();
    }

    @Override
    public void save(Pelicula pelicula) {
        super.save(pelicula);
    }

    @Override
    public void update(Pelicula pelicula) {
        super.update(pelicula);
    }
    
    @Override
    public void merge(Pelicula pelicula){
        super.merge(pelicula);
    }

    @Override
    public void delete(Integer id) {
        Pelicula c;
        c = this.findById(id);
        super.delete(c);
    }

}
