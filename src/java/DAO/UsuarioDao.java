/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import VO.UsuarioVO;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.*;
import modelo.Conexion;
import modelo.Crud;

/**
 *
 * @author Aprendiz
 */
public class UsuarioDao extends Conexion implements Crud {
   private  Connection cnn;
   private Statement sentencia;
    private  ResultSet resultado;
   private boolean operacion=false;
 
   String primernombre;
   String segundonombre;
   String primerapellido;
   String segundoapellido;
   String documentoacu;
   String numerodocumento;
   String nombreusuario;
   String clave;
    String primernombrebeneficiario;
   String segundonombrebeneficiario;
   String primerapellidobeneficiario;
   String segundoapellidobeneficiario;
    String documentoben;
    String numerodocumentoben;
    String genero;
    Date fechanacimiento;
    int telefono;
    String direccion;
    String rh;
   String correologin;
   String password;
   int rol;
   int idninos;
   public Double talla;
   public Double peso;
   public int cnino;
   public UsuarioDao() {
    }
 
 public UsuarioDao(UsuarioVO usuarioVo){
    super();
        try {
            cnn=this.obtenerconexion();
            sentencia=cnn.createStatement();
            primernombre=usuarioVo.getPrimernombre();
            segundonombre=usuarioVo.getSegundonombre();
            primerapellido=usuarioVo.getPrimerapellido();
            segundoapellido=usuarioVo.getSegundoapellido();
            documentoacu=usuarioVo.getDocumentoacu();
            numerodocumento=usuarioVo.getNumerodocumento();
            nombreusuario=usuarioVo.getNombreusuario();
            clave=usuarioVo.getClave();
            primernombrebeneficiario=usuarioVo.getPrimernombrebeneficiario();
            segundonombrebeneficiario=usuarioVo.getSegundonombrebeneficiario();
            primerapellidobeneficiario=usuarioVo.getPrimerapellidobeneficiario();
            segundoapellidobeneficiario=usuarioVo.getSegundoapellidobeneficiario();
            documentoben=usuarioVo.getDocumentoben();
            numerodocumentoben=usuarioVo.getNumerodocumentoben();
            genero=usuarioVo.getGenero();
            fechanacimiento=usuarioVo.getFechanacimiento();
            telefono=usuarioVo.getTelefono();
            direccion=usuarioVo.getDireccion();
            rh=usuarioVo.getRh();
            correologin=usuarioVo.getCorreologin();
            password=usuarioVo.getPassword();
            rol=usuarioVo.getRol();
        } catch (Exception ex) {
            Logger.getLogger(DAO.UsuarioDao.class.getName()).log(Level.SEVERE,null,ex);
            
        }
    
    }
    @Override
    public boolean agregar() {
        Statement consultar;
        try {
            cnn=this.obtenerconexion();
            sentencia=cnn.createStatement();
              consultar=cnn.createStatement();
              resultado=consultar.executeQuery("SELECT DISTINCT LAST_INSERT_ID() FROM  ninos");
              while(resultado.next()){
              idninos=resultado.getInt(1);
                  
              }
            sentencia.executeUpdate("INSERT INTO padres(primerNombre,segundoNombre,primerApellido,segundoApellido,tipoDoc,numeroDoc,telefono,direccion,idninos) VALUES('"+primernombre+"','"+segundonombre+"','"+primerapellido+"','"+segundoapellido+"','"+documentoacu+"','"+numerodocumento+"','"+telefono+"','"+direccion+"','"+idninos+"');");
            operacion=true;
        } catch (SQLException e) {
             Logger.getLogger(DAO.UsuarioDao.class.getName()).log(Level.SEVERE,null,e);
        }
    return operacion;
    }
    public String validargenero(){
         String ge="";
        try {
             cnn=this.obtenerconexion();
    resultado=sentencia.executeQuery("SELECT * FROM genero where genero='"+genero+"'");
    while(resultado.next()){
       ge=resultado.getString(2);

    }
     
        } catch (SQLException e) {
            Logger.getLogger(DAO.UsuarioDao.class.getName()).log(Level.SEVERE,null,e); 
        }
   return  ge;   
    }
  
   
    public boolean agregarben(int gen) {
        try {
            cnn=this.obtenerconexion();
            sentencia=cnn.createStatement();
            sentencia.executeUpdate("INSERT INTO ninos(primerNombre,segundoNombre,primerApellido,segundoApellido,tipoDoc,numeroDoc,genero,fechaNacimiento,rh) VALUES('"+primernombrebeneficiario+"','"+segundonombrebeneficiario+"','"+primerapellidobeneficiario+"','"+segundoapellidobeneficiario+"','"+documentoben+"','"+numerodocumentoben+"','"+gen+"','"+fechanacimiento+"','"+rh+"');");
            operacion=true;
        } catch (SQLException e) {
           Logger.getLogger(DAO.UsuarioDao.class.getName()).log(Level.SEVERE,null,e);
        }
    return operacion;
    }
     
    public boolean agregaruser(int rol) {
        try {
            cnn=this.obtenerconexion();
            sentencia=cnn.createStatement();
            sentencia.executeUpdate("INSERT INTO usuario(nombreUsuario,clave,rol) VALUES('"+nombreusuario+"',MD5('"+clave+"'),'"+rol+"');");
            operacion=true;
        } catch (SQLException e) {
           Logger.getLogger(DAO.UsuarioDao.class.getName()).log(Level.SEVERE,null,e);
        }
    return operacion;
    }  
    public boolean ingresar(String usuario,String clave) {
       
       try {
           cnn=this.obtenerconexion();
           sentencia=cnn.createStatement();
           resultado= sentencia.executeQuery("SELECT * FROM usuario WHERE nombreUsuario='"+usuario+"' AND clave=MD5('"+clave+"')");
            while(resultado.next()){

                operacion=true;  
            }
           
       } catch (SQLException ex) {
           Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
       }
           return operacion;
         
    }
   public int validarrol(String usuario,String Clave){
      int rol=0;
      
       try {
           cnn=this.obtenerconexion();
           resultado= sentencia.executeQuery("SELECT * FROM usuario WHERE nombreUsuario='"+usuario+"' AND clave=MD5('"+Clave+"')");
           
           while(resultado.next()){
        rol=resultado.getInt("rol");
               System.out.println("s"+rol);
         }
       } 
       catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
       }
       return rol;
   }
     public ArrayList<UsuarioVO> all(String numeroDoc){
        ArrayList<UsuarioVO> lista=new ArrayList<UsuarioVO>();
        try {
            cnn=this.obtenerconexion();
            resultado=sentencia.executeQuery("select n.primerNombre,n.segundoNombre,n.primerApellido,n.segundoApellido,n.tipoDoc,n.numeroDoc,c.peso,c.talla,c.nino from ninos n inner join crecimientoninos c on n.idninos=c.nino WHERE n.numeroDoc='"+numeroDoc+"'");
            while (resultado.next()) {  
              UsuarioVO usuariovo=new UsuarioVO();
              usuariovo.setPrimernombrebeneficiario(resultado.getString("primerNombre"));
              usuariovo.setSegundonombrebeneficiario(resultado.getString("segundoNombre"));
              usuariovo.setPrimerapellidobeneficiario(resultado.getString("primerApellido"));
              usuariovo.setSegundoapellidobeneficiario(resultado.getString("segundoApellido"));
              usuariovo.setDocumentoben(resultado.getString("tipoDoc"));
              usuariovo.setNumerodocumentoben(resultado.getString("numeroDoc"));
             lista.add(usuariovo);
             peso=resultado.getDouble("peso");
             talla=resultado.getDouble("talla");
             cnino=resultado.getInt("nino");
            }
        } catch (SQLException ex) {
             Logger.getLogger(EventoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         this.allmedico(peso,talla,cnino);
        return lista;
    }
    public ArrayList allmedico(Double peso,Double talla,int cnino){
    ArrayList listamedic=new ArrayList();
    listamedic.add(peso);
    listamedic.add(talla);
    listamedic.add(cnino);
    return listamedic;
    }
    public boolean updatenino(String newfirstname,String newsecondname,String lastfirstname,String lastsecondname,String typedocument,String documentnumber){
        try {
            cnn=this.obtenerconexion();
            sentencia=cnn.createStatement();
            sentencia.executeUpdate("UPDATE ninos SET primerNombre='"+newfirstname+"',segundoNombre='"+newsecondname+"',primerApellido='"+lastfirstname+"',segundoApellido='"+lastsecondname+"',tipoDoc='"+typedocument+"' WHERE numeroDoc='"+documentnumber+"'");
            operacion=true;
        } catch (SQLException e) {
             Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, e);
        }
    return operacion;
    }
    public boolean updatecrecimiento(Double peso,Double talla,int nino){
        try {
            cnn=this.obtenerconexion();
            sentencia=cnn.createStatement();
            sentencia.executeUpdate("UPDATE crecimientoninos SET peso='"+peso+"',talla='"+talla+"' WHERE nino='"+nino+"'");
            operacion=true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, e);
        }
    return operacion;
    }
    
     

     
                
    
 }
  
    
    
    

