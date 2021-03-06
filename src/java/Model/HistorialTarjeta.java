package Model;
// Generated 17/07/2019 12:24:18 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * HistorialTarjeta generated by hbm2java
 */
public class HistorialTarjeta  implements java.io.Serializable {


     private int idHistorialTarjeta;
     private int fkIdMotivoCatMotivoTarjeta;
     private String fkTarjetaTarjeta;
     private Date fechaHabilitacion;
     private Date fechaDeshabilitacion;

    public HistorialTarjeta() {
    }

	
    public HistorialTarjeta(int idHistorialTarjeta, int fkIdMotivoCatMotivoTarjeta, String fkTarjetaTarjeta) {
        this.idHistorialTarjeta = idHistorialTarjeta;
        this.fkIdMotivoCatMotivoTarjeta = fkIdMotivoCatMotivoTarjeta;
        this.fkTarjetaTarjeta = fkTarjetaTarjeta;
    }
    public HistorialTarjeta(int idHistorialTarjeta, int fkIdMotivoCatMotivoTarjeta, String fkTarjetaTarjeta, Date fechaHabilitacion, Date fechaDeshabilitacion) {
       this.idHistorialTarjeta = idHistorialTarjeta;
       this.fkIdMotivoCatMotivoTarjeta = fkIdMotivoCatMotivoTarjeta;
       this.fkTarjetaTarjeta = fkTarjetaTarjeta;
       this.fechaHabilitacion = fechaHabilitacion;
       this.fechaDeshabilitacion = fechaDeshabilitacion;
    }
   
    public int getIdHistorialTarjeta() {
        return this.idHistorialTarjeta;
    }
    
    public void setIdHistorialTarjeta(int idHistorialTarjeta) {
        this.idHistorialTarjeta = idHistorialTarjeta;
    }
    public int getFkIdMotivoCatMotivoTarjeta() {
        return this.fkIdMotivoCatMotivoTarjeta;
    }
    
    public void setFkIdMotivoCatMotivoTarjeta(int fkIdMotivoCatMotivoTarjeta) {
        this.fkIdMotivoCatMotivoTarjeta = fkIdMotivoCatMotivoTarjeta;
    }
    public String getFkTarjetaTarjeta() {
        return this.fkTarjetaTarjeta;
    }
    
    public void setFkTarjetaTarjeta(String fkTarjetaTarjeta) {
        this.fkTarjetaTarjeta = fkTarjetaTarjeta;
    }
    public Date getFechaHabilitacion() {
        return this.fechaHabilitacion;
    }
    
    public void setFechaHabilitacion(Date fechaHabilitacion) {
        this.fechaHabilitacion = fechaHabilitacion;
    }
    public Date getFechaDeshabilitacion() {
        return this.fechaDeshabilitacion;
    }
    
    public void setFechaDeshabilitacion(Date fechaDeshabilitacion) {
        this.fechaDeshabilitacion = fechaDeshabilitacion;
    }




}


