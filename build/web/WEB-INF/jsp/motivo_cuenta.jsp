<%-- 
    Document   : motivo_cuenta
    Created on : 17/07/2019, 11:14:49 AM
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
                            <a href="registro_cuenta.htm"><i class="menu-icon fa fa-user-plus" aria-hidden="true"></i>Registro de Cuenta</a>
                        </li>
                        <li>
                            <a href="registro_tarjeta.htm"><i class="menu-icon fa fa-address-card-o" aria-hidden="true"></i>Registro de Tarjeta</a>
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
                            <center><h3><b>Catálogo de Motivos en Cuentas</b></h3><br></center>
                        </div>
                    </div>
                    <div class="col-lg-12">                        
                        <div class="form-group row ">
                            <div class="col-sm-4 justify-content-left">
                                <button class="btn btnEditAdd" data-toggle="modal" data-target="#exampleModal" title="Registar punto de recarga"><i class="fa fa-plus"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="backg">
                            <label>Motivos</label>
                        </div>
                        <div class="scrollcat_motivo">
                            <c:forEach items="${respuesta}" var="value">
                                <input value="${value}" id="respuesta" hidden>
                            </c:forEach>
                            <c:forEach items="${respuesta2}" var="value">
                                <input value="${value}" id="respuesta2" hidden>
                            </c:forEach>
                            <table class="table table-sm">
                                <thead>
                                    <tr>
                                        <th scope="col">Movimiento</th>
                                        <th scope="col">Descripción del motivo</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${datos}" var="dato">
                                        <tr id="${dato[0]}">
                                            <c:if test="${dato[2] == 0}">
                                                <td>Habilitada</td>
                                                <td data-target="movimiento" hidden>${dato[2]}</td>
                                            </c:if>
                                            <c:if test="${dato[2] == 1}">
                                                <td>Deshabilitada</td>
                                                <td data-target="movimiento" hidden>${dato[2]}</td>
                                            </c:if> 
                                            <td data-target="motivo">${dato[1]}</td>
                                            <td><a href="#" data-role="update" data-id="${dato[0]}" class="btn btnEdit"><i class="fa fa-pencil-square-o"></i></a></td>
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

        <!-- modal insert-->    
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">       
            <div class="modal-dialog" role="document">
                <form action="motivo_cuenta_insert.htm" method="post" accept-charset="ISO-8859-1">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Agregar nuevo motivo</h5>
                        </div>
                        <div class="modal-body">                
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group row">
                                        <div class="col-sm-3 align-self-center">
                                            <label><b>Movimiento:</b></label>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="movimiento" id="movimiento" value="0" required>
                                                <label class="form-check-label" for="exampleRadios1">
                                                    Habilitación
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="movimiento" id="movimiento" value="1" required>
                                                <label class="form-check-label" for="exampleRadios1">
                                                    Deshabilitación
                                                </label>
                                            </div> 
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-3 align-self-center">
                                            <label><b>Descripción:</b></label>
                                        </div>
                                        <div class="col-sm-9 align-self-center">
                                            <input type="text" class="form-control" name="motivo" id="motivo" autocomplete="off">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-success">Aceptar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>    
        <!-- /#modal-->

        <!-- modal update-->    
        <div class="modal fade" id="exampleModal2" role="dialog">       
            <div class="modal-dialog" role="document">
                <form action="motivo_cuenta_update.htm" method="post" accept-charset="ISO-8859-1">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Agregar nuevo motivo</h5>
                        </div>
                        <div class="modal-body">                
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group row">
                                        <input id="id" name="id" class="form-control" type="text" hidden>
                                        <div class="col-sm-3 align-self-center">
                                            <label><b>Movimiento:</b></label>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="movimiento" id="habilitado" value="0" required>
                                                <label class="form-check-label" for="exampleRadios1">
                                                    Habilitación
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="movimiento" id="deshabilitado" value="1" required>
                                                <label class="form-check-label" for="exampleRadios1">
                                                    Deshabilitación
                                                </label>
                                            </div> 
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-3 align-self-center">
                                            <label><b>Descripción:</b></label>
                                        </div>
                                        <div class="col-sm-9 align-self-center">
                                            <input type="text" class="form-control" name="motivo1" id="motivo1" autocomplete="off">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-success">Aceptar</button>
                        </div>
                    </div>
                </form>
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
        <script>
            $(document).ready(function () {
                $(document).on('click', 'a[data-role=update]', function () {
                    var id = $(this).data('id');
                    var movimiento = $('#' + id).children('td[data-target=movimiento]').text();
                    var motivo = $('#' + id).children('td[data-target=motivo]').text();

                    if (movimiento === '0')
                        $("#habilitado").prop('checked', true);
                    else if (movimiento === '1')
                        $("#deshabilitado").prop('checked', true);

                    $('#id').val(id);
                    $('#movimiento').val(movimiento);
                    $('#motivo1').val(motivo);
                    $('#exampleModal2').modal('toggle');
                });
            });

            $(document).ready(function () {
                var parameter = $('#respuesta').val();
                if (parameter === "1") {
                    toastr.success('Motivo agregado', 'Exito', {
                        "positionClass": "toast-bottom-right",
                        "timeOut": "5000"
                    });
                }
                
                var parameter = $('#respuesta2').val();
                if (parameter === "1") {
                    toastr.success('Motivo actualizado', 'Exito', {
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
