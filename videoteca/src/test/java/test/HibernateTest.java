///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package test;
//
//import com.springmvc.videoteca.spring.dao.ClienteDAO;
//import com.springmvc.videoteca.spring.model.Cliente;
//import com.springmvc.videoteca.spring.service.ClienteService;
//import java.util.List;
//import static org.junit.Assert.assertEquals;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.transaction.annotation.Transactional;
//
///**
// *
// * @author nazaret
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:/WEB-INF/spring-web-servlet.xml"})
//public class HibernateTest {
//
//    @Autowired
//    private ClienteService clienteService;
//
//    @Autowired
//    private ClienteDAO clienteDAO;
//
//    @Test
//    @Transactional
//    public void insertarClientes() {
//        Cliente c;
//        c = new Cliente();
//        c.setDni("78563412");
//        c.setCelular("197646982");
//        c.setEmail("mail@mail.com");
//        c.setNick("nick");
//        c.setNombre("pedro");
//        c.setPassword("4321");
//
//        System.out.println("-----------------------INICIO-----------------------");
//        int contador = desplegarClientes();
//        assertEquals(contador, 2);
//        System.out.println("------------------------FFIN----------------------");
//
//    }
//
//    private int desplegarClientes() {
//        List<Cliente> list;
//        list = clienteService.findAll();
//        for (Cliente cli : list) {
//            System.out.println(cli);
//        }
//        return list.size();
//    }
//}
