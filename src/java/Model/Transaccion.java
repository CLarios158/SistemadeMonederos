package Model;
// Generated 17/07/2019 12:24:18 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Transaccion generated by hbm2java
 */
public class Transaccion  implements java.io.Serializable {


     private int idTransaccion;
     private String fkTarjetaTarjeta;
     private String concepto;
     private int estado;
     private int trMovimiento;
     private Date fechaHora;
     private Double monto;
     private Double saldoMovimiento;

    public Transaccion() {
    }

	
    public Transaccion(int idTransaccion, String fkTarjetaTarjeta, String concepto, int estado, int trMovimiento, Date fechaHora) {
        this.idTransaccion = idTransaccion;
        this.fkTarjetaTarjeta = fkTarjetaTarjeta;
        this.concepto = concepto;
        this.estado = estado;
        this.trMovimiento = trMovimiento;
        this.fechaHora = fechaHora;
    }
    public Transaccion(int idTransaccion, String fkTarjetaTarjeta, String concepto, int estado, int trMovimiento, Date fechaHora, Double monto, Double saldoMovimiento) {
       this.idTransaccion = idTransaccion;
       this.fkTarjetaTarjeta = fkTarjetaTarjeta;
       this.concepto = concepto;
       this.estado = estado;
       this.trMovimiento = trMovimiento;
       this.fechaHora = fechaHora;
       this.monto = monto;
       this.saldoMovimiento = saldoMovimiento;
    }
   
    public int getIdTransaccion() {
        return this.idTransaccion;
    }
    
    public void setIdTransaccion(int idTransaccion) {
        this.idTransaccion = idTransaccion;
    }
    public String getFkTarjetaTarjeta() {
        return this.fkTarjetaTarjeta;
    }
    
    public void setFkTarjetaTarjeta(String fkTarjetaTarjeta) {
        this.fkTarjetaTarjeta = fkTarjetaTarjeta;
    }
    public String getConcepto() {
        return this.concepto;
    }
    
    public void setConcepto(String concepto) {
        this.concepto = concepto;
    }
    public int getEstado() {
        return this.estado;
    }
    
    public void setEstado(int estado) {
        this.estado = estado;
    }
    public int getTrMovimiento() {
        return this.trMovimiento;
    }
    
    public void setTrMovimiento(int trMovimiento) {
        this.trMovimiento = trMovimiento;
    }
    public Date getFechaHora() {
        return this.fechaHora;
    }
    
    public void setFechaHora(Date fechaHora) {
        this.fechaHora = fechaHora;
    }
    public Double getMonto() {
        return this.monto;
    }
    
    public void setMonto(Double monto) {
        this.monto = monto;
    }
    public Double getSaldoMovimiento() {
        return this.saldoMovimiento;
    }
    
    public void setSaldoMovimiento(Double saldoMovimiento) {
        this.saldoMovimiento = saldoMovimiento;
    }




}

