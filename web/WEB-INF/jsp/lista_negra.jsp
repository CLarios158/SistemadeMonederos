<%-- 
    Document   : lista_negra
    Created on : 17/07/2019, 11:13:46 AM
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
                            <a href="historial_tarjeta.htm"><i class="menu-icon fa fa-newspaper-o" aria-hidden="true"></i>Historial de Tarjeta</a>
                        </li>
                        <li>
                            <a href="motivo_tarjeta.htm"><i class="menu-icon fa fa-list" aria-hidden="true"></i>Catálogo Motivos Tarjeta</a>
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
                            <center><h3><b>Lista Negra de Tarjetas</b></h3><br></center>
                        </div>
                    </div>
                    <c:forEach items="${respuesta}" var="value">
                        <input value="${value}" id="respuesta" hidden>
                    </c:forEach>
                    <c:forEach items="${respuesta2}" var="value">
                        <input value="${value}" id="respuesta2" hidden>
                    </c:forEach>
                    <div class="col-lg-12">
                        <div class="form-group row justify-content-center">
                            <div class="col-sm-0 align-self-center">
                                <label><b>Buscar:</b></label>
                            </div>
                            <div class="col-sm-3">                            
                                <c:forEach items="${filtros}" var="fill">
                                    <input value="${fill}" id="checkBox" hidden>
                                </c:forEach>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="filtro" id="radio1" value="1" checked>
                                    <label class="form-check-label">
                                        Todas las Tarjetas  
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="filtro" id="radio2" value="2">
                                    <label class="form-check-label">
                                        Número de Tarjeta
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="filtro" id="radio3" value="3">
                                    <label class="form-check-label">
                                        Nombre del Titular
                                    </label>
                                </div>                            
                            </div>   
                        </div>
                    </div>
                    <div class="col-lg-12" id="numero_tarjeta" style="display:none;">                    
                        <div class="form-group">
                            <div class="bordes6">
                                <form action="<c:url value="lista_negra_select.htm" />">
                                    <div class="form-group row justify-content-center">
                                        <div class="col-sm-2 align-self-center">
                                            <label><b>Número tarjeta:</b></label>
                                            <input class="form-check-input" type="radio" name="filtro" value="2" hidden checked>
                                        </div>
                                        <div class="input-group col-sm-3 align-self-center">
                                            <input type="text" class="form-control" placeholder="Buscar" name="busqueda" id="busqueda" autocomplete="off">
                                            <div class="input-group-append">
                                                <button type="submit" class="btn btn-info"><i class="fa fa-search" aria-hidden="true"></i></button>
                                            </div>
                                        </div>
                                    </div>      
                                </form>
                                <div class="form-group row justify-content-left">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Número de tarjeta:</b></label>
                                    </div>
                                    <div class="col-sm-4 align-self-center">
                                        <c:forEach items="${filtros}" var="fill"> 
                                            <c:if test="${fill == '2'}">
                                                <c:forEach items="${datos_select}" var="dato">
                                                    <label>${dato[0]}</label>
                                                </c:forEach>                                            
                                            </c:if>
                                        </c:forEach>             
                                    </div>
                                </div>
                                <div class="form-group row justify-content-left">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Nombre del titular:</b></label>
                                    </div>
                                    <div class="col-sm-4 align-self-center">
                                        <c:forEach items="${filtros}" var="fill"> 
                                            <c:if test="${fill == '2'}">                                            
                                                <c:forEach items="${datos_select}" var="dato">
                                                    <label>${dato[1]}</label>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-left">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Fecha de habilitación:</b></label>
                                    </div>
                                    <div class="col-sm-4 align-self-center">
                                        <c:forEach items="${filtros}" var="fill"> 
                                            <c:if test="${fill == '2'}">                                            
                                                <c:forEach items="${datos_select}" var="dato">
                                                    <label>${dato[2]}</label>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-left">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Fecha de deshabilitación:</b></label>
                                    </div>
                                    <div class="col-sm-3 align-self-center">
                                        <c:forEach items="${filtros}" var="fill"> 
                                            <c:if test="${fill == '2'}">                                            
                                                <c:forEach items="${datos_select}" var="dato">
                                                    <label>${dato[3]}</label>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Estado de la tarjeta:</b></label>
                                    </div>
                                    <div class="col-sm-3 align-self-center">
                                        <select class="form-control" id="exampleFormControlSelect1" disabled="">
                                            <option>Deshabilitada</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-left">
                                    <div class="col-sm-3 align-self-center">
                                        <label><b>Motivo de deshabilitación:</b></label>
                                    </div>
                                    <div class="col-sm-3 align-self-center">
                                        <c:forEach items="${filtros}" var="fill"> 
                                            <c:if test="${fill == '2'}">                                            
                                                <c:forEach items="${datos_select}" var="dato">
                                                    <label>${dato[4]}</label>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                    <div class="col-sm-4 align-self-center">
                                        <c:forEach items="${filtros}" var="fill">
                                            <c:if test="${fill == '2'}"> 
                                                <c:forEach items="${datos_select}" var="dato">
                                                    <a href="historial_tarjeta_select.htm?filtro=1&busqueda=${dato[0]}"><button class="btn btn-info">Ver historial de tarjeta</button></a>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12" id="todas_tarjetas">
                        <div class="backg">
                            <label>Tarjetas</label>
                        </div>
                        <div class="scroll_lista_negra">
                            <table class="table table-sm">
                                <thead class="">
                                    <tr>
                                        <th scope="">N° Tarjeta</th>
                                        <th scope="">Titular</th>
                                        <th scope="">Fecha de Habilitación</th>
                                        <th scope="">Fecha de Deshabilitación</th>
                                        <th scope="">Motivo de Deshabilitación</th>
                                        <th scope="">Habilitar Tarjeta</th>
                                        <th scope=""></th>
                                    </tr>
                                </thead>
                                <tbody>                            
                                    <c:forEach items="${datos}" var="dato">
                                        <tr id="${dato[0]}">
                                            <td data-target="n_tarjeta">${dato[0]}</td>
                                            <td data-target="n_titular">${dato[1]}</td>
                                            <td data-target="f_habilitacion">${dato[2]}</td>
                                            <td data-target="f_deshabilitacion">${dato[3]}</td>
                                            <td data-target="m_deshabilitacion">${dato[4]}</td>
                                            <td><a href="#" data-role="update" data-id="${dato[0]}" class=" btn btnCuenta">Habilitar</a></td>
                                            <td><a href="historial_tarjeta_select.htm?filtro=1&busqueda=${dato[0]}"><button type="button" class="btn btnEdit1">Historial</button></a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-12" id="nombre_titular" style="display:none;">
                        <form action="<c:url value="lista_negra_select.htm" />">
                            <div class="form-group row justify-content-center" >
                                <div class="col-sm-2 align-self-center">
                                    <label><b>Número titular:</b></label>
                                    <input class="form-check-input" type="radio" name="filtro" value="3" hidden checked>                                
                                </div>
                                <div class="input-group col-sm-3 align-self-center">
                                    <input type="text" class="form-control" placeholder="Buscar" name="busqueda" id="busqueda" autocomplete="off">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-info"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="backg">
                            <label>Tarjetas</label>
                        </div>
                        <div class="scroll_lista_negra2">
                            <table class="table table-sm">
                                <thead class="">
                                    <tr>
                                        <th scope="">N° Tarjeta</th>
                                        <th scope="">Titular</th>
                                        <th scope="">Fecha de Habilitación</th>
                                        <th scope="">Fecha de Deshabilitación</th>
                                        <th scope="">Motivo de Deshabilitación</th>
                                        <th scope="">Habilitar Tarjeta</th>
                                        <th scope=""></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${filtros}" var="fill">
                                        <c:if test="${fill == '3'}"> 
                                            <c:forEach items="${datos_select}" var="dato">
                                                <tr id="${dato[0]}">
                                                    <td data-target="n_tarjeta">${dato[0]}</td>
                                                    <td data-target="n_titular">${dato[1]}</td>
                                                    <td data-target="f_habilitacion">${dato[2]}</td>
                                                    <td data-target="f_deshabilitacion">${dato[3]}</td>
                                                    <td data-target="m_deshabilitacion">${dato[4]}</td>
                                                    <td><a href="#" data-role="update" data-id="${dato[0]}" class=" btn btnCuenta">Habilitar</a></td>
                                                    <td><a href="historial_tarjeta_select.htm?filtro=1&busqueda=${dato[0]}"><button type="button" class="btn btnEdit1">Historial</button></a></td>
                                                </tr>
                                            </c:forEach>                            
                                        </c:if>
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

        <!-- modal actualizar-->
        <div class="modal fade" id="exampleModal2" role="dialog" >
            <div class="modal-dialog" role="document">
                <form action="lista_negra_update.htm" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Habilitar Tarjeta</h5>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group row">
                                        <div class="col-sm-6 align-self-center">
                                            <label><b>Número de tarjeta:</b></label>
                                        </div>
                                        <div class="col-sm-6 align-self-center">
                                            <input class="dBorder" id="n_tarjeta" name="n_tarjeta" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 align-self-center">
                                            <label><b>Nombre del titular:</b></label>                                        
                                        </div>
                                        <div class="col-sm-6 align-self-center">
                                            <input class="dBorder" id="n_titular" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 align-self-center">
                                            <label><b>Fecha de habilitación:</b></label>
                                        </div>
                                        <div class="col-sm-6 align-self-center">
                                            <input class="dBorder" id="f_habilitacion" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 align-self-center">
                                            <label><b>Fecha de deshabilitación:</b></label>
                                        </div>
                                        <div class="col-sm-6 align-self-center">
                                            <input class="dBorder" id="f_deshabilitacion" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 align-self-center">
                                            <label><b>Motivo de deshabilitación:</b></label>
                                        </div>
                                        <div class="col-sm-6 align-self-center">
                                            <input class="dBorder" id="m_deshabilitacion" readonly>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-success">Habilitar</button>
                            </div>
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
                    var n_tarjeta = $('#' + id).children('td[data-target=n_tarjeta]').text();
                    var n_titular = $('#' + id).children('td[data-target=n_titular]').text();
                    var f_habilitacion = $('#' + id).children('td[data-target=f_habilitacion]').text();
                    var f_deshabilitacion = $('#' + id).children('td[data-target=f_deshabilitacion]').text();
                    var m_deshabilitacion = $('#' + id).children('td[data-target=m_deshabilitacion]').text();

                    $('#id').val(id);
                    $('#n_tarjeta').val(n_tarjeta);
                    $('#n_titular').val(n_titular);
                    $('#f_habilitacion').val(f_habilitacion);
                    $('#f_deshabilitacion').val(f_deshabilitacion);
                    $('#m_deshabilitacion').val(m_deshabilitacion);
                    $('#exampleModal2').modal('toggle');
                });
            });
        </script>
        <script type="text/javascript">

            $(document).ready(function () {
                $('#radio1').change(function () {
                    $('#numero_tarjeta').hide();
                    $('#nombre_titular').hide();
                    $('#todas_tarjetas').show();
                    window.location.href = 'lista_negra.htm';
                });
            });

            $(document).ready(function () {
                $('#radio2').change(function () {
                    $('#todas_tarjetas').hide();
                    $('#nombre_titular').hide();
                    $('#numero_tarjeta').show();
                });
            });

            $(document).ready(function () {
                $('#radio3').change(function () {
                    $('#numero_tarjeta').hide();
                    $('#todas_tarjetas').hide();
                    $('#nombre_titular').show();
                });
            });

            $(document).ready(function () {
                var x = $('#checkBox').val();

                if (x === '2') {
                    $("#radio2").prop("checked", true);
                    $("#radio1").prop("checked", false);
                    $("#radio3").prop("checked", false);
                    $('#todas_tarjetas').hide();
                    $('#nombre_titular').hide();
                    $('#numero_tarjeta').show();
                }

                var x = $('#checkBox').val();

                if (x === '3') {
                    $("#radio3").prop("checked", true);
                    $("#radio1").prop("checked", false);
                    $("#radio2").prop("checked", false);
                    $('#numero_tarjeta').hide();
                    $('#todas_tarjetas').hide();
                    $('#nombre_titular').show();
                }
            });

            $(document).ready(function () {
                var parameter = $('#respuesta').val();
                if (parameter === "0") {
                    toastr.error('No se encontraron coincidencias', 'Error', {
                        "positionClass": "toast-bottom-right",
                        "timeOut": "5000"
                    });
                }

                var parameter = $('#respuesta2').val();
                if (parameter === "1") {
                    toastr.success('Tarjeta habilitada', 'Exito', {
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