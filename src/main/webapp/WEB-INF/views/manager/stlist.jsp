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
		<form class="form-horizontal form-label-left" role="form" name="frm" id="frm" method="post" action="/manager/stlist" >
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
                            <th class="column-title" style="display: table-cell;">사진 </th>
                            <th class="column-title" style="display: table-cell;">사업자번호 </th>
                            <th class="column-title" style="display: table-cell;">매장명 </th>
                            <th class="column-title" style="display: table-cell;">매장 상세/수정/삭제</th>
                            <th class="column-title" style="display: table-cell;">상세</th>
                            <th class="column-title" style="display: table-cell;">수정</th>
                            <th class="column-title" style="display: table-cell;">삭제</th>
                          </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="store" items="${stlist }">
                          <tr class="even pointer">
                            <td class="hidden">${store.st_num}</td>
                            <td class="hidden">${store.user_id}</td>
                            <td class="image">
                            	<div>
                            		<img>
                            	</div>
                            </td> 
                            <td class=" ">${store.st_biznum }</td>
                            <td class=" ">${store.st_name }</td>
                            <td class=" last">
                            	<div>
                            		<!-- ajax 활용 -->
                            		<button name="detail" value="${store.st_num }" class="btn btn-primary">상세</button>
                            		<button name="modofy" value="${store.st_num }" class="btn btn-success">수정</button>
                            		<button name="delete" value="${store.st_num }" class="btn btn-danger">삭제</button>
                            	</div>
                            </td>
                            <td class=" last"><a href='/manager/stget?st_num=<c:out value="${store.st_num }"/>'>상세</a></td>
                            <td class=" last"><a href='/manager/stmodify?st_num=<c:out value="${store.st_num }"/>'>수정</a></td>
                            <td class=" last"><a href='/manager/stdelete?st_num=<c:out value="${store.st_num }"/>'>삭제</a></td>
                          </tr> 
                          </c:forEach>
                        </tbody>
                      </table>
                      
                    </div>
                  </div>
                </div> 
              </div>
              </form>
            </div>
            
            
<!-- 상점상세 모달 -->
<div id="myModal" role="dialog">
	<div>
		<!-- modal content -->
		<div>
			<div>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4>상점 상세보기</h4>
			</div>
			<div>
				<table>
					<tr>
						<td>사진</td>
						<td>
							<div>
								<img>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>카테고리</td>
						<td>${store.code_id }</td>
					</tr>	
					<tr>
						<td>상점명</td>
						<td>${store.st_name }</td>
					</tr>
					<tr>
						<td>사업자번호</td>
						<td>${store.st_biznum }</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>${store.st_phone}</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>${store.st_address1}, ${store.st_address2}, ${store.st_address3}</td>
					</tr>
					<tr>
						<td>영업시간</td>
						<td>${store.starttime1} ~ ${store.endtime2 }</td>
					</tr>
					<tr>
						<td>소개</td>
						<td>${store.cotent}</td>
					</tr>					
				</table>
			</div>
			<div>
				<button type="button" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
</body>

    <!-- jQuery -->
    <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>
    
<script>
$(document).ready(function(){
	
	//삭제버튼 클릭 시
	$("button[name='delete']").click(function(){
		st_num = this.value;
		$.ajax({
			url : '/manager/stdelete' + st_num,
			type : 'DELETE',
		});
		location.reload();
	});


/*   function stDelete(st_num){
	if (confirm("정말 삭제하시겠습니까 ?")) {
		st_num = this.value;
		
		$.ajax({
			url : "/manager/stdelete" + st_num,
			type : "POST",
			dataType : "json",
		}).done(function(result){
			console.log(result);
			if(result.statusCode == 1){
				alert("삭제 완료");
				location.href="/manager/stlist"
			}else{
				alert("삭제 실패");
			}
		});
	} 
}  */


});
</script>
</html>
