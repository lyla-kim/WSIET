<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
    <!-- Animate.css -->
    <link href="/resources/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/resources/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
  	
  	<h2><c:out value="${error }"/></h2>
  	<h2><c:out value="${logout }"/></h2>
  
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
          
            <form method="post" action="/login">
              <h1>Login</h1>
              <div>
                <input type="text" class="form-control" id="username" name="username" placeholder="ID" />
              </div>
              <div>
                <input type="password" class="form-control" id="pw" name="pw" placeholder="Password" />
              </div>
              <div>
              	<button type="submit" class="btn btn-default submit">로그인</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
              	<p class="change_link">
               	 <a class="to_register" href="#" >Lost your password?</a>
                </p>
                
                <p class="change_link">New to site?
                  <a href="/common/join" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1>오늘 뭐 먹지?</h1>
	              <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                </div>
              </div>
            </form>
          </section>
        </div>

      </div>
    </div>
  </body>
</html>
