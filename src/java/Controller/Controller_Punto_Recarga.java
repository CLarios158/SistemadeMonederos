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
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Carlos Larios
 */
public class Controller_Punto_Recarga {
    
    @RequestMapping("punto_recarga.htm")
    public ModelAndView view(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("punto_recarga");
        
        String error = "-1";
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_consulta_punto_recarga()";
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
    
    @RequestMapping(value="punto_recarga_select.htm", method=RequestMethod.GET)
    public ModelAndView get_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("punto_recarga");
        
        String campo = request.getParameter("campo");
        String error = "-1";
        int estatus;
        
        if("Habilitada".equals(campo)){
            estatus = 0;
        }else{
            estatus = 1;
        }
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
       
        try {
            
            String procedure="SELECT * FROM sp_consulta_punto_recarga_unitaria(\'"+campo+"\')";
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
    
    @RequestMapping(value="punto_recarga_insert.htm", method=RequestMethod.POST)
    public ModelAndView insert_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("punto_recarga");
        
        String respuesta = "";
        String error = "-1";
        String clave = request.getParameter("clave");
        String referencia = request.getParameter("referencia");
        String organizacion = request.getParameter("organizacion");
        int estatus = Integer.parseInt(request.getParameter("estatus"));
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            String procedure="SELECT * FROM sp_registrar_punto_recarga(\'"+clave+"\',\'"+organizacion+"\',\'"+referencia+"\',"+estatus+")";
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
    
    @RequestMapping(value="punto_recarga_update.htm", method=RequestMethod.POST)
    public ModelAndView update_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("punto_recarga");
        
        String respuesta = "";
        String error = "-1";
        String clave = request.getParameter("clave");
        String referencia = request.getParameter("referencia");
        String organizacion = request.getParameter("organizacion");
        int estatus = Integer.parseInt(request.getParameter("estatus"));
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_modificar_punto_recarga(\'"+clave+"\',\'"+organizacion+"\',\'"+referencia+"\',"+estatus+")";
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
    
    @RequestMapping(value="punto_recarga_existe.htm", method=RequestMethod.GET)
    @ResponseBody
    public String validate_id(String No) {
        
        String respuesta = "";
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_consulta_clave_punto_recarga(\'"+No+"\')";
            Query query = session.createSQLQuery(procedure);
            List  result = query.list();
            StringBuilder sb = new StringBuilder(); 
            
            result.forEach((res) -> {
                sb.append(res); 
            }); 
            
            respuesta = sb.toString();
            session.getTransaction().commit();
            session.close();

        } catch (ConstraintViolationException e) {
            session.getTransaction().rollback();
        }
        
        return respuesta;
    }
}
