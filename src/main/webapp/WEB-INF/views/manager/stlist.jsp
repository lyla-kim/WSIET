<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>오늘 뭐 먹지?</title>
	<%@ include file="../includes/manager_header.jsp" %>
</head>

<body>
	<div class="right_col" role="main" style="min-height: 1170px;">
          <div class=""></div>


              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>매장 리스트</h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
                    <div class="table-responsive">
	                   <div style='width:80px;float: right;'>
	                   	<a href="/manager/stregister"><button type="button" class="btn btn-success">등록</button></a>
					   </div>
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th class="column-title" style="display: table-cell;">사업자번호 </th>
                            <th class="column-title" style="display: table-cell;">매장명 </th>
                            <th class="column-title" style="display: table-cell;">매장 상세 </th>
                            <th class="column-title" style="display: table-cell;">수정</th>
                            <th class="column-title" style="display: table-cell;">삭제</th>
                          </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="store" items="${stlist }">
                          <tr class="even pointer">
                            <td class=" ">${store.st_biznum }</td>
                            <td class=" ">${store.st_name }</td>
                            <td class=" last"><a href="#">상세보기</a>
                            <td class=" last"><a href="#">수정</a>
                            <td class=" last"><a href="#">삭제</a>
                            </td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
							
						
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</body>
</html>
