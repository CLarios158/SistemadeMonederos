<%-- 
    Document   : tarjeta_excel
    Created on : 1/08/2019, 02:08:51 PM
    Author     : Pavillion-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sistema de Administración de Monederos</title>
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />

        <link rel="apple-touch-icon" href="images/logo.png">
        <link rel="shortcut icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <script src="https://code.jquery.com/jquery-3.4.1.min.js"  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" ></script>

    </head>

    <body>
        <!-- Left Panel -->
        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">
                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="index.htm"><i class="menu-icon fa fa-home" aria-hidden="true"></i>INICIO </a>
                        </li>
                        <li class="menu-title">Menu</li><!-- /.menu-title -->
                        <li>
                            <a href="gestion_cuenta.htm"><i class="menu-icon fa fa-arrow-left" aria-hidden="true"></i>Gestión de Cuentas</a>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </aside>
        <!-- /#left-panel -->
        <!-- Right Panel -->
        <div id="right-panel" class="right-panel">
            <!-- Header-->
            <header id="header" class="header">
                <div class="top-left">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="./"><img class="image" src="images/logo.png" alt="Logo"/><label style="color: #435466; font-weight: bold;">Sistema de Administración <label style="color: #00c292; font-weight: bold;">de Monederos</label></label></a>
                        <!--<a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>-->
                        <!--<a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>-->  
                    </div>
                </div>
                <div class="top-right">
                    <div class="header-menu">
                        <div class="user-area dropdown float-right">
                            <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                            </a>

                            <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Cerrar Sesión</a>
                            </div>
                        </div>

                    </div>
                </div>
            </header>
            <!-- /#header -->
            <!-- Contenido -->
            <div class="content">
                <div class="row">
                    <div class="col-lg-12 description">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <center><h3><b>Registro de Tarjeta</b></h3></center>
                                </div>
                            </div>
                        </div>
                        <br><br><br>
                        <c:forEach items="${respuesta}" var="value">
                            <input value="${value}" id="respuesta" hidden>
                        </c:forEach>
                        <form action="subir_excel.htm" method="post" enctype="multipart/form-data">
                            <div class="row marco">
                                <div class="col-lg-12">
                                    <br><br>
                                    <div class="form-group row justify-content-center">
                                        <div class="col-sm-6 align-self-center">
                                            <label><b>Selecciona el archivo Excel de tu computadora:</b></label>
                                        </div>
                                        <div class="col-sm-5 align-self-center">
                                            <input type="file" name="file">
                                            <p id="errorFile" style="color: red; font-size: 12px; height: 0px;"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <br>
                                    <div class="form-group row justify-content-center">
                                        <button class="btn btnGuardar">Guardar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <c:forEach items="${error}" var="value">
                        <input value="${value}" id="error" hidden>
                    </c:forEach>
                </div>
                <!-- /.contenido -->
                <!-- Footer -->
                <footer class="site-footer">
                    <div class="footer-inner">
                        <div class="row">
                            <div class="col-lg-10">
                                <center>Copyright &copy; Sistema de Administración de Monederos 2020</center>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- /.site-footer -->
            </div>
            <!-- /#right-panel -->

            <!-- Scripts -->
            <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>

            <script type="text/javascript">

                $(document).ready(function () {
                    var parameter = $('#respuesta').val();
                    if (parameter === "1") {
                        toastr.success('Los datos han sido guardados en la base de datos!', 'Exito', {
                            "positionClass": "toast-bottom-right",
                            "timeOut": "5000"
                        });
                    } else if (parameter === "0") {
                        toastr.error('Número(s) de tarjeta existente!', 'Error', {
                            "positionClass": "toast-bottom-right",
                            "timeOut": "5000"
                        });
                    }

                    var parameter = $('#error').val();
                    if (parameter === "-1") {
                        toastr.error('Ocurrió un error en la base de datos.', 'Error', {
                            "positionClass": "toast-bottom-right",
                            "timeOut": "5000"
                        });
                    }
                });
            </script>

            <script type = "text/javascript">
                $('#errorFile').hide();
                // Form validation code will come here.
                function validateForm1() {

                    if (document.myForm.file.value === "") {
                        $('#errorFile').show();
                        document.getElementById("errorFile").innerHTML = "Seleccioné un archivo.";
                        document.myForm.file.focus();
                        return false;
                    } else {
                        $('#errorFile').hide();
                        document.getElementById("errorFile").innerHTML = "";
                    }

                    return(true);
                }

            </script>

    </body>
</html>