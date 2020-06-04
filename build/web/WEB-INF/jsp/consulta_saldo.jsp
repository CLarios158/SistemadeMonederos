<%-- 
    Document   : consulta_saldos
    Created on : 1/08/2019, 05:49:37 PM
    Author     : Carlos Larios
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
                            <a href="punto_recarga.htm"><i class="menu-icon fa fa-map-marker" aria-hidden="true"></i>Puntos de Recargar</a>
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
                <form action="<c:url value="consulta_saldo_select.htm" />" id="form" name="form">
                    <div class="row">                
                        <div class="col-lg-12">
                            <div class="form-group">
                                <center><h3><b>Consulta de Saldos</b></h3></center>
                            </div>

                            <div class="col-lg-12" id="consulta_general" >
                                <div class="form-group row">
                                    <c:forEach items="${filtroUsuario}" var="value">
                                        <input value="${value}" id="filtroUsuario" hidden>
                                    </c:forEach>
                                    <c:forEach items="${filtroFecha}" var="value">
                                        <input value="${value}" id="filtroFecha" hidden>
                                    </c:forEach>
                                    <c:forEach items="${respuesta}" var="value">
                                        <input value="${value}" id="respuesta" hidden>
                                    </c:forEach>
                                    <div class="col-sm-1  align-self-center">
                                        <label><b>Buscar:</b></label>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="filtro" id="radio1" value="1" checked>
                                            <label class="form-check-label" for="exampleRadios1">
                                                Número de tarjeta
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="filtro" id="radio2" value="2">
                                            <label class="form-check-label" for="exampleRadios1">
                                                Número de cuenta
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="filtro" id="radio3" value="3">
                                            <label class="form-check-label" for="exampleRadios1">
                                                Nombre de usuario
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 align-self-center">
                                        <label id="etiqueta"><b>Número de tarjeta:</b></label>      
                                    </div>
                                    <div class="input-group col-sm-3 align-self-center">
                                        <c:forEach items="${busqueda}" var="eleccion">
                                            <input value="${eleccion}" hidden id="busquedaH" name="busquedaH">
                                        </c:forEach>
                                        <input type="text" class="form-control" placeholder="Buscar" name="busqueda" id="busqueda" autocomplete="off">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-info"><i class="fa fa-search" aria-hidden="true"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12" id="busqueda_fecha">
                                <div class="form-group row  bordes2">
                                    <div class="col-sm-0  align-self-center">
                                        <label><b>Buscar:</b></label>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="filtroF" id="filtroF1" value="1" checked>
                                            <label class="form-check-label" for="exampleRadios1">
                                                Mes actual
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="filtroF" id="filtroF2" value="2">
                                            <label class="form-check-label" for="exampleRadios1">
                                                Último trimestre
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="filtroF" id="filtroF3" value="3">
                                            <label class="form-check-label" for="exampleRadios1">
                                                Último año
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-2 align-self-center">
                                        <label><b>Nombre usuario:</b></label>
                                    </div>
                                    <div class="col-sm-3 align-self-center">
                                        <c:set var = "bandera" value = "${0}"/>
                                        <c:forEach items="${datos}" var="dato">
                                            <c:if test="${bandera == 0}">
                                                <label>${dato[0]}</label>
                                            </c:if>
                                            <c:set var = "bandera" value = "${1}"/>
                                        </c:forEach>
                                    </div>
                                    <div class="col-sm-2 align-self-center">
                                        <label><b>Saldo disponible:</b></label>
                                    </div>
                                    <div class="col-sm-1 align-self-center">
                                        <c:set var = "bandera" value = "${0}"/>
                                        <c:forEach items="${datos}" var="dato">
                                            <c:if test="${bandera == 0}">
                                                <label>$${dato[6]}</label>
                                            </c:if>                                        
                                            <c:set var = "bandera" value = "${1}"/>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-12" id="consulta_saldos">
                                <div class="backg">
                                    <label>Saldos</label>
                                </div>
                                <table class="table table-sm">
                                    <thead class="">
                                        <tr>
                                            <th scope="col">Fecha</th>
                                            <th scope="col">Concepto</th>
                                            <th scope="col">Pagos</th>
                                            <th scope="col">Dépositos</th>
                                            <th scope="col">Saldo</th>
                                        </tr>
                                    </thead>
                                    <tbody>                                
                                        <c:forEach items="${filtroUsuario}" var="value">
                                            <c:if test="${value == '1'}">
                                                <c:forEach items="${datos}" var="dato">
                                                    <tr>
                                                        <td>${dato[1]}</td>
                                                        <td>${dato[2]}</td>
                                                        <c:choose>
                                                            <c:when test="${dato[3] == 'Pago'}">
                                                                <td>${dato[4]}</td> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <td></td> 
                                                            </c:otherwise>

                                                        </c:choose>
                                                        <c:choose>
                                                            <c:when test="${dato[3] == 'Deposito'}">
                                                                <td>${dato[4]}</td> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <td></td> 
                                                            </c:otherwise>

                                                        </c:choose>
                                                        <td>${dato[5]}</td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                        <c:forEach items="${filtroUsuario}" var="value">
                                            <c:if test="${value == '2'}">
                                                <c:forEach items="${datos}" var="dato">
                                                    <tr>
                                                        <td>${dato[1]}</td>
                                                        <td>${dato[2]}</td>
                                                        <c:choose>
                                                            <c:when test="${dato[3] == 'Pago'}">
                                                                <td>${dato[4]}</td> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <td></td> 
                                                            </c:otherwise>

                                                        </c:choose>
                                                        <c:choose>
                                                            <c:when test="${dato[3] == 'Deposito'}">
                                                                <td>${dato[4]}</td> 
                                                            </c:when>
                                                            <c:otherwise>
                                                                <td></td> 
                                                            </c:otherwise>
                                                        </c:choose>
                                                        <td>${dato[5]}</td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-lg-12" id="consulta_saldos_nombre_usuario" style="display:none;">
                                <div class="backg">
                                    <label>Saldos</label>
                                </div>
                                <table id="tabla" class="table table-sm">
                                    <thead class="">
                                        <tr>
                                            <th scope="col">Nombre de usuario</th>
                                            <th scope="col">Número de cuenta</th>
                                            <th scope="col">Número de tarjeta</th>
                                            <th scope="col">Estado de Cuenta</th>
                                            <th scope="col">Fotografía</th>
                                            <th scope="col">Estado de cuenta</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${filtroUsuario}" var="value">
                                            <c:if test="${value == '3'}">
                                                <c:forEach items="${datos}" var="dato">
                                                    <tr>
                                                        <td style="vertical-align:middle;" >${dato[1]}</td>
                                                        <td style="vertical-align:middle;" >${dato[0]}</td>
                                                        <td style="vertical-align:middle;" >${dato[2]}</td>
                                                        <c:if test="${dato[3] == 0}">
                                                            <td style="vertical-align:middle;">Habilitada</td>
                                                        </c:if>
                                                        <c:if test="${dato[3] == 1}">
                                                            <td style="vertical-align:middle;">Deshabilitada</td>
                                                        </c:if> 
                                                        <td><img class="imageTable" src="${dato[4]}"/></td>
                                                        <td style="vertical-align:middle;" ><a href="consulta_saldo_usuario.htm?filtro=1&busqueda=${dato[2]}&filtroF=1"><button type="button" class="btn btnCuenta">Consultar</button></a></td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </form>
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
            $('th').click(function () {
                var table = $(this).parents('table').eq(0);
                var rows = table.find('tr:gt(0)').toArray().sort(comparer($(this).index()));
                this.asc = !this.asc;
                if (!this.asc) {
                    rows = rows.reverse();
                }
                for (var i = 0; i < rows.length; i++) {
                    table.append(rows[i]);
                }
                setIcon($(this), this.asc);
            });

            function comparer(index) {
                return function (a, b) {
                    var valA = getCellValue(a, index),
                            valB = getCellValue(b, index);
                    return $.isNumeric(valA) && $.isNumeric(valB) ? valA - valB : valA.localeCompare(valB);
                };
            }

            function getCellValue(row, index) {
                return $(row).children('td').eq(index).html();
            }

            function setIcon(element, asc) {
                $("th").each(function (index) {
                    $(this).removeClass("sorting");
                    $(this).removeClass("asc");
                    $(this).removeClass("desc");
                });
                element.addClass("sorting");
                if (asc)
                    element.addClass("asc");
                else
                    element.addClass("desc");
            }
        </script>

        <script type="text/javascript">
            $(document).ready(function () {

                $('#filtroF1').change(function () {
                    document.forms["form"].submit();
                });

                $('#filtroF2').change(function () {
                    document.getElementById("form").submit();
                });

                $('#filtroF3').change(function () {
                    document.getElementById("form").submit();
                });
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function () {

                var fFecha = $('#filtroFecha').val();
                var ocultar = $('#ocultar').val();

                if (fFecha === '1') {

                    $("#filtroF1").prop("checked", true);
                    $("#filtroF2").prop("checked", false);
                    $("#filtroF2").prop("checked", false);
                }

                if (fFecha === '2') {

                    $("#filtroF2").prop("checked", true);
                    $("#filtroF1").prop("checked", false);
                    $("#filtroF3").prop("checked", false);
                }

                if (fFecha === '3') {

                    $("#filtroF3").prop("checked", true);
                    $("#filtroF1").prop("checked", false);
                    $("#filtroF2").prop("checked", false);
                }
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function () {
                var fUsuario = $('#filtroUsuario').val();

                if (fUsuario === '1') {

                    $("#radio1").prop("checked", true);
                    $("#radio2").prop("checked", false);
                    $("#radio3").prop("checked", false);
                }

                if (fUsuario === '2') {

                    $("#radio1").prop("checked", false);
                    $("#radio2").prop("checked", true);
                    $("#radio3").prop("checked", false);
                }

                if (fUsuario === '3') {

                    $("#radio1").prop("checked", false);
                    $("#radio2").prop("checked", false);
                    $("#radio3").prop("checked", true);
                    $('#consulta_saldos').hide();
                    $('#busqueda_fecha').hide();
                    $('#consulta_saldos_nombre_usuario').show();
                }

                $(document).ready(function () {
                    var parameter = $('#respuesta').val();
                    if (parameter === "0") {
                        toastr.error('No se encontro coincidencias', 'Error', {
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
            });
        </script>

        <script type="text/javascript">

            $(document).ready(function () {
                $('#radio1').change(function () {
                    var select = $(this).val();
                    if (select === "1")
                        select = "<b>Número de tarjeta:</b>";
                    $('#etiqueta').html(select);
                    $('#consulta_saldos').show();
                    $('#busqueda_fecha').show();
                    $('#consulta_saldos_nombre_usuario').hide();
                    window.location.href = "consulta_saldo.htm";
                });

                $('#radio2').change(function () {
                    var select = $(this).val();
                    if (select === "2")
                        select = "<b>Número de cuenta:</b>";
                    $('#etiqueta').html(select);
                    $('#consulta_saldos').show();
                    $('#busqueda_fecha').show();
                    $('#consulta_saldos_nombre_usuario').hide();
                });

                $('#radio3').change(function () {
                    var select = $(this).val();
                    if (select === "3")
                        select = "<b>Nombre de usuario:</b>";
                    $('#etiqueta').html(select);
                    $('#consulta_saldos').hide();
                    $('#busqueda_fecha').hide();
                    $('#consulta_saldos_nombre_usuario').show();

                });
            });

        </script>

    </body>
</html>
