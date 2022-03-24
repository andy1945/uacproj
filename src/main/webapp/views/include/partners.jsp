<%-- 
    Document   : creatfiber
    Created on : Feb 20, 2018, 9:08:50 PM
    Author     : andrew
--%>
<%@page import="javax.ejb.EJB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.google.gson.Gson" %>
<%@page import="com.liquid.wifi.entities.Users" %>
<%
    String json = request.getSession().getAttribute("user").toString();
    //request.getSession().getAttribute("user")
    //out.println("user==" + json);
    Users user = new Gson().fromJson(json, Users.class);
    //out.println("username:" + request.getContextPath()); 
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Liquid | Home</title>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" />
        <link rel="apple-touch-icon" href="apple-icon.png">
        <link rel="shortcut icon" href="favicon.ico">
        <c:url var="url_1" value="/static/assets/css/normalize.css"/>
        <link rel="stylesheet" href="${url_1}"/>
        <c:url var="url_2" value="/static/assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="${url_2}"/>
        <c:url var="url_3" value="/static/assets/css/font-awesome.min.css" />
        <link rel="stylesheet" href="${url_3}"/>
        <c:url var="url_4" value="/static/assets/css/themify-icons.css" />
        <link rel="stylesheet" href="${url_4}" />
        <c:url var="url_5" value="/static/assets/css/flag-icon.min.css" />
        <link rel="stylesheet" href="${url_5}"/>
        <c:url var="url_6" value="/static/assets/css/cs-skin-elastic.css" />
        <link rel="stylesheet" href="${url_6}">
        <c:url var="url_7" value="/static/assets/scss/style.css" />
        <link rel="stylesheet" href="${url_7}">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'/>

        <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/lib/datatable/dataTables.bootstrap.min.css">

    </head>
    <body> 
        <c:choose >
            <c:when test="<%=user.getType().equalsIgnoreCase("admin")%>">
                <jsp:include page="include/sidebar_admin.jsp"/>  
            </c:when>
            <c:otherwise>

                <jsp:include page="include/sidebar.jsp"/> 
            </c:otherwise>
        </c:choose>


        <!-- Right Panel-->
        <div id="right-panel" class="right-panel">

            <jsp:include page="include/header_main.jsp"/>
            <!-- NAVIGATION STUFF --->
            <div class="breadcrumbs">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <h1>Dashboard</h1>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="page-header float-right">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li><a href="${pageContext.request.contextPath}">Dashboard</a></li>
                                <li><a href="Partners">Partners</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content mt-3">
                <div class="animated fadeIn">
                    <div class="row">

                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Partners</strong>
                                    <div style="float: right; text-align: right;">

                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong"><i class="fa fa-plus-circle"></i>&nbsp; Add</button>
                                    </div>

                                </div>

                                <div  class="card-body">
                                    <div id="mytaable">

                                    </div>

                                </div>
                            </div>
                        </div>


                    </div>
                </div><!-- .animated -->
            </div><!-- .content -->
        </div><!-- Right pan --->

        <!-- Modal add group-->
        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <form method="post" id="group_form" class="">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Add a Partner</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div id="error" style="display: none" class="alert alert-danger alert-dismissible fade show" role="alert">
                                <strong>Whoops!</strong> <span id="error_msg"></span>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div id="success" style="display: none" class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>Success!</strong> <span id="success_msg"></span>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="position-relative form-group"><label for="exampleEmail" class="">Partner Name</label>
                                <input name="pname" id="pname" placeholder="Name" type="text" class="form-control" required>
                            </div>


                            <div class="position-relative form-group"><label for="exampleSelect" class="">Location</label>
                                <input name="plocation" id="plocation" placeholder="Partner location" type="text" class="form-control" required>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" name="form_action" id="form_action" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Modal add group-->

        <script>
            $(document).ready(function () {
                $(document).ready(function () {
                    $('#bootstrap-data-table').DataTable();
                });

                console.log("===page rady===");
                load_groups();

                function load_groups() {

                    $.ajax({
                        url: "${pageContext.request.contextPath}/liquid/tableshtml/table/view",
                        method: "GET",
                        dataType: 'text',
                        success: function (datas) {

                            $('#mytaable').html(datas);
                            $(document).ready(function () {
                                $('#bootstrap-data-table').DataTable({
                                    pageLength: 0,
                                    lengthMenu: [5, 10, 20, 50, 100, 200, 500]
                                });
                            });
                        }
                    });
                }

                $('#group_form').on('submit', function (event) {
                    event.preventDefault();
                    $('#form_action').attr('disabled', 'disabled');
                    var form_data = $(this).serialize();
                    let name = document.getElementById("pname").value;
                    let loc = document.getElementById("plocation").value;
                    let postDate = {pname: name, plocation: loc};
                    let jsonData = JSON.stringify(postDate);

                    console.log("closing===" + jsonData);
                    $.ajax({
                        url: '${pageContext.request.contextPath}/liquid/com.liquid.wifi.partners',
                        dataType: 'json',
                        method: 'POST',
                        contentType: 'application/json',
                        data: jsonData,
                        success: function (data) {
                            console.log("return=====" + data);
                            console.log("return=====" + data.error);

                            if (data.error) {

                                $('#error_msg').html(data.message);
                                document.getElementById("error").style.display = "block";

                                $('#form_action').attr('disabled', false);
                            } else {
                                $('#success_msg').html("Added successfully");
                                document.getElementById("success").style.display = "block";

                                document.getElementById("group_form").reset();

                                load_groups();

                            }


                        }
                    });
                });
            });
        </script>

        <c:url var="js1" value="/static/assets/js/vendor/jquery-2.1.4.min.js" />
        <script src="${js1}"></script>
        <c:url var="js4" value="/static/assets/js/popper.min.js" />
        <script src="${js4}"></script>

        <c:url var="js2" value="/static/assets/js/plugins.js" />
        <script src="${js2}"></script>
        <c:url var="js3" value="/static/assets/js/main.js" />
        <script src="${js3}"></script>


        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/datatables.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/dataTables.buttons.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/jszip.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/pdfmake.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/vfs_fonts.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/buttons.html5.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/buttons.print.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/buttons.colVis.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/assets/js/lib/data-table/datatables-init.js"></script>

    </body>
</html>
