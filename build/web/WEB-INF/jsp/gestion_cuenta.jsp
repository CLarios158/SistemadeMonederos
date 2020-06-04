<%-- 
    Document   : gestion_cuenta
    Created on : 17/07/2019, 11:30:13 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />

        <!-- Favicon -->
        <link rel="apple-touch-icon" href="images/logo.png">
        <link rel="shortcut icon" href="images/logo.png">

        <!-- Normalize CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">

        <!-- Boostrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">

        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/style.css">


        <script src="https://code.jquery.com/jquery-3.4.1.min.js"  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
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
                            <a href="index.htm"><i class="menu-icon fa fa-home" aria-hidden="true"></i>INICIO</a>
                        </li>
                        <li class="menu-title">Menu</li><!-- /.menu-title -->
                        <li>
                            <a href="registro_cuenta.htm"><i class="menu-icon fa fa-user-plus" aria-hidden="true"></i>Registro de Cuenta</a>
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
                            <center><h3><b>Gestión de Cuentas de Monedero</b></h3><br></center>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <form action="<c:url value="gestion_cuenta_select.htm" />" accept-charset="ISO-8859-1" >                        
                            <div class="form-group row justify-content-center">
                                <c:forEach items="${filtros}" var="fill">
                                    <input value="${fill}" id="checkBox" hidden>
                                </c:forEach>
                                <div class="col-sm-1  align-self-center">
                                    <label><b>Buscar:</b></label>
                                </div>                                            
                                <div class="col-sm-3">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="filtro" id="radio1" value="1" checked>
                                        <label class="form-check-label" for="exampleRadios1">
                                            Número de cuenta
                                        </label>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="filtro" id="radio2" value="2">
                                        <label class="form-check-label" for="exampleRadios1">
                                            Nombre de usuario
                                        </label>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="filtro" id="radio3" value="3">
                                        <label class="form-check-label" for="exampleRadios1">
                                            Número de tarjeta
                                        </label>
                                    </div>                            
                                </div>
                                <div class="col-sm-2 align-self-center">
                                    <label id="etiqueta"><b>Número de cuenta:</b></label>
                                </div>                       
                                <div class="input-group col-sm-3 align-self-center">
                                    <input type="text" class="form-control" placeholder="Buscar" name="busqueda" id="busqueda" autocomplete="off">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-info" id="boton"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <c:forEach items="${respuesta}" var="value">
                            <input value="${value}" id="respuesta" hidden>
                        </c:forEach>
                    </div>  

                    <div class="col-lg-12">
                        <div class="backg">
                            <label>Cuentas</label>
                        </div>
                        <div class="scroll_gestion_cuenta">
                            <table class="table table-sm">
                                <thead>
                                    <tr>
                                        <th scope="">Nombre de Usuario</th>
                                        <th scope="col">Número de Cuenta</th>
                                        <th scope="col">Número de Tarjeta</th>
                                        <th scope="col">Estado de Tarjeta</th>
                                        <th scope="col">Fotografía</th>
                                        <th scope="col">Ver Cuenta</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${datos}" var="dato">
                                        <tr>
                                            <c:choose>
                                                <c:when test="${dato[1] == null}">
                                                    <td></td> 
                                                </c:when>
                                                <c:otherwise>
                                                    <td style="vertical-align:middle;">${dato[1]}</td>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${dato[0] == null}">
                                                    <td></td> 
                                                </c:when>
                                                <c:otherwise>
                                                    <td style="vertical-align:middle;" >${dato[0]}</td>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${dato[2] == null}">
                                                    <td></td> 
                                                </c:when>
                                                <c:otherwise>
                                                    <td style="vertical-align:middle;" >${dato[2]}</td>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${dato[4] == null}">
                                                    <td></td> 
                                                </c:when>
                                                <c:otherwise>
                                                    <c:if test="${dato[4] == 0}">
                                                        <td style="vertical-align:middle;">Habilitada</td>
                                                    </c:if>
                                                    <c:if test="${dato[4] == 1}">
                                                        <td style="vertical-align:middle;">Deshabilitada</td>
                                                    </c:if>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${dato[5] == null}">
                                                    <td></td> 
                                                </c:when>
                                                <c:otherwise>
                                                    <td style="vertical-align:middle;" ><img class="imageTable" src="${dato[5]}"/></td>
                                                    </c:otherwise>
                                                </c:choose>
                                            <td style="vertical-align:middle;" ><a href="actualizar_cuenta.htm?n_cuenta=${dato[0]}&estado_cuenta=${dato[3]}&n_tarjeta=${dato[2]}&estado_tarjeta=${dato[4]}"><button type="button" class="btn btnCuenta">Ver cuenta</button></a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
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

        <!-- modal-->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Registrar punto de recarga</h5>
                    </div>
                    <div class="modal-body">
                        <form action="">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Referencia: </label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Organización: </label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-success">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#modal-->

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
                $('#radio1').change(function () {
                    var select = $(this).val();
                    if (select === "1")
                        select = '<b>Número de cuenta:</b>';
                    $('#etiqueta').html(select);
                    window.location = "gestion_cuenta.htm";
                });
            });

            $(document).ready(function () {
                $('#radio2').change(function () {
                    var select = $(this).val();
                    if (select === "2")
                        select = '<b>Nombre de usuario:</b>';
                    $('#etiqueta').html(select);
                });
            });

            $(document).ready(function () {
                $('#radio3').change(function () {
                    var select = $(this).val();
                    if (select === "3")
                        select = '<b>Número de tarjeta:</b>';
                    $('#etiqueta').html(select);
                });
            });

            $(document).ready(function () {
                var x = $('#checkBox').val();

                if (x === "2") {
                    $("#radio2").prop("checked", true);
                    $("#radio1").prop("checked", false);
                    $("#radio3").prop("checked", false);
                    x = '<b>Nombre de usuario:</b>';
                    $('#etiqueta').html(x);
                }

                var x = $('#checkBox').val();

                if (x === "3") {
                    $("#radio3").prop("checked", true);
                    $("#radio1").prop("checked", false);
                    $("#radio2").prop("checked", false);
                    x = '<b>Número de tarjeta:</b>';
                    $('#etiqueta').html(x);
                }
            });

            $(document).ready(function () {
                var paremeter = $('#respuesta').val();
                if (paremeter === "0") {
                    toastr.error('No se encontraron coincidencias!', 'Error', {
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
    </body>
</html>
