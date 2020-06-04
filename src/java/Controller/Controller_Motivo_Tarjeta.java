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
 * @author Carlos Larios
 */
public class Controller_Motivo_Tarjeta {
   
    @RequestMapping("motivo_tarjeta.htm")
    public ModelAndView view(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("motivo_tarjeta");
        
        String error = "-1";
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            
            String procedure="SELECT * FROM sp_consulta_catmotivostarjeta_general()";
            Query query = session.createSQLQuery(procedure);
            List <Object []> result = query.list();
            mv.addObject("datos", result);
            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            mv.addObject("error", error);
            session.close();
        }
        
        return mv;
    }
    
    @RequestMapping(value="motivo_tarjeta_insert.htm", method=RequestMethod.POST) 
    public ModelAndView get_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("motivo_tarjeta");
        
        String respuesta = "";
        String error = "-1";
        String mtMotivo = request.getParameter("mtMotivo");
        int mtMovimiento = Integer.parseInt(request.getParameter("mtMovimiento"));
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_registro_catmotivoatarjeta("+mtMovimiento+",\'"+mtMotivo+"\')";                     
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
    
    @RequestMapping(value="motivo_tarjeta_update.htm", method=RequestMethod.POST)  
    public ModelAndView update_data(HttpServletRequest request){
        ModelAndView mv=new ModelAndView("motivo_tarjeta");
        
        String respuesta="";
        String error = "-1";
        int id=Integer.parseInt(request.getParameter("id"));        
        int mtMovimiento = Integer.parseInt(request.getParameter("mtMovimiento"));
        String mtMotivo = request.getParameter("mtMotivo");
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            
            String procedure="SELECT * FROM sp_modificar_catmotivoatarjeta("+id+","+mtMovimiento+",\'"+mtMotivo+"\')";                     
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
