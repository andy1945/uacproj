<%-- 
    Document   : creatfiber
    Created on : Feb 20, 2018, 9:08:50 PM
    Author     : andrew
--%>

<%@page import="ugaidc.co.ug.entities.Userdata"%>
<%@page import="javax.ejb.EJB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.google.gson.Gson" %>

<%
  String json = request.getSession().getAttribute("user").toString();
  //request.getSession().getAttribute("user")
// out.println("user==" + json); 

  Userdata user = new Gson().fromJson(json, Userdata.class);
  // out.println("username:" + user.getName()); 

%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>UAC | Home</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
     <jsp:include page="include/sidebar_admin.jsp"/> 


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
                <li><a href="#">Dashboard</a></li>

              </ol>
            </div>
          </div>
        </div>
      </div>

                                                  </div><!-- .content -->
                                                  </div><!-- Right pan --->
                                                  <c:url var="js1" value="/static/assets/js/vendor/jquery-2.1.4.min.js" />
                                                  <script src="${js1}"></script>
                                                  <c:url var="js4" value="/static/assets/js/popper.min.js" />
                                                  <script src="${js4}"></script>

                                                  <c:url var="js2" value="/static/assets/js/plugins.js" />
                                                  <script src="${js2}"></script>
                                                  <c:url var="js3" value="/static/assets/js/main.js" />
                                                  <script src="${js3}"></script>

                                                  </body>
                                                  </html>
