	/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Brandon
 */
public class Email {
    public  boolean enviarCorreo( String mensaje, String asunto){
    boolean enviado = false;
        try {
            
          String host ="smtp.gmail.com";
          String de = "refrikid123@gmail.com";
          String para = "refrikid123@gmail.com";
          String clave = "Holamundo123";
        
            Properties prop = System.getProperties();
            
            prop.put("mail.smtp.starttls.enable","true");
            prop.put("mail.smtp.host",host);
            prop.put("mail.smtp.user",de);
            prop.put("mail.smtp.password",clave);
            prop.put("mail.smtp.port",587);            
            prop.put("mail.smtp.auth","true");
            
            Session sesion = Session.getDefaultInstance(prop, null);
            MimeMessage message = new MimeMessage(sesion);
            
            message.setFrom(new InternetAddress(de));
            
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(para));
            message.setSubject(asunto);
            message.setText(mensaje);
            
            Transport transport = sesion.getTransport("smtp");
            transport.connect(host,de,clave);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            enviado =true;
            
        } catch (Exception e) {
         e.printStackTrace();
        }
        return enviado;
    }
}
