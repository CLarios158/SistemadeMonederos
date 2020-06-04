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
public class Controller_Historial_Tarjeta {
    
    @RequestMapping("historial_tarjeta.htm")
    public ModelAndView view(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("historial_tarjeta");
        
        return mv;
    }
    
    @RequestMapping(value="historial_tarjeta_select.htm", method=RequestMethod.GET)
    public ModelAndView get_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("historial_tarjeta");
        
        String respuesta="";
        String error = "-1";
        String busqueda = (String)request.getParameter("busqueda");
        int filtro = Integer.parseInt(request.getParameter("filtro"));
        String filtroF = (String)request.getParameter("filtro");
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            
            String procedure="SELECT * FROM sp_consulta_historial_tarjeta_tarjeta("+filtro+",\'"+busqueda+"\')";
            Query query = session.createSQLQuery(procedure);
            List <Object []> result = query.list();
            
            if(result.isEmpty()){
                respuesta = "0";
            }
            
            mv.addObject("datos", result);
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
}
