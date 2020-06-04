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
                            <a href="registro_cuenta.htm"><i class="menu-icon fa fa-user-plus" aria-hidden="true"></i>Registro de Cuenta</a>
                        </li>
                        <li>
                            <a href="registro_tarjeta.htm"><i class="menu-icon fa fa-address-card-o" aria-hidden="true"></i>Registro de Tarjeta</a>
                        </li>
                        <li>
                            <a href="motivo_cuenta.htm"><i class="menu-icon fa fa-list" aria-hidden="true"></i></i>Catálogo Motivos Cuentas</a>
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
                            <center><h3><b>Registro de tarjeta</b><br></h3></center>
                        </div>
                    </div>
                    <c:forEach items="${respuesta}" var="value">
                        <input value="${value}" id="respuesta" hidden>
                    </c:forEach>

                    <div class="col-lg-12"> 
                        <form action="registro_cuenta_asignacion_tarjeta.htm" method="post" enctype="multipart/form-data" name="myForm" accept-charset="ISO-8859-1" onsubmit="return(validateForm());">
                            <div class="bordes4">
                                <center><label><b>DATOS DE TARJETA</b></label></center><br>                            
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Tipo de tarjeta:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input id="nombre" name="nombre" hidden/>
                                        <input id="apellido1" name="apellido1" hidden/>
                                        <input id="apellido2" name="apellido2" hidden/>
                                        <input id="email" name="email" hidden/>
                                        <input id="telefono" name="telefono"  hidden/>
                                        <input id="numcuenta" name="numcuenta" hidden/>
                                        <input id="foto" name="foto" hidden/>
                                        <select class="form-control" id="tipo" name="tipo">
                                            <option value="">Seleccione</option>
                                            <option value="1">Preferente</option>
                                            <option value="2">Ordinaria</option>
                                        </select>
                                        <p id="errorTipo" style="color: red; font-size: 12px; height: 2px;"></p>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Número de tarjeta*:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="text" class="form-control" id="numero_tarjeta" name="numero_tarjeta"  autocomplete="off" pattern="[0123456789]{1,20}" onblur="obtenerTarjeta(this);" onkeyup="obtenerTarjeta(this);">
                                        <p id="errorTarjeta" style="color: red; font-size: 12px; height: 2px;"></p>
                                        <input id="respuesta" name="respuesta" hidden />
                                    </div>
                                </div>

                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Fecha de emisión:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
                                            <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker1" id="emision" name="emision" autocomplete="off"/>
                                            <div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
                                                <div class="input-group-text" ><i class="fa fa-calendar"></i></div>
                                            </div>
                                        </div>
                                        <p id="errorEmision" style="color: red; font-size: 12px; height: 2px;"></p>
                                    </div>
                                </div>

                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Fecha de vencimiento:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <div class="input-group date" id="datetimepicker2" data-target-input="nearest">
                                            <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker2" id="vencimiento" name="vencimiento" autocomplete="off"/>
                                            <div class="input-group-append" data-target="#datetimepicker2" data-toggle="datetimepicker">
                                                <div class="input-group-text" ><i class="fa fa-calendar"></i></div>
                                            </div>
                                        </div>
                                        <p id="errorVencimiento" style="color: red; font-size: 12px; height: 2px;"></p>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-center">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Lugar de expedición:</b></label>
                                    </div>
                                    <div class="col-sm-5 align-self-center">
                                        <input type="text" class="form-control" id="lugar" name="lugar" autocomplete="off" pattern="[A-Za-záéíóúñÑÁÉÍÓÚ,\s]{1,800}">
                                        <p id="errorLugar" style="color: red; font-size: 12px; height: 2px;"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <center><button type="submit" class="btn btnGuardar">GUARDAR</button></center>
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
        <script>
            $(document).ready(function () {
                var url_string = window.location.href;
                var url = new URL(url_string);
                var nombre = url.searchParams.get("nombre");
                var apellido1 = url.searchParams.get("apellido1");
                var apellido2 = url.searchParams.get("apellido2");
                var telefono = url.searchParams.get("telefono");
                var email = url.searchParams.get("email");
                var numcuenta = url.searchParams.get("numcuenta");
                var foto = url.searchParams.get("foto");
                console.log(foto.value);
                $('#nombre').val(nombre);
                $('#apellido1').val(apellido1);
                $('#apellido2').val(apellido2);
                $('#telefono').val(telefono);
                $('#email').val(email);
                $('#numcuenta').val(numcuenta);
                $('#foto').val(foto);
            });
        </script>

        <script type="text/javascript">

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
            $(function () {
                $('#datetimepicker1').datetimepicker({
                    format: 'DD/MM/YYYY HH:mm:ss'
                });
            });
            $(function () {
                $('#datetimepicker2').datetimepicker({
                    format: 'DD/MM/YYYY HH:mm:ss'
                });
            });
        </script>

        <script type="text/javascript">
            function obtenerTarjeta(no_tarjeta) {
                var data = no_tarjeta.value;
                var ruta = "No=" + data;
                $.ajax({
                    url: '<c:url value="asignacion_tarjeta_existe.htm" />',
                    type: 'GET',
                    data: ruta,
                    success: function (data, textStatus, jqXHR) {
                        if (data === "1") {
                            $('#respuesta').val('1');
                            $('#errorTarjeta').show();
                            document.getElementById("errorTarjeta").innerHTML = "Número de tarjeta existente.";
                        } else {
                            $('#respuesta').val('0');
                            $('#errorTarjeta').hide();
                            document.getElementById("errorTarjeta").innerHTML = "";
                        }
                    }
                });
            }
        </script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#errorTipo').hide();
                $('#errorTarjeta').hide();
                $('#errorEmision').hide();
                $('#errorVencimiento').hide();
                $('#errorLugar').hide();
            });
        </script>

        <script type = "text/javascript">
            var nombre;
            // Form validation code will come here.
            function validateForm() {

                var digits = /^\d{16}$/g;

                if (document.myForm.tipo.value === "") {
                    $('#errorTipo').show();
                    document.getElementById("errorTipo").innerHTML = "Por favor, seleccione una opción.";
                    document.myForm.tipo.focus();
                    return false;
                } else {
                    $('#errorTipo').hide();
                    document.getElementById("errorTipo").innerHTML = "";
                }

                if (document.myForm.numero_tarjeta.value === "") {
                    $('#errorTarjeta').show();
                    document.getElementById("errorTarjeta").innerHTML = "Por favor, llene este campo.";
                    document.myForm.numero_tarjeta.focus();
                    return false;
                } else if (document.myForm.respuesta.value === '1') {
                    $('#errorTarjeta').show();
                    document.getElementById("errorTarjeta").innerHTML = "Número de tarjeta existente.";
                    document.myForm.numero_tarjeta.focus();
                    return false;
                } else if (!digits.test(document.myForm.numero_tarjeta.value)) {
                    $('#errorTarjeta').show();
                    document.getElementById("errorTarjeta").innerHTML = "Por favor, ingrese 16 dígitos.";
                    document.myForm.numero_tarjeta.focus();
                    return false;
                } else {
                    $('#errorTarjeta').hide();
                    document.getElementById("errorTarjeta").innerHTML = "";
                }

                if (document.myForm.emision.value === "") {
                    $('#errorEmision').show();
                    document.getElementById("errorEmision").innerHTML = "Por favor, llene este campo.";
                    document.myForm.emision.focus();
                    return false;
                } else {
                    $('#errorEmision').hide();
                    document.getElementById("errorEmision").innerHTML = "";
                }

                if (document.myForm.vencimiento.value === "") {
                    $('#errorVencimiento').show();
                    document.getElementById("errorVencimiento").innerHTML = "Por favor, llene este campo.";
                    document.myForm.vencimiento.focus();
                    return false;
                } else {
                    $('#errorVencimiento').hide();
                    document.getElementById("errorVencimiento").innerHTML = "";
                }

                if (document.myForm.lugar.value === "") {
                    $('#errorLugar').show();
                    document.getElementById("errorLugar").innerHTML = "Por favor, llene este campo.";
                    document.myForm.lugar.focus();
                    return false;
                } else {
                    $('#errorLugar').hide();
                    document.getElementById("errorLugar").innerHTML = "";
                }

                return(true);
            }

        </script>
    </body>
</html>