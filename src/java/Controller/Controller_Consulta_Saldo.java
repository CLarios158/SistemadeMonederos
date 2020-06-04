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
public class Controller_Consulta_Saldo {

    @RequestMapping("consulta_saldo.htm")
    public ModelAndView view(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView("consulta_saldo");

        return mv;
    }

    @RequestMapping(value = "consulta_saldo_select.htm", method = RequestMethod.GET)
    public ModelAndView get_data(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView("consulta_saldo");

        String busqueda;
        String respuesta="";
        String error = "-1";
        String busqueda1 = (String) request.getParameter("busqueda");
        String busqueda2 = (String) request.getParameter("busquedaH");

        if ("".equals(busqueda1)) {
            busqueda = busqueda2;
            busqueda1 = busqueda2;
        } else {
            busqueda = busqueda1;
        }

        int filtro = Integer.parseInt(request.getParameter("filtro"));
        int filtroF = Integer.parseInt(request.getParameter("filtroF"));

        String filtroUsuario = (String) request.getParameter("filtro");
        String filtroFecha = (String) request.getParameter("filtroF");

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            if (filtro != 3) {
                String procedure = "SELECT * FROM sp_consulta_saldo_cuenta(" + filtro + ",\'" + busqueda + "\',\'" + filtroF + "\')";
                System.out.println(procedure);
                Query query = session.createSQLQuery(procedure);
                List<Object[]> result = query.list();
                
                if (result.isEmpty()) {
                    respuesta = "0";
                }

                mv.addObject("datos", result);
                mv.addObject("filtroUsuario", filtroUsuario);
                mv.addObject("filtroFecha", filtroFecha);
                mv.addObject("busqueda", busqueda1);
                mv.addObject("respuesta", respuesta);
            }

            if (filtro == 3) {
                String procedure2 = "SELECT * FROM sp_consulta_saldo_general(" + filtro + ",\'" + busqueda + "\')";
                Query query2 = session.createSQLQuery(procedure2);
                List<Object[]> result2 = query2.list();
                 if (result2.isEmpty()) {
                    respuesta = "0";
                }
                mv.addObject("datos", result2);
                mv.addObject("filtroUsuario", filtroUsuario);
                mv.addObject("filtroFecha", filtroFecha);
            }

            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            mv.addObject("error", error);
            session.getTransaction().rollback();
        }
        
        return mv;
    }
}
