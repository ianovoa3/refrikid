/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VO;

import java.sql.Date;

/**
 *
 * @author FAMILIA NOVOA
 */
public class EventoVO {
    int idnovedades;
    Date fecha;
    String descripcion;

    public EventoVO() {
    }

    public EventoVO( Date fecha, String descripcion) {
        this.fecha = fecha;
        this.descripcion = descripcion;
    }

    public int getIdnovedades() {
        return idnovedades;
    }

    public void setIdnovedades(int idnovedades) {
        this.idnovedades = idnovedades;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
}
