<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
          	<c:if test="${user == null}">
          	
            <form method='post' action="/common/login">
              <h1>Login</h1>
              <div>
                <input type="text" class="form-control" id="user_id" name="user_id" placeholder="ID" required="" />
              </div>
              <div>
                <input type="password" class="form-control" id="pw" name="pw" placeholder="Password" required="" />
              </div>
              <div>
              	<button type="submit" class="btn btn-default submit">로그인</button>
                <!-- <a class="btn btn-default submit" href="/manager/main">Log in</a> -->
                <c:if test="${result eq 'loginFalse'}">
                아이디나 패스워드가 일치하지 않습니다.
                </c:if>
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
                </div>
              </div>
              <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
            </form>
            </c:if>
            <c:if test="${user != null }">
            ${user.getUser_id()} 님 환영합니다
            </c:if>
          </section>
        </div>

      </div>
    </div>
  </body>
</html>
