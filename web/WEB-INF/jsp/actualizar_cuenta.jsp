<%-- 
    Document   : actualizar_cuenta
    Created on : 1/08/2019, 02:23:11 PM
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

    <body id="content">
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
                            <a href="registro_cuenta.htm"><i class="menu-icon fa fa-user-plus" aria-hidden="true"></i>Registro de Cuenta</a>
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
                                <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Cerrar Sesión</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- /#header -->
            <!-- Contenido -->
            <div class="content">
                <form action="actualizar_cuenta_update.htm" method="post" enctype="multipart/form-data" accept-charset="ISO-8859-1" name="myForm" onsubmit="return(validateForm1());">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <center><h3><b>Gestión de Cuentas de Monederos</b></h3></center>
                            </div>
                        </div>
                        <c:forEach items="${respuesta}" var="value">
                            <input value="${value}" id="respuesta" hidden>
                        </c:forEach>
                        <c:forEach items="${update}" var="value">
                            <input value="${value}" id="update" hidden>
                        </c:forEach>
                    </div>
                    <!--<div>-->
                    <div class="bordes5">
                        <div class="form-group">
                            <center><label><b>DATOS DE CUENTA</b></label></center>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Nombre:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[0]}" name="nombre" id="nombre" autocomplete="off" pattern="[A-Za-záéíóúñÑ\s]{1,30}">
                                </c:forEach>

                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Primer apellido:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[1]}" name="apellido1" id="apellido1" autocomplete="off" pattern="[A-Za-záéíóúñÑ\s]{1,30}">
                                </c:forEach>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Segundo apellido:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[2]}" name="apellido2" id="apellido2" autocomplete="off" pattern="[A-Za-záéíóúñÑ\s]{1,30}">
                                </c:forEach>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Télefono:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[3]}" name="telefono" id="telefono" autocomplete="off" pattern="[0123456789]{1,10}">
                                </c:forEach>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Email:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[4]}" name="email" id="email" autocomplete="off" pattern="[A-Za-z@0123456789.-_]{1,50}">
                                </c:forEach>
                            </div>
                        </div>             
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>N° de cuenta:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[5]}" name="cuenta_old" id="cuenta_old" hidden>
                                    <input type="text" class="form-control" value="${dato[5]}" name="cuenta_new" id="cuenta_new" autocomplete="off" onblur="obtenerCuenta(this);" onkeyup="obtenerCuenta(this);" >
                                </c:forEach>
                                <p id="errorCuenta" style="color: red; font-size: 12px; height: 0px;"></p>
                                <input id="respuesta" name="respuesta" hidden />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-2 align-self-center">
                                <label><b>Fotografía:</b></label>
                            </div>
                            <div class="col-sm-2 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <img src="${dato[6]}" class="imageTable"/>
                                </c:forEach>
                            </div>
                            <div class="col-sm-7 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input value="${dato[6]}"  name="fotoOld" id="fotoOld" hidden="">
                                    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="fotoNew" id="fotoNew">
                                </c:forEach>
                            </div>
                        </div>
                        <div class="form-group bordes8">
                            <center><label><b>ESTATUS DE CUENTA</b></label></center>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Estado actual:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <select class="form-control" name="estatus_cuenta" id="estatus_cuenta" onchange="changeStatus(this);">
                                    <c:forEach items="${datos}" var="dato">
                                        <c:if test="${dato[7] == 0}">
                                            <c:if test="${dato[7] == 0 && dato[18] == 0}">
                                                <option value="0" selected>Activada</option>                                        
                                                <option value="1" >Desactivada</option>
                                            </c:if>
                                            <c:if test="${dato[7] == 0 && dato[18] == 1}">
                                                <option value="0" >Activada</option>                                        
                                                <option value="1" selected>Desactivada</option>
                                            </c:if>
                                        </c:if>
                                        <c:if test="${dato[7] == 1}">
                                            <c:if test="${dato[7] == 1 && dato[18] == 1}">
                                                <option value="0" >Activada</option>                                        
                                                <option value="1" selected>Desactivada</option>
                                            </c:if>
                                            <c:if test="${dato[7] == 1 && dato[18] == 0}">
                                                <option value="0" selected>Activada</option>                                        
                                                <option value="1">Desactivada</option>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Motivo:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <select class="form-control" name="motivo_cuenta" id="motivo_cuenta">


                                    <c:forEach  items="${bandera_cuenta}" var="flag">
                                        <c:if test="${flag == '0'}">
                                            <c:forEach items="${catalogo1}" var="option">
                                                <c:forEach  items="${datos}" var="dato">
                                                    <option value="${option[0]}" <c:if test="${option[1] == dato[8]}">selected</c:if>>${option[1]}</option>
                                                </c:forEach>                                                                
                                            </c:forEach>
                                        </c:if>
                                        <c:if test="${flag == '1'}">
                                            <c:forEach  items="${datos}" var="dato">
                                                <c:if test="${dato[7] == 0 && dato[18] == 1}">
                                                    <option></option>
                                                </c:if>
                                                <c:if test="${dato[7] == 1 && dato[18] == 1}">
                                                    <option></option>
                                                </c:if>
                                            </c:forEach>
                                            <c:forEach items="${catalogo1}" var="option">
                                                <option value="${option[0]}">${option[1]}</option>                               
                                            </c:forEach>
                                        </c:if>
                                    </c:forEach>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="bordes7">
                        <div class="form-group">
                            <center><label><b>INFORMACIÓN DE TARJETA PREFERENTE EN USO</b></label></center>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>N° de tarjeta:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[17]}" hidden name="id_historial_tarjeta" id="id_historial_tarjeta">                           
                                </c:forEach>
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[9]}" name="tarjeta_old" id="tarjeta_old" hidden>
                                    <input type="text" class="form-control" value="${dato[9]}" name="tarjeta_new" id="tarjeta_new" pattern="[0123456789]{1,20}" autocomplete="off" onblur="obtenerTarjeta(this);" onkeyup="obtenerTarjeta(this);">
                                </c:forEach>
                                <p id="errorTarjeta" style="color: red; font-size: 12px; height: 0px;"></p>
                                <input id="respuesta2" name="respuesta2" hidden />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Fecha emisión:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker1" id="emision" name="emision" value="${dato[12]}"/>
                                        <div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
                                            <div class="input-group-text" ><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Fecha vencimiento:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <div class="input-group date" id="datetimepicker2" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker2" value="${dato[10]}" id="vencimiento" name="vencimiento"/>
                                        <div class="input-group-append" data-target="#datetimepicker2" data-toggle="datetimepicker">
                                            <div class="input-group-text" ><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Lugar expedición:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach items="${datos}" var="dato">
                                    <input type="text" class="form-control" value="${dato[11]}" name="lugar" id="lugar" autocomplete="off" pattern="[A-Za-záéíóúñÑÁÉÍÓÚ,\s]{1,800}">
                                </c:forEach>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Tipo de tarjeta:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <select class="form-control" name="tipo_tarjeta" id="tipo_tarjeta">
                                    <c:forEach items="${datos}" var="dato">
                                        <c:if test="${dato[13] != ''}">
                                            <c:if test="${dato[13] == 1}">
                                                <option value="1" selected>Preferente</option>
                                                <option value="2">Ordinaria</option>
                                            </c:if>
                                            <c:if test="${dato[13] == 2}">
                                                <option value="1">Preferente</option>
                                                <option value="2" selected>Ordinaria</option>
                                            </c:if>
                                        </c:if>
                                        <c:if test="${dato[13] == null}">
                                            <option value="" selected></option>
                                            <option value="1">Preferente</option>
                                            <option value="2">Ordinaria</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>
                        </div><br>
                        <div class="form-group">
                            <c:forEach items="${datos}" var="dato">
                                <center><a href="tarjeta_asignacion_cuenta.htm?n_cuenta=${dato[5]}"><button type="button" class="btn btnCard">Ver todas las tarjetas</button></a></center>
                                </c:forEach>
                        </div>
                        <div class="form-group bordes9">
                            <center><label><b>ESTATUS DE TARJETA</b></label></center>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Estado actual:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <select class="form-control" name="estado_tarjeta" id="estado_tarjeta" onchange="changeStatusTarjeta(this);">
                                    <c:forEach items="${datos}" var="dato">
                                        <c:if test="${dato[14] == 0}">
                                            <c:if test="${dato[14] == 0 && dato[19] == 0}">
                                                <option value="0" selected>Activada</option>                                        
                                                <option value="1" >Desactivada</option>
                                            </c:if>
                                            <c:if test="${dato[14] == 0 && dato[19] == 1}">
                                                <option value="0" >Activada</option>                                        
                                                <option value="1" selected>Desactivada</option>
                                            </c:if>
                                        </c:if>
                                        <c:if test="${dato[14] == 1}">
                                            <c:if test="${dato[14] == 1 && dato[19] == 1}">
                                                <option value="0" >Activada</option>                                        
                                                <option value="1" selected>Desactivada</option>
                                            </c:if>
                                            <c:if test="${dato[14] == 1 && dato[19] == 0}">
                                                <option value="0" selected>Activada</option>                                        
                                                <option value="1">Desactivada</option>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Motivo:</b></label>
                            </div>
                            <div class="col-sm-6 align-self-center">
                                <c:forEach  items="${datos}" var="dato">
                                    <input value="${dato[16]}" name="motivo_tarjeta_old" id="motivo_tarjeta_old" hidden>
                                </c:forEach> 
                                <select class="form-control" name="motivo_tarjeta_new" id="motivo_tarjeta_new">

                                    <c:forEach  items="${bandera_tarjeta}" var="flag">

                                        <c:if test="${flag == '0'}">
                                            <c:forEach items="${catalogo2}" var="option">
                                                <c:forEach  items="${datos}" var="dato">
                                                    <option value="${option[0]}" <c:if test="${option[2] == dato[15]}">selected</c:if>>${option[2]}</option>
                                                </c:forEach>                                
                                            </c:forEach>
                                        </c:if>
                                        <c:if test="${flag == '1'}">
                                            <c:forEach  items="${datos}" var="dato">
                                                <c:if test="${dato[14] == 0 && dato[19] == 1}">
                                                    <option></option>
                                                </c:if>
                                                <c:if test="${dato[14] == 1 && dato[19] == 1}">
                                                    <option></option>
                                                </c:if>
                                            </c:forEach>
                                            <c:forEach items="${catalogo2}" var="option">
                                                <option value="${option[0]}">${option[2]}</option>                               
                                            </c:forEach>
                                        </c:if>
                                    </c:forEach>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row col-lg-12 justify-content-center">
                        <br><button type="submit" class="btn btnGuardar-Update">GUARDAR</button>
                    </div>
                </form>
                <c:forEach items="${error}" var="value">
                    <input value="${value}" id="error" hidden>
                </c:forEach>
                <c:forEach items="${bandera}" var="value">
                    <input value="${value}" >
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
                <!-- /.site-footer -->
        </div>
        <!-- /#right-panel -->

        <!-- Scripts -->
        <script type="text/javascript">

            $(document).ready(function () {
                var parameter = $('#error').val();
                if (parameter === "-1") {
                    toastr.error('Ocurrió un error en la base de datos.', 'Error', {
                        "positionClass": "toast-bottom-right",
                        "timeOut": "5000"
                    });
                }
            });

            $(document).ready(function () {
                var parameter = $('#update').val();
                if (parameter === "1") {
                    toastr.success('Datos Actualizados.', 'Éxito', {
                        "positionClass": "toast-bottom-right",
                        "timeOut": "5000"
                    });
                }
            });

            $(function () {
                $('#datetimepicker1').datetimepicker({
                    format: 'YYYY/MM/DD HH:mm'
                });
            });
            $(function () {
                $('#datetimepicker2').datetimepicker({
                    format: 'YYYY/MM/DD HH:mm'
                });
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#errorCuenta').hide();
            });
            function obtenerCuenta(numcuenta) {
                var data = numcuenta.value;
                var num_old = document.myForm.cuenta_old.value;
                var ruta = "No=" + data;
                if (num_old !== data) {
                    $.ajax({
                        url: '<c:url value="validar_cuenta.htm" />',
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
                } else {
                    $('#respuesta').val('0');
                }
            }
        </script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#errorTarjeta').hide();
            });
            function obtenerTarjeta(no_tarjeta) {
                var data = no_tarjeta.value;
                var tarjeta_old = document.myForm.tarjeta_old.value;
                var ruta = "No=" + data;
                if (tarjeta_old !== data) {
                    $.ajax({
                        url: '<c:url value="tarjeta_existe.htm" />',
                        type: 'GET',
                        data: ruta,
                        success: function (data, textStatus, jqXHR) {
                            if (data === "1") {
                                $('#respuesta2').val('1');
                                $('#errorTarjeta').show();
                                document.getElementById("errorTarjeta").innerHTML = "Número de tarjeta existente.";
                            } else {
                                $('#respuesta2').val('0');
                                $('#errorTarjeta').hide();
                                document.getElementById("errorTarjeta").innerHTML = "";
                            }
                        }
                    });
                } else {
                    $('#respuesta2').val('0');
                }
            }
        </script>

        <script type="text/javascript">

            function changeStatus(estado) {
                var estado_cuenta = estado.value;
                var estado_tarjeta = $('#estado_tarjeta').val();
                if (estado_tarjeta === null) {
                    estado_tarjeta = "0";
                }
                var n_cuenta = $('#cuenta_old').val();
                var n_tarjeta = $('#tarjeta_old').val();

                var ruta = "estado_cuenta=" + estado_cuenta + "&estado_tarjeta=" + estado_tarjeta + "&n_cuenta=" + n_cuenta + "&n_tarjeta=" + n_tarjeta;
                $.ajax({
                    url: '<c:url value="cambiar_estado_cuenta.htm" />',
                    type: 'GET',
                    data: ruta,
                    success: function (data, textStatus, jqXHR) {
                        $('#content').html(data);
                    }
                });
            }

        </script>

        <script type="text/javascript">

            function changeStatusTarjeta(estado) {
                var estado_cuenta = $('#estatus_cuenta').val();
                if (estado_cuenta === null) {
                    estado_cuenta = "0";
                }
                var estado_tarjeta = estado.value;
                var n_cuenta = $('#cuenta_old').val();
                var n_tarjeta = $('#tarjeta_old').val();

                var ruta = "estado_cuenta=" + estado_cuenta + "&estado_tarjeta=" + estado_tarjeta + "&n_cuenta=" + n_cuenta + "&n_tarjeta=" + n_tarjeta;
                $.ajax({
                    url: '<c:url value="cambiar_estado_tarjeta.htm" />',
                    type: 'GET',
                    data: ruta,
                    success: function (data, textStatus, jqXHR) {
                        $('#content').html(data);
                    }
                });
            }

        </script>

        <script type = "text/javascript">
            // Form validation code will come here.
            function validateForm1() {

                var digits = /^\d{16}$/g;

                if (document.myForm.respuesta.value === '1') {
                    document.getElementById("errorCuenta").innerHTML = "Número de cuenta existente.";
                    document.myForm.cuenta_new.focus();
                    return false;
                } else {
                    document.getElementById("errorCuenta").innerHTML = "";
                }

                if (document.myForm.tarjeta_old.value !== "") {
                    if (document.myForm.respuesta2.value === '1') {
                        document.getElementById("errorTarjeta").innerHTML = "Número de tarjeta existente.";
                        document.myForm.tarjeta_new.focus();
                        return false;
                    } else if (!digits.test(document.myForm.tarjeta_new.value)) {
                        $('#errorTarjeta').show();
                        document.getElementById("errorTarjeta").innerHTML = "Por favor, ingrese 16 dígitos.";
                        document.myForm.tarjeta_new.focus();
                        return false;
                    } else {
                        document.getElementById("errorTarjeta").innerHTML = "";
                    }
                } else if (document.myForm.tarjeta_old.value === "") {
                    if (document.myForm.respuesta2.value === '1') {
                        document.getElementById("errorTarjeta").innerHTML = "Número de tarjeta existente.";
                        document.myForm.tarjeta_new.focus();
                        return false;
                    } else if (!digits.test(document.myForm.tarjeta_new.value)) {
                        $('#errorTarjeta').show();
                        document.getElementById("errorTarjeta").innerHTML = "Por favor, ingrese 16 dígitos.";
                        document.myForm.tarjeta_new.focus();
                        return false;
                    } else {
                        document.getElementById("errorTarjeta").innerHTML = "";
                    }
                }

                return(true);
            }

        </script>
    </body>
</html>