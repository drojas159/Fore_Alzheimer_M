<%-- 
    Document   : index.jsp
    Created on : 4/05/2020, 3:26:05 p. m.
    Author     : Daniela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="GISIC" />

    <title>GISIC</title>
    <link rel="icon" type="image/jpg" href="./assets/img/ICON.png" />

    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"
        crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
        crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand mr-1" href="#">
            <span>GISIC</span>
        </a>

        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#">
            <i class="fas fa-bars"></i>
        </button>

        <!-- Navbar Search -->
        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <!--<div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>-->
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ml-auto ml-md-0">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <label>Perfil</label>
                    <i class="fas fa-user fa-fw"></i></a>

                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">Configuración</a>
                    <!--<a class="dropdown-item" href="#">Activity Log</a>-->
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="login.jsp">Salir</a>
                </div>
            </li>
        </ul>
    </nav>

    <!--SideMenu-->
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">GISIC</div>
                        <!--Info-->
                        <a class="nav-link" href="index.jsp">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-home"></i>
                            </div>
                            Inicio
                        </a>
                        <a class="nav-link" href="about.jsp">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-info-circle"></i>
                            </div>
                            Acerca de GISIC
                        </a>

                        <div class="sb-sidenav-menu-heading">EXPLORAR</div>
                        <a class="nav-link" href="covid.jsp">
                            <div class="sb-nav-link-icon">
                                <i class="far fa-fw fa-file-alt"></i>
                            </div>
                            Covid-19
                        </a>
                        
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts"
                            aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-desktop"></i>
                            </div>
                            Fore-Alzheimer
                            <div class="sb-sidenav-collapse-arrow">
                                <i class="fas fa-angle-down"></i>
                            </div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                
                                <a class="nav-link" href="forealzheimer.jsp">
                                    <div class="sb-nav-link-icon">
                                    <i class="fas fa-fw fa-cloud-upload-alt"></i></div>
                                    Cargar Datos
                                </a>
                                <a class="nav-link" href="#">
                                    <div class="sb-nav-link-icon">
                                    <i class="fas fa-fw fa-signal"></i></div>
                                    Ejecutar Modelo Predictivo</a>
                                <a class="nav-link" href="#">
                                    <div class="sb-nav-link-icon">
                                    <i class="far fa-fw fa-file-alt"></i></div>
                                    Reportes</a>
                            </nav>
                        </div>
                        <!--

                        <div class="sb-sidenav-menu-heading">Text2</div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts"
                            aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-columns"></i>
                            </div>
                            Layouts
                            <div class="sb-sidenav-collapse-arrow">
                                <i class="fas fa-angle-down"></i>
                            </div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                            aria-expanded="false" aria-controls="collapsePages">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-book-open"></i>
                            </div>
                            Pages
                            <div class="sb-sidenav-collapse-arrow">
                                <i class="fas fa-angle-down"></i>
                            </div>
                        </a>
                        <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link collapsed" href="#" data-toggle="collapse"
                                    data-target="#pagesCollapseAuth" aria-expanded="false"
                                    aria-controls="pagesCollapseAuth">
                                    Authentication
                                    <div class="sb-sidenav-collapse-arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </div>
                                </a>
                                <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne"
                                    data-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="login.html">Login</a>
                                        <a class="nav-link" href="register.html">Register</a>
                                        <a class="nav-link" href="password.html">Forgot Password</a>
                                    </nav>
                                </div>
                                <a class="nav-link collapsed" href="#" data-toggle="collapse"
                                    data-target="#pagesCollapseError" aria-expanded="false"
                                    aria-controls="pagesCollapseError">
                                    Error
                                    <div class="sb-sidenav-collapse-arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </div>
                                </a>
                                <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne"
                                    data-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="401.html">401 Page</a>
                                        <a class="nav-link" href="404.html">404 Page</a>
                                        <a class="nav-link" href="500.html">500 Page</a>
                                    </nav>
                                
                                </div>

                                
                            </nav>
                                
                            
                        </div>
                        -->

                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small"> Conectado como:</div>
                    Nombre de Usuario
                    <!--configurar -->
                </div>
            </nav>
        </div>

        <!-- Panel -->
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">

                    <br>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Inicio</li>
                    </ol>

                    <div class="jumbotron">
                        <center>
                            <h1>¡Bienvenido a GISIC!</h1>
                            
                        </center>

                    </div>
            </main>

            <!--Footer -->

            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; GISIC</div>
                        <div>
                            <img src="./assets/img/logo.png" alt="" style="width:250px; height:63px;">
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/datatables-demo.js"></script>
</body>

</html>