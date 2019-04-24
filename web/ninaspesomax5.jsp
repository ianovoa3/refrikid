<%-- 
    Document   : ninaspesomaxjsp
    Created on : 20/03/2019, 03:59:59 PM
    Author     : Brandon
--%>

<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
              <%
                   XYSeries primerpercentil=new XYSeries("Primer Percentil");
           primerpercentil.add(60,14);
           primerpercentil.add(72,16);
           primerpercentil.add(84,18);
           primerpercentil.add(96,20);
           primerpercentil.add(108,22);
           
           primerpercentil.add(120,24);
           primerpercentil.add(132,27);
           primerpercentil.add(144,30);
           primerpercentil.add(156,33);
           primerpercentil.add(168,36.5);
           primerpercentil.add(180,40);
           
           primerpercentil.add(192,42);
           primerpercentil.add(204,43);
           primerpercentil.add(216,44);
           primerpercentil.add(228,45);          
           XYSeries segundopercentil=new XYSeries("Segundo Percentil");
           segundopercentil.add(60, 16);
           segundopercentil.add(72, 18);
           segundopercentil.add(84, 20.5);
           segundopercentil.add(96, 23);
           segundopercentil.add(108,26);           
           segundopercentil.add(120, 29);
           segundopercentil.add(132, 32);           
           segundopercentil.add(144, 37);
           segundopercentil.add(156, 40);
           
           segundopercentil.add(168, 44);           
           segundopercentil.add(180, 46.5);           
           segundopercentil.add(192, 48.5);
           segundopercentil.add(204, 50);
           segundopercentil.add(216, 51);
           segundopercentil.add(228, 52);
           XYSeries tercerpercentil=new XYSeries("Tercer Percentil");
           tercerpercentil.add(60,18);
           tercerpercentil.add(72,20);
           tercerpercentil.add(84,23);
           tercerpercentil.add(96,26);
           tercerpercentil.add(108,29);           
           tercerpercentil.add(120,33);
           tercerpercentil.add(132,37);
           tercerpercentil.add(144,42);
           tercerpercentil.add(156,46);
           
           tercerpercentil.add(168,49);           
           tercerpercentil.add(180,52);           
           tercerpercentil.add(192,54);
           tercerpercentil.add(204,55);
           tercerpercentil.add(216,56);
           tercerpercentil.add(228,57);
           XYSeries cuartopercentil=new XYSeries("Cuarto Percentil");
           cuartopercentil.add(60, 22);
           cuartopercentil.add(72, 25);
           cuartopercentil.add(84, 29);
           cuartopercentil.add(96, 33);
           cuartopercentil.add(108, 38);           
           cuartopercentil.add(120,43.5);
           cuartopercentil.add(132,49.5);
           cuartopercentil.add(144, 55.5);
           cuartopercentil.add(156, 61);
           
           cuartopercentil.add(168, 65.5);           
           cuartopercentil.add(180, 68.5);           
           cuartopercentil.add(192, 70.5);
           cuartopercentil.add(204, 71.5);
           cuartopercentil.add(216, 73);
           cuartopercentil.add(228, 74); 
           
            XYSeries quintopercentil=new XYSeries("Quinto Percentil");
           quintopercentil.add(60, 25);
           quintopercentil.add(72, 29);
           quintopercentil.add(84, 33);
           quintopercentil.add(96, 38);
           quintopercentil.add(108, 44);           
           quintopercentil.add(120, 51);
           quintopercentil.add(132, 58);           
           quintopercentil.add(144, 65);
           quintopercentil.add(156, 72);
           
           quintopercentil.add(168, 77);           
           quintopercentil.add(180, 81.5);           
           quintopercentil.add(192, 84);
           quintopercentil.add(204, 85.5);
           quintopercentil.add(216, 87.5);
           quintopercentil.add(228, 88.5);
          
                  
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           JFreeChart graficapesonino=ChartFactory.createXYLineChart("GRAFICA DE PESO NIÑAS DE 5 A 19 AÑOS", "Edad por meses", "Peso(kg)", dataset, PlotOrientation.VERTICAL, true,true, false);
           XYPlot plot=graficapesonino.getXYPlot();
           XYLineAndShapeRenderer renderer=new XYLineAndShapeRenderer();
           renderer.setSeriesPaint(0,Color.RED);
           renderer.setSeriesStroke(0, new BasicStroke(2.0f));
           renderer.setSeriesPaint(1,Color.ORANGE);
           renderer.setSeriesStroke(1, new BasicStroke(3.0f));
           renderer.setSeriesPaint(2,Color.GREEN);
           renderer.setSeriesStroke(2, new BasicStroke(3.0f));
           renderer.setSeriesPaint(3,Color.orange);
           renderer.setSeriesStroke(3, new BasicStroke(3.0f));
           renderer.setSeriesPaint(4,Color.RED);
           renderer.setSeriesStroke(4, new BasicStroke(3.0f));
           
           
           plot.setRenderer(renderer);
           
  response.setContentType("image/JPG");
  OutputStream sa=response.getOutputStream();
  ChartUtilities.writeChartAsJPEG(sa, graficapesonino, 540,520);
        %>      
                  
        
        %>
    </body>
</html>
