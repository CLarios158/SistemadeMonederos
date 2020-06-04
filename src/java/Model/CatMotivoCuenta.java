package Model;
// Generated 17/07/2019 12:24:18 AM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;




/**
 * CatMotivoCuenta generated by hbm2java
 */
@Entity
public class CatMotivoCuenta  implements java.io.Serializable {

    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mcuentaIdMotivo", updatable = false, nullable = false)
    private int mcuentaIdMotivo;
    
    private String mcuentaMotivo;
    private int mcuentaMovimiento;

    public CatMotivoCuenta() {
    }

    public CatMotivoCuenta(int mcuentaIdMotivo, String mcuentaMotivo, int mcuentaMovimiento) {
       this.mcuentaIdMotivo = mcuentaIdMotivo;
       this.mcuentaMotivo = mcuentaMotivo;
       this.mcuentaMovimiento = mcuentaMovimiento;
    }
   
    public int getMcuentaIdMotivo() {
        return this.mcuentaIdMotivo;
    }
    
    public void setMcuentaIdMotivo(int mcuentaIdMotivo) {
        this.mcuentaIdMotivo = mcuentaIdMotivo;
    }
    public String getMcuentaMotivo() {
        return this.mcuentaMotivo;
    }
    
    public void setMcuentaMotivo(String mcuentaMotivo) {
        this.mcuentaMotivo = mcuentaMotivo;
    }
    public int getMcuentaMovimiento() {
        return this.mcuentaMovimiento;
    }
    
    public void setMcuentaMovimiento(int mcuentaMovimiento) {
        this.mcuentaMovimiento = mcuentaMovimiento;
    }




}

