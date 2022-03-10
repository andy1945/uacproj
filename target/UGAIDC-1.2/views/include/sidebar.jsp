<%-- 
    Document   : sidebar
    Created on : Feb 20, 2018, 9:15:59 PM
    Author     : andrew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Left Panel -->

<aside id="left-panel" class="left-panel">
  <nav class="navbar navbar-expand-sm navbar-default">

    <div class="navbar-header">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa fa-bars"></i>
      </button>
      <c:url var="logo" value="/resources/images/logo.png" />
      <a class="navbar-brand" href="${pageContext.request.contextPath}/Console"><img src="${logo}" alt="Logo"></a>
      <a class="navbar-brand hidden" href="./"><img src="${logo}" alt="Logo"></a>
    </div>

    <div id="main-menu" class="main-menu collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active">
          <a href="${pageContext.request.contextPath}/Console"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
        </li>
        <h3 class="menu-title">Client</h3><!-- /.menu-title -->
        <li>
          <a href="${pageContext.request.contextPath}/viewpayments?type=SUCCESSFUL"> <i class="menu-icon ti-bar-chart-alt"></i>Successfully Paid </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/viewpayments?type=INITIATED"> <i class="menu-icon ti-bar-chart-alt"></i>Initiated Payments</a>
        </li>
          <li>
          <a href="${pageContext.request.contextPath}/viewpayments?type=FAILED"> <i class="menu-icon ti-bar-chart-alt"></i>Failed Payments</a>
        </li>
       
        <h3 class="menu-title">Support</h3><!-- /.menu-title -->
        <li class="menu-item-has-children dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-glass"></i>Support center</a>
          <!--<ul class="sub-menu children dropdown-menu">
            <li><i class="menu-icon fa fa-sign-in"></i><a href="Reports">Kutsandy Support</a></li>

            <li><i class="menu-icon fa fa-sign-in"></i><a href="${pageContext.request.contextPath}?action=logout">Logout</a></li>
          </ul> -->
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </nav>
</aside><!-- /#left-panel -->
