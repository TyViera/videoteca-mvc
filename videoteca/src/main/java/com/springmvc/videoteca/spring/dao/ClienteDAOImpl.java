/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.dao;

import com.springmvc.videoteca.spring.model.Cliente;
import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

@Repository("clienteDAO")
public class ClienteDAOImpl extends AbstractDao<Integer, Cliente> implements ClienteDAO {

    @Override
    public Cliente findById(Integer id) {
        return super.getByKey(id);
    }

    @Override
    public List<Cliente> findAll() {
        Criteria criteria = super.createEntityCriteria();
        return (List<Cliente>) criteria.list();
    }

    @Override
    public void save(Cliente cliente) {
        super.save(cliente);
    }

    @Override
    public void update(Cliente cliente) {
        super.update(cliente);
    }

    @Override
    public void delete(Integer id) {
        Cliente c;
        c = this.findById(id);
        super.delete(c);
    }

}
