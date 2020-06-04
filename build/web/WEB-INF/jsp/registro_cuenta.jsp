<%-- 
    Document   : registro_cuenta
    Created on : 1/08/2019, 01:48:19 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
                        <li>
                            <a href="registro_tarjeta.htm"><i class="menu-icon fa fa-address-card-o" aria-hidden="true"></i>Registro de Tarjeta</a>
                        </li>
                        <li>
                            <a href="motivo_cuenta.htm"><i class="menu-icon fa fa-list" aria-hidden="true"></i>Catálogo Motivos Cuentas</a>
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
                        <a class="navbar-brand" href="./"><img class="image" src="images/logo.png" alt="Logo"><label style="color: #435466; font-weight: bold;">Sistema de Administración <label style="color: #00c292; font-weight: bold;">de Monederos</label></label></a>
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
                                <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                            </div>
                        </div>

                    </div>
                </div>
            </header>
            <!-- /#header -->
            <!-- Contenido -->
            <div class="content">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <center><h3><b>Registro de cuenta</b><br></h3></center>
                        </div>
                    </div>
                    <c:forEach items="${respuesta}" var="value">
                        <input value="${value}" id="respuesta" hidden>
                    </c:forEach>

                    <div class="col-lg-12" id="registrar_cuenta">
                        <form action="registro_cuenta_insert.htm" method="post" enctype="multipart/form-data" name="myForm" accept-charset="ISO-8859-1" onsubmit="return(validateForm1());">
                            <div class="bordes3">                        
                                <center><label for=""><b>DATOS DE USUARIO</b></label></center><br>
                                <div class="form-group row justify-content-center">    
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Nombre:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="text" class="form-control" name="nombre" id="nombre" autocomplete="off" >
                                        <p id="errorNombre" style="color: red; font-size: 12px; height: 2px;"></p>
                                    </div>                                
                                </div>
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Primer apellido:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="text" class="form-control" name="apellido1" id="apellido1" autocomplete="off">
                                        <p id="errorApellido1" style="color: red; font-size: 12px; height: 0px;"></p>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Segundo apellido:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="text" class="form-control" name="apellido2" id="apellido2" autocomplete="off" >
                                        <p id="errorApellido2" style="color: red; font-size: 12px; height: 0px;"></p>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Teléfono:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="text" class="form-control" name="telefono" id="telefono" autocomplete="off">
                                        <p id="errorTelefono" style="color: red; font-size: 12px; height: 0px;"></p>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Email:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="text" class="form-control" name="email" id="email" autocomplete="off">
                                        <p id="errorEmail" style="color: red; font-size: 12px; height: 0px;"></p>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Número de cuenta:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="text" class="form-control" name="numcuenta" id="numcuenta" autocomplete="off" onblur="obtenerCuenta(this);" onkeyup="obtenerCuenta(this);" >
                                        <p id="errorCuenta" style="color: red; font-size: 12px; height: 0px;"></p>
                                        <input id="respuesta" name="respuesta" hidden />
                                    </div>
                                </div>
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Fotografía:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="file" class="form-control-file" id="foto" name="foto" onchange="form.submit()">
                                        <p id="errorFoto" style="color: red; font-size: 12px; height: 0px;"></p>
                                    </div>
                                </div>
                                <p id="error" style="color: red; font-size: 12px; height: 5px;"></p>
                                <div class="form-group row padd">
                                    <a id="cambio" style="color: white;"  class="btn btnEdit padd">Asignar tarjeta</a>
                                </div>

                            </div>
                            <div class="col-lg-12">
                                <center><button id="submit" type="submit" class="btn btnGuardar">GUARDAR</button></center>
                            </div>      
                        </form>
                    </div>
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
        <script type="text/javascript">
            $(document).ready(function () {

                $('#cambio').click(function () {
                    if (validateForm1() !== false) {
                        var nombre = document.getElementById("nombre").value;
                        var apellido1 = document.getElementById("apellido1").value;
                        var apellido2 = document.getElementById("apellido2").value;
                        var telefono = document.getElementById("telefono").value;
                        var email = document.getElementById("email").value;
                        var numcuenta = document.getElementById("numcuenta").value;
                        var foto = document.getElementById("foto").files[0].name;

                        location.href = "cuenta_asignacion_tarjeta.htm?nombre=" + nombre + "&apellido1=" + apellido1 + "&apellido2=" + apellido2 + "&telefono=" + telefono + "&email=" + email + "&numcuenta=" + numcuenta + "&foto=" + foto;

                    }
                });
            });

            $(document).ready(function () {
                var parameter = $('#respuesta').val();
                if (parameter === "1") {
                    toastr.success('Cuenta registrada!', 'Exito', {
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

        <script type="text/javascript">
            document.getElementById('foto').onchange = function () {
                var fileInput = document.getElementById('foto');
                var filename = fileInput.files[0].name;
                var ruta = "foto=" + filename;
                var formData = new FormData();
                var myformData = new FormData();
                myformData.append('foto', $('#foto')[0].files[0]);
                $.ajax({
                    url: 'subir_foto.htm',
                    type: "POST",
                    data: myformData,
                    mimeTypes: "multipart/form-data",
                    contentType: false,
                    cache: false,
                    processData: false
                });
            };
        </script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#errorNombre').hide();
                $('#errorApellido1').hide();
                $('#errorApellido2').hide();
                $('#errorTelefono').hide();
                $('#errorEmail').hide();
                $('#errorCuenta').hide();
                $('#errorFoto').hide();

            });
        </script>

        <script type="text/javascript">
            function obtenerCuenta(numcuenta) {
                var data = numcuenta.value;
                var ruta = "No=" + data;
                $.ajax({
                    url: '<c:url value="cuenta_existe.htm" />',
                    type: 'GET',
                    data: ruta,
                    success: function (data, textStatus, jqXHR) {
                        if (data === "1") {
                            $('#respuesta').val('1');
                            $('#errorCuenta').show();
                            document.getElementById("errorCuenta").innerHTML = "Número de cuenta existente.";
                        } else {
                            $('#respuesta').val('0');
                            $('#errorCuenta').hide();
                            document.getElementById("errorCuenta").innerHTML = "";
                        }
                    }
                });
            }
        </script>

        <script type = "text/javascript">
            var nombre;
            // Form validation code will come here.
            function validateForm1() {
                var validateNames = /^[a-zA-ZáéíóúṄñ\s]+$/;
                var validatePhone = /^[0-9]{1,10}$/;
                var validateCuenta = /^[0-9]{1,20}$/;
                var validateEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;


                if (document.myForm.nombre.value === "") {
                    $('#errorNombre').show();
                    document.getElementById("errorNombre").innerHTML = "Por favor, llene este campo.";
                    document.myForm.nombre.focus();
                    return false;
                } else if (!validateNames.test(document.myForm.nombre.value)) {
                    $('#errorNombre').show();
                    document.getElementById("errorNombre").innerHTML = "Formato Incorrecto";
                    document.myForm.nombre.focus();
                    return false;
                } else {
                    $('#errorNombre').hide();
                    document.getElementById("errorNombre").innerHTML = "";
                }

                if (document.myForm.apellido1.value === "") {
                    $('#errorApellido1').show();
                    document.getElementById("errorApellido1").innerHTML = "Por favor, llene este campo.";
                    document.myForm.apellido1.focus();
                    return false;
                } else if (!validateNames.test(document.myForm.apellido1.value)) {
                    $('#errorApellido1').show();
                    document.getElementById("errorApellido1").innerHTML = "Formato Incorrecto";
                    document.myForm.apellido1.focus();
                    return false;
                } else {
                    $('#errorApellido1').hide();
                    document.getElementById("errorApellido1").innerHTML = "";
                }

                if (document.myForm.apellido2.value === "") {
                    $('#errorApellido2').show();
                    document.getElementById("errorApellido2").innerHTML = "Por favor, llene este campo.";
                    document.myForm.apellido2.focus();
                    return false;
                } else if (!validateNames.test(document.myForm.apellido2.value)) {
                    $('#errorApellido2').show();
                    document.getElementById("errorApellido2").innerHTML = "Formato Incorrecto";
                    document.myForm.apellido2.focus();
                    return false;
                } else {
                    $('#errorApellido2').hide();
                    document.getElementById("errorApellido2").innerHTML = "";
                }

                if (document.myForm.telefono.value === "") {
                    $('#errorTelefono').show();
                    document.getElementById("errorTelefono").innerHTML = "Por favor, llene este campo.";
                    document.myForm.telefono.focus();
                    return false;
                } else if (!validatePhone.test(document.myForm.telefono.value)) {
                    $('#errorTelefono').show();
                    document.getElementById("errorTelefono").innerHTML = "Formato Incorrecto";
                    document.myForm.telefono.focus();
                    return false;
                } else {
                    $('#errorTelefono').hide();
                    document.getElementById("errorTelefono").innerHTML = "";
                }

                if (document.myForm.email.value === "") {
                    $('#errorEmail').show();
                    document.getElementById("errorEmail").innerHTML = "Por favor, llene este campo.";
                    document.myForm.email.focus();
                    return false;
                } else if (!validateEmail.test(document.myForm.email.value)) {
                    $('#errorEmail').show();
                    document.getElementById("errorEmail").innerHTML = "Formato Incorrecto";
                    document.myForm.email.focus();
                    return false;
                } else {
                    $('#errorEmail').hide();
                    document.getElementById("errorEmail").innerHTML = "";
                }

                if (document.myForm.numcuenta.value === "") {
                    $('#errorCuenta').show();
                    document.getElementById("errorCuenta").innerHTML = "Por favor, llene este campo.";
                    document.myForm.numcuenta.focus();
                    return false;
                } else if (!validateCuenta.test(document.myForm.numcuenta.value)) {
                    $('#errorCuenta').show();
                    document.getElementById("errorCuenta").innerHTML = "Formato Incorrecto";
                    document.myForm.email.focus();
                    return false;
                } else if (document.myForm.respuesta.value === '1') {
                    $('#errorCuenta').show();
                    document.getElementById("errorCuenta").innerHTML = "Número de cuenta existente.";
                    document.myForm.numcuenta.focus();
                    return false;
                } else {
                    $('#errorCuenta').hide();
                    document.getElementById("errorCuenta").innerHTML = "";
                }

                if (document.myForm.foto.value === "") {
                    $('#errorFoto').show();
                    document.getElementById("errorFoto").innerHTML = "Por favor, carge una foto.";
                    document.myForm.foto.focus();
                    return false;
                } else {
                    $('#errorFoto').hide();
                    document.getElementById("errorFoto").innerHTML = "";
                }

                return(true);
            }

        </script>
    </body>
</html>