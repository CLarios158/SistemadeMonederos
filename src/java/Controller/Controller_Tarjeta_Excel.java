/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.HibernateUtil;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Pavillion-Pc
 */
public class Controller_Tarjeta_Excel {

    @RequestMapping("tarjeta_excel.htm")
    public ModelAndView view(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView("tarjeta_excel");
        return mv;
    }

    @RequestMapping(value = "subir_excel.htm", method = RequestMethod.POST)
    public ModelAndView upload_file(@RequestParam CommonsMultipartFile file, HttpSession session) throws ParseException {

        ModelAndView mv = new ModelAndView("tarjeta_excel");

        String respuesta = "";
        String error = "-1";
        String path = session.getServletContext().getRealPath("/");
        String filename = file.getOriginalFilename();

        String pathCSV = path + "csv/" + filename;
        System.out.println(pathCSV);
        String line = "";
        String csvSplit = ",";
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();
        String fecha_r = formatter.format(date);
        byte barr[] = file.getBytes();

        try {
            BufferedOutputStream br = new BufferedOutputStream(new FileOutputStream(pathCSV));
            Object o = br;
            br.write(barr);
            System.out.println("ESBRIO EL ARCHIVO");
            br.flush();
            br.close();
        } catch (IOException e) {
            System.out.println("NO ESCRIBIO!!!!!!");
            System.out.println("Error" + e);
        }

        Session session2 = HibernateUtil.getSessionFactory().openSession();
        session2.beginTransaction();

        try {
            String procedure = "INSERT INTO tarjeta(no_tarjeta,fk_no_cuenta_cuenta,fecha_registro,fecha_vencimiento,tipo_tarjeta,organizacion) VALUES (?,?,?,?,?,?)";
            Query query = session2.createSQLQuery(procedure);

            BufferedReader br = new BufferedReader(new FileReader(pathCSV));
            int count = 0;

            try {
                while ((line = br.readLine()) != null) {
                    if (count != 0) {
                        String[] data = line.split(",");
                        String num_tarjeta = data[0];
                        String fecha_v = data[1] /*+ " 00:00:00"*/;
                        String tipo = data[2];
                        String organizacion = data[3];
                        int valor;

                        query.setString(0, num_tarjeta);
                        query.setString(1, "");

                        Date date1 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").parse(fecha_r);
                        Date date2 = new SimpleDateFormat("dd/MM/yyyy HH:mm").parse(fecha_v);
                        query.setTimestamp(2, date1);
                        query.setTimestamp(3, date2);

                        String tipo_tarjeta = String.valueOf(tipo);
                        if (tipo_tarjeta == "Preferente" || tipo_tarjeta == "preferente") {
                            valor = 1;
                        } else {
                            valor = 0;
                        }
                        query.setInteger(4, valor);

                        query.setString(5, organizacion);

                        query.executeUpdate();
                    }
                    count++;

                }
                respuesta = "1";
                mv.addObject("respuesta", respuesta);
                session2.getTransaction().commit();
                session2.close();
                br.close();
            } catch (ConstraintViolationException e) {
                respuesta = "0";
                mv.addObject("respuesta", respuesta);
                session2.getTransaction().rollback();
            } catch (HibernateException e) {
                mv.addObject("error", error);
                session2.getTransaction().rollback();
            }

        } catch (IOException e) {
            System.out.println("Error" + e);
        }

        return mv;
    }

}
