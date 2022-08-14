<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <!-- bootstrap-wysiwyg -->
    <link href="/resources/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="/resources/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="/resources/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="/resources/vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="/resources/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/resources/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">

        <!-- page content -->
        <div class="right_col" role="main" style="min-height: 3634px;">
          <div class="">
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><b>회원 가입</b></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                    <form data-parsley-validate="" class="form-horizontal form-label-left" method="post" name="frm" id="frm" action="" >

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">아이디 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
							<input type="text" name="user_id" id="user_id" class="form-control col-md-7 col-xs-12" data-parsley-id="5" required>
							<div class="check_font" id="id_check"></div>
                        </div>
						<button type="button" name="idck" id="idck" >중복체크</button>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">비밀번호 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="password" id="pw" name="pw" title="비밀번호" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
	                          <span>6이상 12자 이내 영문, 숫자, 특수문자 중 두가지 이상 혼합</span>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">비밀번호 확인*</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="password" id="pwCheck" name="pwCheck" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">이름 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="user_name" name="user_name" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">이메일*</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="email" name="email" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                        <button type="button" name="emailck" id="emailck" onclick="emailCheck()" >이메일 인증</button>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"></label>
                      	<div class="col-md-6 col-sm-6 col-xs-12" id="emailNoBox">
                          <input placeholder="인증번호 6자리를 입력하세요." disabled="disabled" maxlength="6" id="emailNoCk" name="emailNoCk" class="form-control col-md-7 col-xs-12" data-parsley-id="9" >
                      	</div>
                      		<span id="mail-check-warn"></span>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">연락처*</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="user_phone" name="user_phone" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                          <span>공백 없이 숫자</span>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">주소 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input placeholder="우편번호" type="text" id="address1" name="address1" readonly="readonly" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                        <button type="button" onclick="execPostCode();" >주소찾기</button>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"></label>
                      	<div class="col-md-6 col-sm-6 col-xs-12">
                          <input placeholder="도로명 주소" type="text" id="address2" name="address2" readonly="readonly" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"></label>
                      	<div class="col-md-6 col-sm-6 col-xs-12">
                          <input placeholder="상세주소" type="text" id="address3" name="address3" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="button" class="btn btn-success" form="frm" onclick="join()">가입하기</button>
                          <button class="btn btn-primary" type="button" onclick="location.href='/common/login'">로그인 이동</button>
                          <button class="btn btn-primary" type="button" onclick="location.href='/'">메인 이동</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->


    <!-- jQuery -->
    <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>
    
    <!-- 주소찾기 kakao api -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="/resources/js/addressApi.js"></script>
	
	<!-- 회원가입 유효성 검사 -->
	<script src="/resources/js/join.js"></script>
	
	<!-- 이메일 인증 -->
	<script src="/resources/js/emailCheck.js"></script>
	
	<!-- id중복체크 -->
	<script src="/resources/js/idCheck.js"></script>
	
<script type="text/javascript">

</script>

  

