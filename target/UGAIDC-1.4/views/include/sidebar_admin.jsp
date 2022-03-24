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
        <h3 class="menu-title">List Users</h3><!-- /.menu-title -->
        <li>
          <a href="${pageContext.request.contextPath}/"> <i class="menu-icon ti-bar-chart-alt"></i>List Users </a>
        </li>
        
       
      </ul>
    </div><!-- /.navbar-collapse -->
  </nav>
</aside><!-- /#left-panel -->
