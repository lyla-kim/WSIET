<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>오늘 뭐 먹지?</title>

    <!-- Bootstrap -->
    <link href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="/resources/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="/resources/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="/resources/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/resources/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
               <a href="/"><img src="../resources/img/logo.png" style = "height:230px"></a>
            </div>

            <div class="clearfix"></div>

            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="menu_section active">
              
              <div class="">
	            	<div class="input-group">
	                	<input type="text" class="form-control" placeholder="Search for...">
	                    <span class="input-group-btn">
	                      <button class="btn btn-default" type="button">Go!</button>
	                    </span>
	            	</div>
	         	</div>
            

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                <ul class="nav side-menu" style="">
                  <li>
                  	<a href="/common/join"><i class="fa fa-heart-o"></i> 회원가입</a>
                  </li>
                  <li>
                  	<a href="/common/login"><i class="fa fa-smile-o"></i> 로그인 </a>
                  </li>
                  <li><a><i class="fa fa-clone"></i>카테고리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="fixed_sidebar.html">한식</a></li>
                      <li><a href="fixed_footer.html">일식</a></li>
                      <li><a href="fixed_footer.html">양식</a></li>
                      <li><a href="fixed_footer.html">중식</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
              </div>

            </div>
            <!-- /sidebar menu -->
            
            <!-- 로그아웃 -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="" href="/common/logout" data-original-title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>

          </div>
        </div>


    <!-- jQuery -->
    <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/resources/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/resources/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="/resources/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="/resources/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="/resources/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="/resources/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="/resources/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="/resources/vendors/Flot/jquery.flot.js"></script>
    <script src="/resources/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="/resources/vendors/Flot/jquery.flot.time.js"></script>
    <script src="/resources/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="/resources/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="/resources/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="/resources/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="/resources/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="/resources/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="/resources/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="/resources/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="/resources/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/resources/vendors/moment/min/moment.min.js"></script>
    <script src="/resources/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="/resources/build/js/custom.min.js"></script>
	
 </body>
 </html>
