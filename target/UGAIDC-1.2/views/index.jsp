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
        <title>UG_AIDC | MIS</title>
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
                           
                            <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="${pageContext.request.contextPath}/resources/images/ugaidc.jpeg" class="image"> </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card2 card border-0 px-4 py-5">
                            <form class="" action="home" method="post">
                                <div>
                                    <div class="text-center">
                                        <span style="color: #FF8400;">
                                          
                                        </span>
                                    </div>

                                </div>

                                <div class="text-center">
                                    <p><h3 style="color: #FF8400;">UAC MIS</h3></p>
                                </div>

                                <div class="row px-3"> <label class="mb-1">
                                        <h6 class="mb-0 text-sm">Username</h6>
                                    </label> <input class="mb-4" type="text" name="username" placeholder="Enter a valid email address" required>
                                </div>
                                <div class="row px-3"> <label class="mb-1">
                                        <h6 class="mb-0 text-sm">Password</h6>
                                    </label> <input type="password" name="password" placeholder="Enter password" required> </div>
                                <div class="row px-3 mb-4">
                                    <div class="custom-control custom-checkbox custom-control-inline"> 
                                      <input id="chk1" type="checkbox" name="chk" class="custom-control-input"> 
                                   
                                    </div>
                                    <a href="Register" class="ml-auto mb-0 text-sm">Register?</a> 
                                </div>
                                <c:if test="${err!=null}">
                                    <div class="alert alert-warning">
                                        <strong>${err}</strong>
                                    </div>
                                </c:if>
                                <div class="row mb-3 px-3">
                                    <button type="submit" class="btn btn-blue text-center">Login</button>
                                </div>


                            </form>
                        </div>
                    </div>
                </div>

                <div class="bg-blue py-4">
                    <div class="row px-3"> <small class="ml-4 ml-sm-5 mb-2">Copyright</small>
                        <div class="social-contact ml-4 ml-sm-auto">
                            <a href="https://www.facebook.com/AARInsurance" target="_blank" rel="noopener noreferrer" data-auth="NotApplicable" data-linkindex="0"><span class="fa fa-facebook mr-4 text-sm"></span></a>
                            <a href="https://www.linkedin.com/in/aar-insurance-08a181a7/" target="_blank" rel="noopener noreferrer" data-auth="NotApplicable" data-linkindex="0"><span class="fa fa-linkedin mr-4 text-sm"></span></a>
                            <a href="https://www.facebook.com/AARInsurance" target="_blank" rel="noopener noreferrer" data-auth="NotApplicable" data-linkindex="0"><span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- jquery-->
        <script src="${pageContext.request.contextPath}/resources/login/js/jquery-3.5.0.min.js"></script>
        <!-- Popper js -->
        <script src="${pageContext.request.contextPath}/resources/login/js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="${pageContext.request.contextPath}/resources/login/js/bootstrap.min.js"></script>


    </body>

</html>
