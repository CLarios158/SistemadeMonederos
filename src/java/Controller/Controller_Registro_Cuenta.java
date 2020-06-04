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
import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.stereotype.Controller;
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
@Controller
public class Controller_Registro_Cuenta {
    
   
    @RequestMapping("registro_cuenta.htm")
    public ModelAndView view(HttpServletRequest request){
        
        ModelAndView mv = new ModelAndView("registro_cuenta");
        return mv;
    }
    
   @RequestMapping(value="registro_cuenta_insert.htm", method=RequestMethod.POST)
    public ModelAndView insert_data(HttpServletRequest request, @RequestParam CommonsMultipartFile foto, HttpSession session) throws UnsupportedEncodingException{
        
        ModelAndView mv = new ModelAndView("registro_cuenta");
        
        String respuesta = "";
        String error = "-1";
        String nombre = (String)request.getParameter("nombre");
        String apellido1 = (String)request.getParameter("apellido1");
        String apellido2 = (String)request.getParameter("apellido2"); 
        String numcuenta = (String)request.getParameter("numcuenta");
        String telefono = (String)request.getParameter("telefono");
        String email = (String)request.getParameter("email");
        String foto2 = (String)request.getParameter("foto");
        
        String path = session.getServletContext().getRealPath("/");
        String filename = foto.getOriginalFilename();
        String pathCSV = path + "images/" + filename;
        byte barr[] = foto.getBytes();

        try {
            BufferedOutputStream br = new BufferedOutputStream(new FileOutputStream(pathCSV));
            Object o = br;
            br.write(barr);
            br.flush();
            br.close();
        } catch (IOException e) {
            System.out.println("Error"+e);
        }
        
        String rutaFoto = "images/"+filename;
        
        System.out.println("NOMBRE "+nombre+"APELLIDO1 "+apellido1+"APELLIDO2 "+apellido2+"NUM CUENTA "+numcuenta+"FOTO "+rutaFoto+"EMAIL "+email+"TELEFONO "+telefono);
        
        Session sessionHibernate = HibernateUtil.getSessionFactory().openSession();
        sessionHibernate.beginTransaction();
        
        try {
            String procedure="SELECT * FROM sp_registro_cuenta(\'"+nombre+"\',\'"+apellido1+"\',\'"+apellido2+"\',\'"+numcuenta+"\',\'"+rutaFoto+"\',\'"+email+"\',\'"+telefono+"\')";
            Query query = sessionHibernate.createSQLQuery(procedure);
            List <Object []> result = query.list();
            
            if(!result.isEmpty()){
                respuesta = "1";
            }
            
            mv.addObject("respuesta", respuesta);

            sessionHibernate.getTransaction().commit();
            sessionHibernate.close();

        } catch (HibernateException e){
            mv.addObject("error", error);
            sessionHibernate.getTransaction().rollback();
        }
        
        return mv;
    }
    
    @RequestMapping(value="cuenta_existe.htm", method=RequestMethod.GET)
    @ResponseBody
    public String validate_account(String No) {
        
        String respuesta = "";
        System.out.println(No);
       
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            String procedure="SELECT * FROM sp_consulta_no_cuenta(\'"+No+"\')";
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
    
    @RequestMapping(value="subir_foto.htm", method=RequestMethod.POST)
    @ResponseBody
    public String upload_photo(HttpServletRequest request, @RequestParam CommonsMultipartFile foto, HttpSession session) {

        String path = session.getServletContext().getRealPath("/");
        String filename = foto.getOriginalFilename();
        String pathCSV = path + "images/" + filename;
        System.out.println(pathCSV);
        byte barr[] = foto.getBytes();

        try {
            BufferedOutputStream br = new BufferedOutputStream(new FileOutputStream(pathCSV));
            Object o = br;
            br.write(barr);
            br.flush();
            br.close();
        } catch (IOException e) {
            System.out.println("Error"+e);
        }
        
        return null;
       
    }
     
}
