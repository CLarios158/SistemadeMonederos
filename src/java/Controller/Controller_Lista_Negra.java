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
public class Controller_Lista_Negra {
    
    @RequestMapping("lista_negra.htm")
    public ModelAndView view(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("lista_negra");
        
        String busqueda = "";
        String error = "-1";
        int filtro = 1;
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_consulta_lista_negra("+filtro+",\'"+busqueda+"\')";
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
    
    @RequestMapping(value="lista_negra_select.htm", method=RequestMethod.GET)
    public ModelAndView get_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("lista_negra");
        
        String respuesta;
        String error = "-1";
        String busqueda = (String)request.getParameter("busqueda");
        String filtroF = (String)request.getParameter("filtro");
        int filtro = Integer.parseInt(request.getParameter("filtro"));
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_consulta_lista_negra("+filtro+",\'"+busqueda+"\')";
            Query query = session.createSQLQuery(procedure);
            List <Object []> result = query.list();
            
            if(!result.isEmpty()){
                respuesta = "1";
            }else{
                respuesta = "0";
            }
            
            mv.addObject("datos_select", result);
            mv.addObject("filtros", filtroF);
            mv.addObject("respuesta", respuesta);
            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            mv.addObject("error", error);
            session.getTransaction().rollback();
        }
        return mv;
    }
    
    @RequestMapping(value="lista_negra_update.htm", method=RequestMethod.POST)
    public ModelAndView update_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("lista_negra");
        
        String respuesta="";
        String error = "-1";
        String n_tarjeta = (String)request.getParameter("n_tarjeta");
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_modificacion_listanegra(\'"+n_tarjeta+"\')";
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
