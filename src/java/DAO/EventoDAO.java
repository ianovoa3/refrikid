/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import VO.EventoVO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Conexion;

/**
 *
 * @author FAMILIA NOVOA
 */
public class EventoDAO extends Conexion{
    int idnovedades;
    Date fecha;
    String descripcion;
     private Connection cnn;
    private Statement sentencia;
    private ResultSet resultado;
     private boolean operacion=false;
    public EventoDAO(EventoVO eventovo){
        super();
        try {
          cnn=this.obtenerconexion();
          sentencia=cnn.createStatement();
          idnovedades=eventovo.getIdnovedades();
          fecha=eventovo.getFecha();
          descripcion=eventovo.getDescripcion();
  
        } catch (Exception ex) {
            Logger.getLogger(DAO.EventoDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    public boolean insertarevento(){
        try {
          cnn=this.obtenerconexion();
          sentencia.executeUpdate("INSERT INTO novedades(fecha,descripcion) VALUES('"+fecha+"','"+descripcion+"')");
          operacion=true;
        } catch (Exception ex) {
            Logger.getLogger(DAO.EventoDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return operacion;
    }
    public ArrayList<EventoVO> all(){
        ArrayList<EventoVO> lista=new ArrayList<EventoVO>();
        try {
            cnn=this.obtenerconexion();
            resultado=sentencia.executeQuery("SELECT * FROM novedades");
            while (resultado.next()) {  
                EventoVO eventovo=new EventoVO();
                idnovedades=resultado.getInt("idnovedades");
                fecha=resultado.getDate("fecha");
                descripcion=resultado.getString("descripcion");
               eventovo.setIdnovedades(idnovedades);
               eventovo.setFecha(fecha);
               eventovo.setDescripcion(descripcion);
             lista.add(eventovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(EventoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
}
