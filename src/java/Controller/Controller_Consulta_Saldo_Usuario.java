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
public class Controller_Consulta_Saldo_Usuario {

    @RequestMapping("consulta_saldo_usuario.htm")
    public ModelAndView view(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView("consulta_saldo_usuario");

        String busqueda = (String) request.getParameter("busqueda");
        int filtro = Integer.parseInt(request.getParameter("filtro"));
        int filtroF = Integer.parseInt(request.getParameter("filtroF"));
        String filtroFecha = (String)request.getParameter("filtroF");
        String error = "-1";

        System.out.println(busqueda + " " + filtro + " " + filtroF);

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_consulta_saldo_cuenta("+filtro+",\'"+busqueda+"\',\'"+filtroF+"\')";  
            System.out.println(procedure);
            Query query2 = session.createSQLQuery(procedure);
            List<Object[]> result2 = query2.list();
           
            mv.addObject("datos", result2);
            mv.addObject("busqueda", busqueda);
            mv.addObject("filtroFecha", filtroFecha);

            session.getTransaction().commit();
            session.close();
        } catch (HibernateException e) {
            mv.addObject("error", error);
            session.getTransaction().rollback();
        }
        
        return mv;
    }
}
