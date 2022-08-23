<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>오늘 뭐 먹지?</title>
<%@ include file="../includes/user_header.jsp" %>
</head>

<body>
	<!-- page content -->
        <div class="right_col" role="main" style="min-height: 3634px;">
          <div class="">
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><b>마이페이지</b></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                    <form data-parsley-validate="" class="form-horizontal form-label-left" method="post" name="frm" id="frm" action="" >

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">아이디</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
							<input type="text" name="user_id" id="user_id" class="form-control col-md-7 col-xs-12" data-parsley-id="5" readonly="readonly">
							<div class="check_font" id="id_check"></div>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">비밀번호</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="password" id="pw" name="pw" title="비밀번호" class="form-control col-md-7 col-xs-12" data-parsley-id="9" readonly="readonly">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">이름 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="user_name" name="user_name" class="form-control col-md-7 col-xs-12" data-parsley-id="9" readonly="readonly">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">이메일*</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="email" name="email" class="form-control col-md-7 col-xs-12" data-parsley-id="9" readonly="readonly">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">연락처*</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="user_phone" name="user_phone" class="form-control col-md-7 col-xs-12" data-parsley-id="9" readonly="readonly">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">주소 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input placeholder="우편번호" type="text" id="address1" name="address1" readonly="readonly" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
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
                          <input placeholder="상세주소" type="text" id="address3" name="address3" class="form-control col-md-7 col-xs-12" data-parsley-id="9" readonly="readonly">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="button" class="btn btn-success" onclick="location.href='/mypage/modify'">정보수정</button>
                          <button class="btn btn-primary" type="button" onclick="location.href='/mypage/pwmodify'">비밀번호 수정</button>
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
</body>
</html>
