<%-- 
    Document   : hello
    Created on : Nov 16, 2017, 7:36:15 PM
    Author     : andrew
--%>
<%@page import="javax.ejb.EJB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html class="no-js" lang="">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>AAR | Password Reset</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/login/css/bootstrap.min.css">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <c:url var="url_1" value="/login/css/style.css"/>
    <link rel="stylesheet" href="${url_1}"/>
  </head>

  <body>

    <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
      <div class="card card0 border-0">
        <div class="row d-flex">
          <div class="col-lg-6">
            <div class="card1 pb-5">
              <div class="row"> <img src="${pageContext.request.contextPath}/resources/images/logo.png" class="logo"> </div>
              <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="${pageContext.request.contextPath}/resources/images/aarsvg.svg" class="image"> </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="card2 card border-0 px-4 py-5">
              <form class="" action="ForgotPassword" method="post">
                <div>
                  <div class="text-center">
                    <span style="color: #FF8400;">
                      <i class="fa fa-money fa-2x"></i>
                    </span>
                  </div>

                </div>

                <div class="text-center">
                  <p><h3 style="color: #FF8400;">Cards & Payments Portal</h3></p>
                </div>
                <div class="text-center">
                  <p><small>Forgot Password?</small></p>
                </div>

                <c:if test="${suc!=null}">
                  <div class="alert alert-success addDefinitionMessage alert-dismissable">
                    <button type="button" class="close" data-hide="alert" >&times;</button>
                    <span>${suc}</span>
                  </div>
                </c:if>

                <div class="row px-3"> <label class="mb-1">
                    <h6 class="mb-0 text-sm">Email Address</h6>
                  </label> <input class="mb-4" type="text" name="email" placeholder="Enter your email address" required>
                </div>

                <c:if test="${err!=null}">
                  <div class="alert alert-warning">
                    <strong>${err}</strong>
                  </div>
                </c:if>
                <div class="row mb-3 px-3">
                  <button type="submit" class="btn btn-blue text-center">Reset</button>
                </div>


              </form>
            </div>
          </div>
        </div>

        <div class="bg-blue py-4">
          <div class="row px-3"> <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; AAR Insurance. All rights reserved</small>
            <div class="social-contact ml-4 ml-sm-auto">
              <a href="https://www.facebook.com/AARInsurance" target="_blank" rel="noopener noreferrer" data-auth="NotApplicable" data-linkindex="0"><span class="fa fa-facebook mr-4 text-sm"></span></a>
              <a href="https://www.linkedin.com/in/aar-insurance-08a181a7/" target="_blank" rel="noopener noreferrer" data-auth="NotApplicable" data-linkindex="0"><span class="fa fa-linkedin mr-4 text-sm"></span></a>
              <a href="https://www.facebook.com/AARInsurance" target="_blank" rel="noopener noreferrer" data-auth="NotApplicable" data-linkindex="0"><span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span></a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script>
      $(document).ready(function () {
        $("[data-hide]").on("click", function () {
          console.log("===close call===");
          $(this).closest("." + $(this).attr("data-hide")).hide();
        });
      });
    </script>
    <!-- jquery-->
    <script src="${pageContext.request.contextPath}/resources/login/js/jquery-3.5.0.min.js"></script>
    <!-- Popper js -->
    <script src="${pageContext.request.contextPath}/resources/login/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${pageContext.request.contextPath}/resources/login/js/bootstrap.min.js"></script>


  </body>

</html>
