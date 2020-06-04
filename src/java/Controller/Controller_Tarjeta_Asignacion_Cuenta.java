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
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Carlos Larios
 */
public class Controller_Tarjeta_Asignacion_Cuenta {
    
    @RequestMapping("tarjeta_asignacion_cuenta.htm")
    public ModelAndView get_data(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("tarjeta_asignacion_cuenta");
        String n_cuenta = request.getParameter("n_cuenta");
        Session session = HibernateUtil.getSessionFactory().openSession();        
        session.beginTransaction();
        try {
            String procedure = "SELECT *  FROM sp_consulta_tarjeta_cuenta(\'"+n_cuenta+"\')";
            System.out.println(procedure);
            Query query = session.createSQLQuery(procedure);
            List <Object []> result = query.list();
            mv.addObject("datos", result);
            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            session.getTransaction().rollback();
        }
        return mv;
    }
    
}
