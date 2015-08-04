/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.dao;

import com.springmvc.videoteca.spring.model.Pelicula;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
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

    public Pelicula findByNombre(String nombre){
        Query q = super.getSession().createQuery("SELECT p FROM Pelicula p WHERE p.nombre = :nombrePeli ");
        q.setString("nombrePeli", nombre);
        return (Pelicula) q.uniqueResult();
    }
    
    public List<Pelicula>  findByGenero(String genero){
        Query q = super.getSession().createQuery("SELECT p FROM Pelicula p WHERE p.genero = :genero ");
        q.setString("genero", genero);
        return q.list();
    }
    
    public List<Pelicula> findEstrenos(){
        Date semanaAnterior;
        semanaAnterior = obtenerSemanaAnterior();
        Query q = super.getSession().createQuery("SELECT p FROM Pelicula p WHERE p.fechaestreno >= :fecha ");
        q.setDate("fecha", semanaAnterior);
        return q.list();
    }

    private Date obtenerSemanaAnterior() {
        Calendar c;
        int dia;
        c = Calendar.getInstance();
        dia = c.get(Calendar.DATE);
        c.set(Calendar.DATE, dia - 7);
        return c.getTime();
    }
    
    
}
