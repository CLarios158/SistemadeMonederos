/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.HibernateUtil;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Pavillion-Pc
 */
public class Controller_Actualizar_Cuenta {

    @RequestMapping(value = "actualizar_cuenta.htm", method = RequestMethod.GET)
    public ModelAndView get_data(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView("actualizar_cuenta");
        
        String error = "-1";
        String estado_cuenta = request.getParameter("estado_cuenta");
        String estado_tarjeta = request.getParameter("estado_tarjeta");
        String n_cuenta = request.getParameter("n_cuenta");
        String n_tarjeta = request.getParameter("n_tarjeta");
        
        if("".equals(estado_cuenta)){estado_cuenta = "0";}
        if("".equals(estado_tarjeta)){estado_tarjeta = "0";}
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            
            String procedure = "SELECT * FROM sp_consulta_cuenta(\'" + n_cuenta + "\',\'" + estado_cuenta + "\',\'" + n_tarjeta + "\',\'" + estado_tarjeta + "\')";
            System.out.println(procedure);
            String procedure2 = "SELECT * FROM cat_motivo_cuenta WHERE mcuenta_movimiento = \'" + estado_cuenta + "\' ";
            String procedure3 = "SELECT * FROM cat_motivo_tarjeta WHERE mt_movimiento = \'" + estado_tarjeta + "\' ";
            
            Query query3 = session.createSQLQuery(procedure3);
            Query query2 = session.createSQLQuery(procedure2);
            Query query = session.createSQLQuery(procedure);
            
            List<Object[]> result = query.list();
            List<Object[]> result2 = query2.list();
            List<Object[]> result3 = query3.list();
            
            mv.addObject("datos", result);
            mv.addObject("catalogo1", result2);
            mv.addObject("catalogo2", result3);
            mv.addObject("bandera_cuenta", "0");
            mv.addObject("bandera_tarjeta", "0");

            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            mv.addObject("error", error);
            session.getTransaction().rollback();
        }

        return mv;
    }

    @RequestMapping(value = "actualizar_cuenta_update.htm", method = RequestMethod.POST)
    public ModelAndView update_data(HttpServletRequest request, @RequestParam CommonsMultipartFile fotoNew, HttpSession session) {

        ModelAndView mv = new ModelAndView("actualizar_cuenta");

        String respuesta="";
        String error = "-1";
        
        /* Datos de la Cuenta*/
        String nombre = request.getParameter("nombre");
        String apellido1 = request.getParameter("apellido1");
        String apellido2 = request.getParameter("apellido2");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String cuenta_old = request.getParameter("cuenta_old");
        String cuenta_new = request.getParameter("cuenta_new");
        String fotoOld = request.getParameter("fotoOld");
        String fotoNew2 = request.getParameter("fotoNew");
        String estatus_cuenta = request.getParameter("estatus_cuenta");
        String motivo_cuenta = request.getParameter("motivo_cuenta");
        String rutaFoto = "";

        String path = session.getServletContext().getRealPath("/");
        String filename = fotoNew.getOriginalFilename();
        String pathCSV = path + "images/" + filename;
        byte barr[] = fotoNew.getBytes();

        try {
            BufferedOutputStream br = new BufferedOutputStream(new FileOutputStream(pathCSV));
            Object o = br;
            br.write(barr);
            br.flush();
            br.close();
            rutaFoto = "images/" + filename;
        } catch (IOException e) {
            rutaFoto = fotoOld;
            System.out.println("Error" + e);
        }


        /* Datos de la Tarjeta*/
        String id_historial_tarjeta = request.getParameter("id_historial_tarjeta");
        String tarjeta_old = request.getParameter("tarjeta_old");
        String tarjeta_new = request.getParameter("tarjeta_new");
        String emision = request.getParameter("emision");
        String vencimiento = request.getParameter("vencimiento");
        String lugar = request.getParameter("lugar");
        String tipo_tarjeta = request.getParameter("tipo_tarjeta");
        String estado_tarjeta = request.getParameter("estado_tarjeta");
        String motivo_tarjeta_old = request.getParameter("motivo_tarjeta_old");
        String motivo_tarjeta_new = request.getParameter("motivo_tarjeta_new");
        
        if("".equals(id_historial_tarjeta)){id_historial_tarjeta = null;}
        if("".equals(motivo_tarjeta_old)){motivo_tarjeta_old = null;}
        if("".equals(emision)){emision = "01/01/0001";}
        if("".equals(vencimiento)){vencimiento = "01/01/0001";}
        if("".equals(tipo_tarjeta)){tipo_tarjeta = null;}

        Session sessionHibernate = HibernateUtil.getSessionFactory().openSession();
        sessionHibernate.beginTransaction();
        
        try {
            String procedure = "SELECT * FROM sp_modificar_cuenta(\'" + nombre + "\',\'" + apellido1 + "\',\'" + apellido2 + "\',\'" + telefono + "\',\'" + email + "\',\'" + cuenta_old + "\',\'" + cuenta_new + "\',\'" + rutaFoto + "\'," + estatus_cuenta + "," + motivo_cuenta + "," + id_historial_tarjeta + ",\'" + tarjeta_new + "\',\'" + tarjeta_old + "\',\'" + emision + "\',\'" + vencimiento + "\',\'" + lugar + "\'," + tipo_tarjeta + "," + estado_tarjeta + "," + motivo_tarjeta_old + "," + motivo_tarjeta_new + ")";
            System.out.println(procedure);
            String procedure2 = "SELECT * FROM cat_motivo_cuenta WHERE mcuenta_movimiento = \'" + estatus_cuenta + "\' ";
            String procedure3 = "SELECT * FROM cat_motivo_tarjeta WHERE mt_movimiento = \'" + estado_tarjeta + "\' ";
            Query query = sessionHibernate.createSQLQuery(procedure);
            Query query2 = sessionHibernate.createSQLQuery(procedure2);
            Query query3 = sessionHibernate.createSQLQuery(procedure3);
            List<Object[]> result = query.list();
            List<Object[]> result2 = query2.list();
            List<Object[]> result3 = query3.list();    
            
            if (!result.isEmpty()) {
                respuesta = "1";
            }
            
            mv.addObject("datos", result);
            mv.addObject("catalogo1", result2);
            mv.addObject("catalogo2", result3);
            mv.addObject("update", respuesta);
            mv.addObject("bandera_cuenta", "0");
            mv.addObject("bandera_tarjeta", "0");
            sessionHibernate.getTransaction().commit();
            sessionHibernate.close();

        } catch (HibernateException e) {
            mv.addObject("error", error);
            sessionHibernate.getTransaction().rollback();
        }

        return mv;
    }

    @RequestMapping(value = "validar_cuenta.htm", method = RequestMethod.GET)
    @ResponseBody
    public String validate_account(String No) {

        String respuesta = "";
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            String procedure = "SELECT * FROM sp_consulta_no_cuenta(\'" + No + "\')";
            Query query = session.createSQLQuery(procedure);
            List result = query.list();
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

    @RequestMapping(value = "validar_tarjeta.htm", method = RequestMethod.GET)
    @ResponseBody
    public String validate_card(String No) {

        String respuesta = "";
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            String procedure = "SELECT * FROM sp_consulta_no_tarjeta(\'" + No + "\')";
            Query query = session.createSQLQuery(procedure);
            List result = query.list();
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
    
    
    @RequestMapping(value = "cambiar_estado_cuenta.htm", method = RequestMethod.GET)
    public ModelAndView change_status_account(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView("actualizar_cuenta");

        String estado_cuenta = request.getParameter("estado_cuenta");
        String estado_tarjeta = request.getParameter("estado_tarjeta");
        String n_cuenta = request.getParameter("n_cuenta");
        String n_tarjeta = request.getParameter("n_tarjeta");
        

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure = "SELECT * FROM sp_consulta_cuenta(\'" + n_cuenta + "\',\'" + estado_cuenta + "\',\'" + n_tarjeta + "\',\'" + estado_tarjeta + "\')";
            String procedure2 = "SELECT * FROM cat_motivo_cuenta WHERE mcuenta_movimiento = \'" + estado_cuenta + "\';";
            String procedure3 = "SELECT * FROM cat_motivo_tarjeta WHERE mt_movimiento = \'" + estado_tarjeta + "\';";
            
            Query query = session.createSQLQuery(procedure);
            List<Object[]> result = query.list();
            Query query2 = session.createSQLQuery(procedure2);
            List<Object[]> result2 = query2.list();
            Query query3 = session.createSQLQuery(procedure3);
            List<Object[]> result3 = query3.list();
           
            
            mv.addObject("datos", result);
            mv.addObject("catalogo1", result2);
            mv.addObject("catalogo2", result3);
            mv.addObject("bandera_cuenta", "1");
            mv.addObject("bandera_tarjeta", "0");
            
            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            session.getTransaction().rollback();
        }

        return mv;
    }
    
    @RequestMapping(value = "cambiar_estado_tarjeta.htm", method = RequestMethod.GET)
    public ModelAndView change_status_card(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView("actualizar_cuenta");

        String estado_cuenta = request.getParameter("estado_cuenta");
        String estado_tarjeta = request.getParameter("estado_tarjeta");
        String n_cuenta = request.getParameter("n_cuenta");
        String n_tarjeta = request.getParameter("n_tarjeta");
        
        //System.out.println("estado_cuenta"+estado_cuenta);
        //System.out.println("estado_tarjeta"+estado_tarjeta);
        //System.out.println("n_cuenta"+n_cuenta);
        //System.out.println("n_tarjeta"+n_tarjeta);
        
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        try {
            String procedure = "SELECT * FROM sp_consulta_cuenta(\'" + n_cuenta + "\',\'" + estado_cuenta + "\',\'" + n_tarjeta + "\',\'" + estado_tarjeta + "\')";
            String procedure2 = "SELECT * FROM cat_motivo_cuenta WHERE mcuenta_movimiento = \'" + estado_cuenta + "\';";
            String procedure3 = "SELECT * FROM cat_motivo_tarjeta WHERE mt_movimiento = \'" + estado_tarjeta + "\';";
           
            Query query = session.createSQLQuery(procedure);
            List<Object[]> result = query.list();
            Query query2 = session.createSQLQuery(procedure2);
            List<Object[]> result2 = query2.list();
            Query query3 = session.createSQLQuery(procedure3);
            List<Object[]> result3 = query3.list();
           
            
            mv.addObject("datos", result);
            mv.addObject("catalogo1", result2);
            mv.addObject("catalogo2", result3);
            mv.addObject("bandera_cuenta", "0");
            mv.addObject("bandera_tarjeta", "1");
            session.getTransaction().commit();
            session.close();

        } catch (HibernateException e) {
            session.getTransaction().rollback();
        }

        return mv;
    }
    
}
