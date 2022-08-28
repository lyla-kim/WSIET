<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>오늘 뭐 먹지?</title>
		<%@ include file="../includes/manager_header.jsp" %>
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
                    <h2><b>매장 상세 정보</b></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                    <form class="form-horizontal form-label-left" role="form" method="post" name="frm" id="frm">

					  <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">카테고리</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<c:if test="${store.code_id eq 'A1001' }">
							<input name="st_code_id" id="st_code_id" class="form-control col-md-7 col-xs-12" data-parsley-id="5" readonly value="한식">
                        	</c:if>
                        	<c:if test="${store.code_id eq 'A1002' }">
							<input name="st_code_id" id="st_code_id" class="form-control col-md-7 col-xs-12" data-parsley-id="5" readonly value="일식">
                        	</c:if>
                        	<c:if test="${store.code_id eq 'A1003' }">
							<input name="st_code_id" id="st_code_id" class="form-control col-md-7 col-xs-12" data-parsley-id="5" readonly value="양식">
                        	</c:if>
                        	<c:if test="${store.code_id eq 'A1004' }">
							<input name="st_code_id" id="st_code_id" class="form-control col-md-7 col-xs-12" data-parsley-id="5" readonly value="중식">
                        	</c:if>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">사업자 번호</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
							<input name="st_biznum" id="st_biznum" class="form-control col-md-7 col-xs-12" data-parsley-id="5" readonly value="${store.st_biznum }">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">매장명</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
							<input name="st_name" id="st_name" class="form-control col-md-7 col-xs-12" data-parsley-id="5" readonly value="${store.st_name }">
                        </div>
                      </div>
                      
                      <!-- 지도 출력 -->
                      <div id="map" style="width:500px;height:400px;margin:0 auto;"></div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">주소</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="st_address1" name="st_address1" readonly class="form-control col-md-7 col-xs-12" data-parsley-id="9" value="${store.st_address1 }">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"></label>
                      	<div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="st_address2" name="st_address2" readonly class="form-control col-md-7 col-xs-12" data-parsley-id="9" value="${store.st_address2 }">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"></label>
                      	<div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="st_address3" name="st_address3" class="form-control col-md-7 col-xs-12" data-parsley-id="9" readonly value="${store.st_address3 }">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">연락처</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="st_phone" name="st_phone" class="form-control col-md-7 col-xs-12" data-parsley-id="9" readonly value="${store.st_phone }">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">운영시간</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type=time name="startTime1" readonly value="${store.startTime1 }"> &nbsp;&nbsp; ~ &nbsp;&nbsp; <input type=time name="endTime1" readonly value="${store.endTime1 }">
                        </div>
                      </div>
                      
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">매장 소개</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="textarea" name="st_content" class="form-control col-md-7 col-xs-12" readonly value="${store.st_content }">
                        </div>
                      </div>
                      
                      <div class="form-group" >
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">매장 사진</label>
                        <br>
	                        <div class="col-md-6 col-sm-6 col-xs-12">
	                        </div>
	                       <div class='storeResult' >
	                       		<br>
		                       	 <ul>
		                       	 
		                       	 </ul>
	                       </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        	<div style='width:80px;float: right;'>
	                   			<button data-oper='list' class="btn btn-success">목록</button>
					   		</div>
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
<!-- 지도 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb1db61c1c0f45550feb0d71414c4b93&libraries=services"></script>

<script type="text/javascript">

$(document).ready(function(){
	var formObj = $("#frm");
	
	$("button[data-oper='list'").on("click", function(e){
		formObj.find("#st_num").remove();
		formObj.attr("action","/manager/stlist").attr("method","get");
		formObj.empty();
		formObj.submit();
	});
	
	(function(){
		var code = '<c:out value="${store.st_num}"/>';
		$.getJSON("/manager/getAttachList", {st_num:code}, function(arr){
			console.log(arr);
				
				var str="";
				
				$(arr).each(function(i, attach){					
					var fileCallPath =  encodeURIComponent("/"+attach.st_uuid +"_"+attach.st_filename);
					
					console.log(fileCallPath);
					str += "<li data-path='"+attach.st_uploadpath+"'";
					str += "data-uuid='"+attach.st_uuid+"' data-filename='"+attach.st_filename+"' data-type='"+attach.fileType+"'";
					str += "><div>";
					str += "<img src='/display?fileName="+fileCallPath+"'>";
					str += "</div>";
					str + "</li>";
				});
				
				$(".storeResult ul").html(str);
			});
		})();//end function
	
	//지도 그리기
	fnShowMap($("#st_address2").val());
});

function fnShowMap(strAddr){
	//지도를 표시할 div 
	var mapContainer = document.getElementById('map'), 
	mapOption = {
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	//지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	//주소로 좌표를 검색합니다
	geocoder.addressSearch(strAddr, function(result, status) {
	
	// 정상적으로 검색이 완료됐으면 
	 if (status === kakao.maps.services.Status.OK) {
	
	    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	    // 결과값으로 받은 위치를 마커로 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: coords
	    });
	
	    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	    map.setCenter(coords);
	} 
	});        
}

</script>

  

