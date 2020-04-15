<%-- 
    Document   : login
    Created on : 14/04/2020, 4:36:19 p. m.
    Author     : Daniela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href='https://fonts.googleapis.com/css?family=Candal' rel='stylesheet'>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<link href="css/loginstyle.css" rel="stylesheet">
<script type="text/javascript" src="./js/loginscript.js" ></script>
<head>
    <title>Fore-Alzheimer</title>
    <link rel="icon" type="image/jpg" href="./image/ICON.png"/>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div id="first">
                    <center> 
                        <div class="titulo">
                            <p class="text-center"> Fore-Alzheimer

                            </p>
                        </div></center>
                    <br>
                    <div class="myform form ">
                        <br>

                        <div class="logo mb-3">
                            <div class="login">
                                <p class="text-center"> Ingresar
                                    </a></p>
                            </div>

                        </div>
                        <form action="" method="post" name="login">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Usuario</label>
                                <input type="email" name="email"  class="form-control" id="email" required > 
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Contraseña</label>
                                <input type="password" name="password" id="password"  class="form-control" required >
                            </div>
                            <br>
                            <br>
                            <div class="col-md-12 text-center ">
                                <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                            </div>

                            <br>

                            <div class="col-md-12 ">
                                <div class="login-or">
                                    <hr class="hr-or">
                                    <center>
                                        <span>Universidad Católica de Colombia</span>
                                    </center>
                                </div>
                            </div>



                    </div>
                </div>
            </div>
        </div>   

</body>