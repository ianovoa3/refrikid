/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.MenuDAO;
import DAO.ProductoDAO;
import VO.MenuVO;
import VO.ProductoVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author a
 */
@WebServlet(name = "ControladorProducto", urlPatterns = {"/Menu"})
public class ControladorMenu extends HttpServlet {
 int contador=0;
 int acu;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String vegetal=request.getParameter("vegetal");
            String legumbre=request.getParameter("legumbre");
            String fruta=request.getParameter("fruta");
            String carne=request.getParameter("carne");
            String lacteo=request.getParameter("lacteo");
            String pescado=request.getParameter("pescado");
            String cereal=request.getParameter("cereal");
            String embutido=request.getParameter("embutido");
            String bebidas=request.getParameter("bebidas");
            int opcion=Integer.parseInt(request.getParameter("opcion"));
         
            MenuVO menuvo=new MenuVO();
            MenuDAO menudao=new MenuDAO(menuvo);
            switch(opcion){
                case 1:
                    request.setAttribute("vegetalmenu", vegetal);
                    request.setAttribute("legumbremenu",legumbre);
                    request.setAttribute("frutamenu",fruta);
                    request.setAttribute("carnemenu",carne);
                    request.setAttribute("lacteomenu",lacteo);
                    request.setAttribute("pescadomenu",pescado);
                    request.setAttribute("cerealmenu",cereal);
                    request.setAttribute("embutidomenu", embutido);
                    request.setAttribute("bebidastext",bebidas);
                    request.getRequestDispatcher("menu.jsp").forward(request, response);
                break;
                case 2:
                    Date fecha=new Date();
                    String fechactual= new SimpleDateFormat("yyyy-MM-dd").format(fecha);
                    String vegetaltext=request.getParameter("vegetalmenu");
                    String legumbretext=request.getParameter("legumbremenu");
                    String frutatext=request.getParameter("frutamenu");
                    String carnetext=request.getParameter("carnemenu");
                    String lacteotext=request.getParameter("lacteomenu");
                    String pescadotext=request.getParameter("pescadomenu");
                    String cerealtext=request.getParameter("cerealmenu");
                    String embutidotext=request.getParameter("embutidomenu");
                    String bebidastext=request.getParameter("bebidastext");
                    String descripcion=request.getParameter("Descripcion");
                    contador=contador+1;
                    if(menudao.consultarid(vegetaltext,legumbretext,frutatext,carnetext,lacteotext,pescadotext,cerealtext,embutidotext,contador,fechactual,bebidastext,descripcion)){
                        out.print("<script>alert('Nuevo menú agregado'); location.href =\"administrador.jsp\"</script>");
                    }else {    
                        out.print("<script>alert('No ingreso ningun producto');location.href =\"menu.jsp\";</script>");
                    }    
                break;
                case 3:
                    String nombreProducto=request.getParameter("nombreProducto");
                    int categoria=Integer.parseInt(request.getParameter("categoria"));
                    Double calorias=Double.parseDouble(request.getParameter("calorias"));
                    Double hidratos=Double.parseDouble(request.getParameter("hidratos"));
                    Double grasas=Double.parseDouble(request.getParameter("grasas"));
                    Double proteinas=Double.parseDouble(request.getParameter("proteinas"));
                    ProductoVO productovo=new ProductoVO(nombreProducto,categoria,calorias,hidratos,grasas,proteinas);
                    ProductoDAO productodao=new ProductoDAO(productovo);
                    System.out.println(productodao.agregarProducto());
                    request.getRequestDispatcher("administrador.jsp").forward(request, response);
                    break;
            }
        }        
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
