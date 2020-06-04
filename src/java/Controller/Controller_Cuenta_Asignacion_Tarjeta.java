/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.HibernateUtil;
import java.io.UnsupportedEncodingException;
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
 * @author Carlos Larios
 */
public class Controller_Cuenta_Asignacion_Tarjeta {

    @RequestMapping("cuenta_asignacion_tarjeta.htm")
    public ModelAndView view(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView("cuenta_asignacion_tarjeta");

        return mv;
    }

    @RequestMapping(value = "registro_cuenta_asignacion_tarjeta.htm", method = RequestMethod.POST)
    public ModelAndView insert_data(HttpServletRequest request) throws UnsupportedEncodingException {

        ModelAndView mv = new ModelAndView("cuenta_asignacion_tarjeta");
        String respuesta;
        String error = "-1";
        String nombre = (String) request.getParameter("nombre");
        String apellido1 = (String) request.getParameter("apellido1");
        String apellido2 = (String) request.getParameter("apellido2");
        String numcuenta = (String) request.getParameter("numcuenta");
        String telefono = (String) request.getParameter("telefono");
        String email = (String) request.getParameter("email");
        String foto = (String) request.getParameter("foto");
        String rutaFoto = "images/"+foto;
        System.out.println(rutaFoto);
        

        System.out.println("NOMBRE " + nombre + "APELLIDO1 " + apellido1 + "APELLIDO2 " + apellido2 + "NUM CUENTA " + numcuenta + "FOTO " + rutaFoto + "EMAIL " + email + "TELEFONO " + telefono);

        String numero_tarjeta = (String) request.getParameter("numero_tarjeta");
        int tipo_tarjeta = Integer.parseInt(request.getParameter("tipo"));
        String fecha_emision = (String) request.getParameter("emision");
        String fecha_vencimiento = (String) request.getParameter("vencimiento");
        String lugar = (String) request.getParameter("lugar");

        System.out.println("NUM TARJETA " + numero_tarjeta + "TIPO " + tipo_tarjeta + "EMISION " + fecha_emision + "VENCIMIENTO " + fecha_vencimiento + "LUGAR " + lugar);
       
        Session sessionHibernate = HibernateUtil.getSessionFactory().openSession();
        sessionHibernate.beginTransaction();
        try {
            
            String procedure = "SELECT * FROM sp_registro_cuenta(\'" + nombre + "\',\'" + apellido1 + "\',\'" + apellido2 + "\',\'" + numcuenta + "\',\'" + rutaFoto + "\',\'" + email + "\',\'" + telefono + "\')";
            Query query = sessionHibernate.createSQLQuery(procedure);
            List<Object[]> resul = query.list();

            String procedure2 = "SELECT * FROM sp_registro_tarjeta(\'" + numcuenta + "\'," + tipo_tarjeta + ",\'" + numero_tarjeta + "\',\'" + fecha_emision + "\',\'" + fecha_vencimiento + "\',\'" + lugar + "\')";
            Query query2 = sessionHibernate.createSQLQuery(procedure2);
            List<Object[]> result = query2.list();
            
            if(!result.isEmpty()){
                respuesta = "1";
            }else{
                respuesta = "0";
            }
            
            mv.addObject("respuesta", respuesta);

            sessionHibernate.getTransaction().commit();
            sessionHibernate.close();

        } catch (HibernateException e) {
            mv.addObject("error", error);
            sessionHibernate.getTransaction().rollback();
        }

        return mv;
    }
    
    @RequestMapping(value="asignacion_tarjeta_existe.htm", method=RequestMethod.GET)
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
