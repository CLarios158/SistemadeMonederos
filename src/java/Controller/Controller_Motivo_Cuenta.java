/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.HibernateUtil;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Pavillion-Pc
 */
public class Controller_Motivo_Cuenta {
    
    @RequestMapping("motivo_cuenta.htm")
    public ModelAndView view(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("motivo_cuenta");
        
        String error = "-1";
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            
            String procedure = "SELECT *  FROM sp_consulta_motivo_cuenta()";
            Query query = session.createSQLQuery(procedure);
            List <Object []> result = query.list();
            mv.addObject("datos", result);
            
            session.getTransaction().commit();
            session.close();
            
        } catch (HibernateException e) {
            mv.addObject("error", error);
            session.getTransaction().rollback();
        }
        return mv;
    }
    
    @RequestMapping(value="motivo_cuenta_insert.htm", method=RequestMethod.POST)
    public ModelAndView get_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("motivo_cuenta");
        
        String respuesta = "";
        String error = "-1";        
        String motivo = (String)request.getParameter("motivo");
        int movimiento = Integer.parseInt(request.getParameter("movimiento"));
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
       
        try {
            
            String procedure="SELECT * FROM sp_registrar_motivo_cuenta(\'"+motivo+"\',"+movimiento+")";
            Query query = session.createSQLQuery(procedure);    
            List <Object []> result = query.list();
            
            if(!result.isEmpty()){
                respuesta = "1";
            }
            
            mv.addObject("datos", result);
            mv.addObject("respuesta", respuesta);
            session.getTransaction().commit();
            session.close();
            
        } catch (HibernateException e) {
            mv.addObject("error", error);
            session.getTransaction().rollback();         
        }
        
        return mv;
    }
    
    @RequestMapping(value="motivo_cuenta_update.htm", method=RequestMethod.POST)
    public ModelAndView update_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("motivo_cuenta");
        
        String respuesta = "";
        String error = "-1";
        int id = Integer.parseInt(request.getParameter("id"));  
        String motivo1 = (String)request.getParameter("motivo1");
        int movimiento = Integer.parseInt(request.getParameter("movimiento"));

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            
            String procedure="SELECT * FROM sp_modificar_motivo_cuenta("+id+",\'"+motivo1+"\',"+movimiento+")";
            Query query = session.createSQLQuery(procedure);    
            List <Object []> result = query.list();
            
            if(!result.isEmpty()){
                respuesta = "1";
            }
           
            mv.addObject("datos", result);
            mv.addObject("respuesta2", respuesta);
            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            mv.addObject("error", error);            
            session.getTransaction().rollback();            
        }
        return mv;
    }
    
    
}
