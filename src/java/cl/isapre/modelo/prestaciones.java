/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.isapre.modelo;

/**
 *
 * @author Seba
 */
public class prestaciones {
private int codigoPrestacion;
private String descripcionPrestacion;
private int valor; 
private int BonificacionFinanciar; 
private int CopagoBeneficiario;

    public prestaciones(int codigoPrestacion, String descripcionPrestacion, int valor, int BonificacionFinanciar, int CopagoBeneficiario) {
        this.codigoPrestacion = codigoPrestacion;
        this.descripcionPrestacion = descripcionPrestacion;
        this.valor = valor;
        this.BonificacionFinanciar = BonificacionFinanciar;
        this.CopagoBeneficiario = CopagoBeneficiario;
    }

    public int getCodigoPrestacion() {
        return codigoPrestacion;
    }

    public void setCodigoPrestacion(int codigoPrestacion) {
        this.codigoPrestacion = codigoPrestacion;
    }

    public String getDescripcionPrestacion() {
        return descripcionPrestacion;
    }

    public void setDescripcionPrestacion(String descripcionPrestacion) {
        this.descripcionPrestacion = descripcionPrestacion;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public int getBonificacionFinanciar() {
        return BonificacionFinanciar;
    }

    public void setBonificacionFinanciar(int BonificacionFinanciar) {
        this.BonificacionFinanciar = BonificacionFinanciar;
    }

    public int getCopagoBeneficiario() {
        return CopagoBeneficiario;
    }

    public void setCopagoBeneficiario(int CopagoBeneficiario) {
        this.CopagoBeneficiario = CopagoBeneficiario;
    }

}
