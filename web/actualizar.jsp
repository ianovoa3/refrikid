<%@page import="java.util.ArrayList"%>
<%@page import="DAO.UsuarioDao"%>
<%@page import="VO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Actualizar</title>
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
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="ingresar.jsp"> 
                                    <i class="mdi mdi-logout mr-2 text-primary"></i>
                                    Cerrar Sesión
                                </a>
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
                                <span class="font-weight-bold mb-2">Usuario</span>
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
                                <span class="page-title-icon bg-gradient-primary text-white mr-2"><i class="mdi mdi-home"></i></span>
                                Actualizar Beneficiario
                            </h3>
                        </div>
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Beneficiario</h4>
                                        <div class="table-responsive">
                                            <% UsuarioVO usuario=new UsuarioVO();
                                            UsuarioDao usuarioDao=new UsuarioDao(usuario);
                                             ArrayList<UsuarioVO>lista=usuarioDao.all(request.getAttribute("identificacion").toString());
                                             ArrayList listamedic=usuarioDao.allmedico(usuarioDao.peso,usuarioDao.talla,usuarioDao.cnino);
                                            for (int i = 0; i < lista.size(); i++) {
                                            usuario=lista.get(i);
                                            %>
                                            <table border="1">
                                                <thead>
                                                    <tr>
                                                        <th>Primer Nombre</th>
                                                        <th>Segundo Nombre</th>
                                                        <th>Primer Apellido</th>
                                                        <th>Segundo Apellido</th>
                                                        <th>Tipo Documento</th>
                                                        <th>Numero de Documento</th>
                                                        <th>Peso</th>
                                                        <th>Talla</th>
                                                        <th>Identificacion</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <form action="Usuario" method="POST">
                                                            <td><input type="text" name="newfirstname" value="<%=usuario.getPrimernombrebeneficiario()%>"></td>
                                                            <td><input type="text" name="newsecondname" value="<%=usuario.getSegundonombrebeneficiario()%>"></td>
                                                            <td><input type="text" name="lastfirstname" value="<%=usuario.getPrimerapellidobeneficiario()%>"></td>
                                                            <td><input type="text" name="lastsecondname" value="<%=usuario.getSegundoapellidobeneficiario()%>"></td>
                                                            <td><input type="text" name="typedocument" value="<%=usuario.getDocumentoben()%>"></td>
                                                            <td><input type="text" name="documentnumber" value="<%=usuario.getNumerodocumentoben()%>" readonly="readonly"></td>
                                                        <%}%>
                                                            <td><input type="text" name="peso" value="<%=listamedic.get(0)%>"></td>
                                                            <td><input type="text" name="talla" value="<%=listamedic.get(1)%>"></td>
                                                            <td><input type="text" name="nino" value="<%=listamedic.get(2)%>" readonly="readonly"></td>
                                                            <td><input type="hidden" name="opcion" value="6">
                                                            <input type="submit" class="btn btn-gradient-success" value="Actualizar"/>
                                                        </form>
                                                    </tr>     
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>  
                        </div>
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
        </div>    
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

