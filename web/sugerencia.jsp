<%-- 
    Document   : sugerencia
    Created on : 30-nov-2018, 19:45:16
    Author     : FAMILIA NOVOA
--%>

<%@page import="VO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       	<meta name = "view-port" content="width=device-width,initial-scale=1" charset="utf-8">
	<meta charset="utf-8">
       <title>Sugerencia</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- inject:css -->
        <link href="css/styleAdmin.css" rel="stylesheet" type="text/css"/>
        <!-- endinject -->
        <link rel="shortcut icon" href="img/favicon.png"/>
    </head>
    <body>
          <%     HttpSession sesion=(HttpSession)request.getSession();
                UsuarioVO uservo=(UsuarioVO)sesion.getAttribute("datos");
                if(uservo == null){
                request.getRequestDispatcher("ingresar.jsp").forward(request, response);
                }
                %>
        <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->
            <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo" href="usuario.jsp"><img src="img/images/logo.svg" alt="logo"/></a>
                    <a class="navbar-brand brand-logo-mini" href="usuario.jsp"><img src="img/images/logo-mini.svg" alt="logo"/></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-stretch">
                    <div class="search-field d-none d-md-block"></div>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                <div class="nav-profile-img">
                                    <img src="img/images/faces/face1.svg" alt="image">
                                    <span class="availability-status online"></span>             
                                </div>
                                <div class="nav-profile-text">
                                    <p class="mb-1 text-black">Usuario</p>
                                </div>
                            </a>
                             <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                                <form action="Usuario" method="post">
                                    <input type="hidden" name="opcion" value="3">
                                    <button class="btn btn-gradient-dark btn-fw">Cerrar Sesión</button>
                                </form>
                            </div>
                        </li>
                        <li class="nav-item nav-settings d-none d-lg-block">
                            <a class="nav-link" href="#">
                                <i class="mdi mdi-format-line-spacing"></i>
                            </a>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>
        <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item nav-profile">
                            <a href="#" class="nav-link">
                                <div class="nav-profile-image">
                                    <img src="img/images/faces/face1.svg" alt="profile">
                                    <span class="login-status online"></span> <!--change to offline or busy as needed-->              
                                </div>
                                <div class="nav-profile-text d-flex flex-column">
                                <span class="font-weight-bold mb-2"><%= uservo.getCorreologin()%></span>
                                    <span class="text-secondary text-small">Padre y/o Acudiente</span>
                                </div>
                                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                             </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="usuario.jsp">
                                <span class="menu-title">Inicio</span>
                                <i class="mdi mdi-home menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="registroHistorial.jsp">
                                <span class="menu-title">Datos de Crecimiento</span>
                                <i class="mdi mdi-table-edit menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                <span class="menu-title">Estándar Crecimiento</span>
                                    <i class="menu-arrow"></i>
                                    <i class="mdi mdi-chart-line menu-icon"></i>
                            </a>
                            <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"><a class="nav-link" href="ninoslongitud0a5.jsp" target="_blank">Altura Niños 0 A 5 </a></li>
                                    <li class="nav-item"><a class="nav-link" href="ninaslongitudmax5.jsp" target="_blank">Altura Niños Mayores A 5 </a></li>
                                    <li class="nav-item"><a class="nav-link" href="ninospeso0a5.jsp" target="_blank">Peso Niños 0 A 5 </a></li>
                                    <li class="nav-item"><a class="nav-link" href="ninospesomax5.jsp" target="_blank">Peso Niños Mayores A 5 </a></li>
                                <div class="dropdown-divider"></div>    
                                    <li class="nav-item"><a class="nav-link" href="ninaslongitud0a5.jsp" target="_blank">Altura Niñas 0 A 5 </a></li>
                                    <li class="nav-item"><a class="nav-link" href="ninaslongitudmax5.jsp" target="_blank">Altura Niñas Mayores A 5 </a></li>
                                    <li class="nav-item"><a class="nav-link" href="ninaspeso0a5.jsp" target="_blank">Peso Niñas 0 A 5 </a></li>
                                    <li class="nav-item"><a class="nav-link" href="ninaspesomax5.jsp" target="_blank">Peso Niñas Mayores A 5 </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="listaAlimentos.jsp">
                                <span class="menu-title">Lista de Alimentos</span>
                                <i class="mdi mdi-menu menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="reporte.jsp">
                                <span class="menu-title">Reportes</span>
                                <i class="mdi mdi-chart-bar menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="calendarioU.jsp">
                                <span class="menu-title">Buscar Menú</span>
                                <i class="mdi mdi-calendar-blank menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="sugerencia.jsp">
                                <span class="menu-title">Sugerencia Nutricional</span>
                                <i class="mdi mdi-message-text menu-icon"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
   <!-- partial -->
     <div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Sugerencia
            </h3>
          </div>
          <div class="row">
            <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-text">Desea enviar alguna sugerencia, Por favor diligencie los datos solicitados.</h5>
                  <br>
                    <form action="resultado1.jsp" method="post" class="form-sample">
                        <div class="table-responsive">
                            <div class="form-group">
                                <label for="exampleInputUsername1">Asunto</label>
                                <input type="text" name="asunto" class="form-control" id="exampleInputUsername1" placeholder="Asunto"/>
                            </div>
                            <div class="form-group">
                                 <label for="exampleInputUsername2">Mensaje</label>
                                <textarea name="mensaje" cols="40" rows="5" placeholder="Mensaje" id="exampleInputUsername2" class="form-control"></textarea>
                            </div>      
                        </div>
                         <button type="reset" class="btn btn-gradient-light btn-rounded btn-fw">Restablecer</button>
                         <input type="submit" class="btn btn-gradient-success btn-rounded btn-fw" value="Enviar"/>
                    </form>
                   </div>
                </div>
              </div>
            </div>
          </div>
 
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018. Todos los derechos reservados.</span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>


   