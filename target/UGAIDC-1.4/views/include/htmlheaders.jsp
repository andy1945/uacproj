<%-- 
    Document   : htmlheaders
    Created on : Jun 29, 2021, 2:47:16 PM
    Author     : andrew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

    <style type="text/css">
        .buybox {
            display:inline-block;
            width:autox;
            height:auto;
            position:relative;
            text-align:center;
            vertical-align:middle;

        }
    </style>

    <script>
        $(document).ready(function () {
            var date_input = $('input[name="dateinst"]'); //our date input has the name "date"
            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
            date_input.datepicker({
                format: 'yyyy-mm-dd',
                container: container,
                todayHighlight: true,
                autoclose: true,
            })
        })
    </script>

</head>

