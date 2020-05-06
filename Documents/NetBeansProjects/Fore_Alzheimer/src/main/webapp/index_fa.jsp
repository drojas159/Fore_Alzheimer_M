<%-- 
    Document   : index
    Created on : 3/01/2020, 01:25:51 PM
    Author     : Daniela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="es">
    <head>
        <title>Fore-Alzheimer</title>
        <link rel="icon" type="image/jpg" href="./image/ICON.png"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

    </head>
    <body>
        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <!--<a class="navbar-brand mr-1" href="#">Fore-Alzheimer</a>-->
            <a class="navbar-brand mr-1">
                <a class="navbar-brand mr-1" href="index.jsp" >
                    <i class="fas fa-home"></i>
                   
                    <span>GISIC</span>
                </a>
                <li class="breadcrumb-item active">
                    <a  href="#" color="#a5e0ff">
                        
                       <strong>
                        <span>Fore-Alzheimer</span>
                    </strong>
                    </a>
                </li>
                
            </a>
            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">


                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <label>Perfil</label> <i class="fas fa-user-circle fa-fw"> </i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Configuraciones</a> 
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Salir</a>
                    </div>
                </li>
            </ul>

        </nav>
        <!-- PANEL -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">

                <!-- 1. Panel de Conrtrol 
                <li class="nav-item active">
                    <a class="nav-link" href="#">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Panel de Control</span>
                    </a>
                </li>-->

                <!-- 2. Cargar datos -->
                <li class="nav-item">
                    <a class="nav-link" href="ConsultarDoc.jsp" >
                        <i class="fas fa-fw fa-cloud-upload-alt"></i>
                        <span>Cargar Datos</span>
                    </a>
                    <!--<div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Login Screens:</h6>
                        <a class="dropdown-item" href="login.html">Login</a>
                        <a class="dropdown-item" href="register.html">Register</a>
                        <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Other Pages:</h6>
                        <a class="dropdown-item" href="404.html">404 Page</a>
                        <a class="dropdown-item" href="blank.html">Blank Page</a>
                    </div>
                    -->
                </li>
                <!-- 3. Ejecutar Modelo-->
                <li class="nav-item">
                    <a class="nav-link" href="ConsultarDocPred.jsp">
                        <i class="fas fa-fw fa-signal"></i>
                        <span>Ejecutar Modelo Predictivo</span></a>
                </li>

                <!-- 4. Reportes -->
                <li class="nav-item">
                    <a class="nav-link" href="ConsultarDocRes.jsp"> 
                        <i class="far fa-fw fa-file-alt"></i>
                        <span>Reportes</span></a>
                </li>
            </ul>
            <!-- Fin sidebar -->
            <!--Inicio contenido -->
            <div id="content-wrapper">
                <div class="container-fluid">
                    <!-- Nota-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Fore-Alzheimer</a>
                        </li>
                        <li class="breadcrumb-item active">Inicio</li>
                    </ol>
                    <div class="jumbotron">
                        <center>
                        <h1>¡Bienvenido a Fore-Alzheimer!</h1>
                        <br>
                        <p>En este sistema podrá cargar los archivos .csv generados con el Emotiv EPOC+ y el Eye Tracker que fueron 
                            resultado de una serie de terapias cognitivas aplicadas a un paciente que desea conocer su probabilidad de padecer la Enfermedad de Alzheimer a los 65 años.
                        <br>   
                        <br>
                        <p>Haga click para empezar a cargar datos.</p>
                        <br>
                        <p><a class="btn btn-primary btn-lg" href="ConsultarDoc.jsp" role="button">Cargar Datos</a></p>
                        </center>
                    </div>
                    



                </div>



                <!-- Footer -->
                <footer class="sticky-footer">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Universidad Católica de Colombia</span>
                        </div>
                    </div>
                </footer>
                <!-- Fin Footer -->
            </div>


        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>
</html>
