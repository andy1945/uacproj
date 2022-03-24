<%-- 
    Document   : creatfiber
    Created on : Feb 20, 2018, 9:08:50 PM
    Author     : andrew
--%>
<%@page import="aarinsurance.com.model.UserModified"%>
<%@page import="javax.ejb.EJB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.google.gson.Gson" %>

<%
  String json = request.getSession().getAttribute("user").toString();
  //request.getSession().getAttribute("user")
  //out.println("user==" + json);
  UserModified user = new Gson().fromJson(json, UserModified.class);
  //out.println("username:" + request.getContextPath()); 
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>AAR | Users</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" />
    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" />
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
      <c:when test="<%=user.getType().equalsIgnoreCase("CARDS")%>">
        <jsp:include page="include/sidebar_cards.jsp"/>  
      </c:when>
      <c:when test="<%=user.getType().equalsIgnoreCase("PAYMENTS")%>">
        <jsp:include page="include/sidebar_payments.jsp"/>  
      </c:when>
      <c:otherwise>

        <jsp:include page="include/sidebar_admin.jsp"/> 
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
                <li><a href="${pageContext.request.contextPath}/Users">Users</a></li>
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
                  <strong class="card-title">Users</strong>
                  <div style="float: right; text-align: right;">

                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModalLong"><i class="fa fa-plus-circle"></i>&nbsp; Add</button>
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
              <h5 class="modal-title" id="exampleModalLongTitle">Add a User</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <div style="display: none; margin: auto; margin-top: 10px;" id="spinner" class="spinner-border spinner-border-sm text-danger" role="status">
              <span class="sr-only">Loading...</span>
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
              <div class="form-group">
                <label for="cc-name" class="control-label mb-1">Full Name</label>
                <input value="${name}" id="name" name="name" type="text" class="form-control" placeholder="Full Name" data-val="true" required>
              </div>
              <div class="form-group">
                <label for="cc-name" class="control-label mb-1">Email</label>
                <input value="${email}" id="email" name="email" type="email" class="form-control" data-val="true" placeholder="Email@domain.com" required>
              </div>
              <div class="form-group">
                <label for="cc-name" class="control-label mb-1">Phone number</label>
                <input value="${mobile}" id="mobile" name="mobile" type="number" class="form-control" placeholder="0773******" data-val="true">
              </div>

              <div class="form-group">
                <label for="cc-number" class="control-label mb-1">Type</label>
                <select name="type" id="type" class="form-control" required>
                  <option value="0">Please select</option>                
                  <option value="PAYMENTS">PAYMENTS</option>
                  <option value="CARDS">CARDS</option>
                  <option value="ADMINISTRATOR">ADMINISTRATOR</option>

                </select>
              </div>

            </div>
            <div class="modal-footer">

              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" name="form_action" id="form_action" class="btn btn-danger">Save</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <!-- Modal add group-->

    <script>
        function load_groups() {

          $.ajax({
            url: "${pageContext.request.contextPath}/webresources/tableshtml/table/users",
            method: "GET",
            dataType: 'text',
            success: function (datas) {

              $('#mytaable').html(datas);
              $('#bootstrap-data-table').DataTable({
                pageLength: 0,
                lengthMenu: [5, 10, 20, 50, 100, 200, 500]
              });


            }
          });
        }
      function myFunction(userid) {
        console.log("val===" + userid);
        var result = confirm("You are about to delete this user?");
        if (result) {

          $.ajax({
            url: "${pageContext.request.contextPath}/webresources/aarinsurance.com.user/remove/"+userid,
            method: "GET",
            dataType: 'text',
            success: function (datas) {

             load_groups();
            }
          });

        }
      }
      $(document).ready(function () {
   
        $(document).ready(function () {
          $('#bootstrap-data-table').DataTable();

        });



        console.log("===page rady===");
        load_groups();

     

        $('#group_form').on('submit', function (event) {
          event.preventDefault();
          $('#form_action').attr('disabled', 'disabled');
          document.getElementById("spinner").style.display = "block";
          let name = document.getElementById("name").value;
          let partner = 1;
          let type = document.getElementById("type").value;
          let email = document.getElementById("email").value;
          let mobile = document.getElementById("mobile").value;


          let postDate = {name: name, email: email, mobile: mobile, type: type};
          let jsonData = JSON.stringify(postDate);
          let myurl = '${pageContext.request.contextPath}/webresources/aarinsurance.com.user/create/' + partner;
          console.log("myurl===" + myurl);
          console.log("closing===" + jsonData);
          $.ajax({
            url: myurl,
            dataType: 'json',
            method: 'POST',
            contentType: 'application/json',
            data: jsonData,
            success: function (data) {
              console.log("return=====" + data);
              console.log("return=====" + data.error);
              document.getElementById("spinner").style.display = "none";

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
