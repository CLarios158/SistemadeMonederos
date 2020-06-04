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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Pavillion-Pc
 */
public class Controller_Registro_Tarjeta {
    
    @RequestMapping("registro_tarjeta.htm")
    public ModelAndView view(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("registro_tarjeta");
        return mv;
    }
    
    @RequestMapping(value="registro_tarjeta_insert.htm", method=RequestMethod.POST)
    public ModelAndView insert_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("registro_tarjeta");
        
        String respuesta = "";
        String error = "-1";
        String numcuenta = (String)request.getParameter("cuenta");
        int tipo = Integer.parseInt(request.getParameter("tipo"));
        String numtarjeta = (String)request.getParameter("numero_tarjeta");
        String emision = (String)request.getParameter("emision");
        String vencimiento = (String)request.getParameter("vencimiento");
        String lugar = (String)request.getParameter("lugar");

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            
            String procedure="SELECT * FROM sp_registro_tarjeta('',"+tipo+",\'"+numtarjeta+"\',\'"+emision+"\',\'"+vencimiento+"\',  \'"+lugar+"\')";
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
    
    @RequestMapping(value="tarjeta_existe.htm", method=RequestMethod.GET)
    @ResponseBody
    public String validate_card(String No) {
        
        String respuesta = "";
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
       
        try {
            
            String procedure="SELECT * FROM sp_consulta_no_tarjeta(\'"+No+"\')";
            Query query = session.createSQLQuery(procedure);
            List  result = query.list();
            StringBuilder sb = new StringBuilder(); 
            
            result.forEach((res) -> {
                sb.append(res); 
            }); 
            
            respuesta = sb.toString();
            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            session.getTransaction().rollback();
        }
        
        return respuesta;
    }
    
    
}
