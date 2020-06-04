<%-- 
    Document   : tarjetas_asiganas_cuenta
    Created on : 19/08/2019, 12:31:34 AM
    Author     : Carlos Larios
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
    <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sistema de Administración de Monederos</title>
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

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
                        <li class="menu-title">Menu</li>
                        <!-- /.menu-title -->
                        <li>
                            <a href="lista_negra.htm"><i class="menu-icon fa fa-arrow-left" aria-hidden="true"></i>Gestión de Lista Negra</a>
                        </li>
                        <li>
                            <a href="motivo_tarjeta.htm"><i class="menu-icon fa fa-list" aria-hidden="true"></i>Catálogo Motivos Tarjeta</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
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
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <center>
                                <h3><b>Tarjetas asignadas a la cuenta</b></h3>
                                <br>
                            </center>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group row justify-content-center bordes">
                            <div class="col-sm-4 align-self-center">
                                <label><b>Número de Cuenta:</b> </label>
                                <c:set var = "bandera" value = "${0}"/>
                                <c:forEach items="${datos}" var="dato">
                                    <c:if test="${bandera == 0}">
                                        <label>${dato[0]}</label> 
                                    </c:if>
                                    <c:set var = "bandera" value = "${1}"/>
                                </c:forEach>
                            </div>
                            <div class="col-sm-5 align-self-center">
                                <label><b>Nombre del Propietario:</b> </label>
                                <c:set var = "bandera" value = "${0}"/>
                                <c:forEach items="${datos}" var="dato">
                                    <c:if test="${bandera == 0}">
                                        <label>${dato[1]}</label> 
                                    </c:if>
                                    <c:set var = "bandera" value = "${1}"/>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group" style="float: right;">
                            <c:set var = "bandera" value = "${0}"/>
                            <c:forEach items="${datos}" var="dato">
                                <c:if test="${bandera == 0}">
                                    <a href="historial_tarjeta_select.htm?filtro=1&busqueda=${dato[2]}"><button type="button" class="btn btnCard">Ver historial de tarjeta</button></a>
                                </c:if>
                                <c:set var = "bandera" value = "${1}"/>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-lg-12" id="historial_tarjetas">
                        <table class="table table-sm">
                            <thead class="">
                                <tr>
                                    <th scope="col">Número de Tarjeta</th>
                                    <th scope="col">Tipo de Tarjeta</th>
                                    <th scope="col">Estado de tarjeta</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${datos}" var="dato">
                                    <tr>
                                        <td>${dato[2]}</td>
                                        <c:if test="${dato[3] == 1}">
                                            <td>Preferente</td>
                                        </c:if>
                                        <c:if test="${dato[3] == 2}">
                                            <td>Ordinario</td>
                                        </c:if>
                                        <c:if test="${dato[4] == 0}">
                                            <td>Habilitada</td>
                                        </c:if>
                                        <c:if test="${dato[4] == 1}">
                                            <td>Deshabilitada</td>
                                        </c:if>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-12" id="nombre_titular" style="display: none;">
                        <div class="backg">
                            <label>Tarjetas</label>
                        </div>
                        <table class="table table-sm">
                            <thead class="">
                                <tr>
                                    <th scope="col">Número de tarjeta</th>
                                    <th scope="col">Nombre de titular</th>
                                    <th scope="col">Fecha y hora</th>
                                    <th scope="col">Movimiento</th>
                                    <th scope="col">Motivo</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${datos}" var="dato">
                                    <tr>
                                        <td>${dato[1]}</td>
                                        <td>${dato[0]}</td>
                                        <td>${dato[2]}</td>
                                        <td>${dato[3]}</td>
                                        <td>${dato[4]}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
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
        <script>
            var bandera = 0;
        </script>
    </body>
</html>
