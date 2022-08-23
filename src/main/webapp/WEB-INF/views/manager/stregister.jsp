<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                    <h2><b>매장 등록</b></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                    <form class="form-horizontal form-label-left" role="form" method="post" name="frm" id="frm" action="/manager/stregister" >

					  <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">카테고리</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
							<select class="form-control" name="code_id">
                            <option value="A1001">한식</option>
                            <option value="A1002">일식</option>
                            <option value="A1003">양식</option>
                            <option value="A1004">중식</option>
                          </select>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">사업자 번호 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
							<input type="text" name="st_biznum" id="st_biznum" class="form-control col-md-7 col-xs-12" data-parsley-id="5" required>
                        	<span>공백 없이 숫자</span>
                        </div>
						<button type="button" name="biznumck" id="biznumck" >중복체크</button>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">매장명 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
							<input type="text" name="st_name" id="st_name" class="form-control col-md-7 col-xs-12" data-parsley-id="5" required>
							<div class="check_font" id="id_check"></div>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">주소 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input placeholder="우편번호" type="text" id="st_address1" name="st_address1" readonly="readonly" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                        <button type="button" onclick="execPostCode();" >주소찾기</button>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"></label>
                      	<div class="col-md-6 col-sm-6 col-xs-12">
                          <input placeholder="도로명 주소" type="text" id="st_address2" name="st_address2" readonly="readonly" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"></label>
                      	<div class="col-md-6 col-sm-6 col-xs-12">
                          <input placeholder="상세주소" type="text" id="st_address3" name="st_address3" class="form-control col-md-7 col-xs-12" data-parsley-id="9">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">연락처*</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="st_phone" name="st_phone" class="form-control col-md-7 col-xs-12" data-parsley-id="9" required>
                          <span>공백 없이 숫자</span>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">운영시간 *</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type='time' name="startTime1"required/> &nbsp;&nbsp; ~ &nbsp;&nbsp; <input type='time' name="endTime1" required/>
                        </div>
                      </div>
                      
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">매장 소개 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="textarea" name="st_content" class="form-control col-md-7 col-xs-12" required></textarea>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">매장 사진*</label>
	                        <div class="col-md-6 col-sm-6 col-xs-12">
								<input type="file" name="uploadFile" multiple>
	                        </div>
	                       <div class='uploadResult'>
	                       	 <ul>
	                      	
	                       	 </ul>
	                       </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        	<div style='width:80px;float: right;'>
	                   			<button type="submit" class="btn btn-success" form="frm" name="stupload" id="stupload">등록</button>
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
    
    <!-- 주소찾기 kakao api -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="/resources/js/st_addressApi.js"></script>
	
	
<script type="text/javascript">

//사업자번호 중복 체크
var bizck = 0;
$(document).ready(function(){
	//biznumck 버튼을 클릭했을 때 
	    $("#biznumck").click(function() {
	        
        //biznum을 param.
        var biznum =  $("#st_biznum").val(); 
        var onlynum = biznum.search(/[ \{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/gi);
        
        if(!biznum){
			$("#st_biznum").focus();
			alert("사업자번호를 입력하세요.");
			return;
		}else if(biznum.search(/\s/) != -1){
			alert("연락처는 공백 없이 입력해주세요.");
			$("#st_biznum").focus();
			return;
		}else if(onlynum > 0){
			alert("사업자번호는 숫자만 입력해주세요.");
			$("#st_biznum").focus();
			return;
		}else{
			console.log("사업자번호 통과");
		}
        
        $.ajax({
            async: true,
            type : 'POST',
            data : biznum,
            url : "/manager/bizNumCheck",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
                if (data.cnt > 0) {
                    
                    alert("사업자번호가 존재합니다. 다시 입력해주세요.");
                    $("#st_biznum").focus();
                    
                } else {
                    alert("사용가능한 사업자번호입니다.");
                    $("#st_name").focus();
                    //사업자번호가 중복하지 않으면  bizck = 1 
                    bizck = 1;
                    
                }
            },
            error : function(error) {
                console.log(error);
                alert("error : " + error);
            }
        });
    });
	
	  //등록버튼 클릭 시
	    var formObj = $("form[role='form']");
		
		$("button[type='submit']").on("click", function(e){
			e.preventDefault();
			console.log("submit clicked");
			
			var str = "";
			
			$(".uploadResult ul li").each(function(i, obj){
				var jobj = $(obj);
				
				console.dir(jobj);
				
				console.log(jobj.data("filename"));
				console.log(jobj.data("uuid"));
				console.log(jobj.data("path"));
				
				str += "<input type='hidden' name='attachList["+i+"].st_filename' value='"+jobj.data("filename")+"'>";
				str += "<input type='hidden' name='attachList["+i+"].st_uuid' value='"+jobj.data("uuid")+"'>";
				str += "<input type='hidden' name='attachList["+i+"].st_uploadpath' value='"+jobj.data("path")+"'>";
			});
			
			formObj.append(str).submit();
		});
		
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		var maxSize = 5242880; //5MB
		
		function checkExtendsion(fileName, fileSize){
			if(fileSize >= maxSize){
				alert("파일 사이즈 초과");
				return false;
			}
			
			if(regex.test(fileName)){
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			
			return true;
		}
		
		$("input[type='file']").change(function(e){
			var formData = new FormData();
			var inputFile = $("input[name='uploadFile']");
			var files = inputFile[0].files;
			
			
			for(var i=0; i<files.length; i++){
				if(!checkExtendsion(files[i].name, files[i].size)){
					return false;
				}
				
				formData.append("uploadFile", files[i]);
			}
			
			$.ajax({
				url: '/uploadAjaxAction',
				processData: false,
				contentType: false,
				data: formData,
				type:'POST',
				dataType: 'json',
				success: function(result){
					console.log(result);
					showUploadFile(result);
				}
			});
			
		});
		
		function showUploadFile(uploadResultArr){
			if(!uploadResultArr || uploadResultArr.length ==0)
			{
				return;	
			}
			
			var uploadURL = $(".uploadResult ul");
			var str = "";
			
			$(uploadResultArr).each(function(i, obj){
					var fileCallPath =  encodeURIComponent("/s_"+obj.st_uuid +"_"+obj.st_filename);
					str += "<li data-path='"+obj.st_uploadpath+"'";
					str +=" data-uuid='"+obj.st_uuid+"' data-filename='"+obj.st_filename+"' data-type='"+obj.image+"'";
					str +=" ><div>";
					str += "<span> "+ obj.st_filename+"</span>";
					str += "<button type='button' data-file=\'"+fileCallPath+"\' "
					str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
					str += "<img src='/display?fileName="+fileCallPath+"'>";
					str += "</div>";
					str +"</li>";
							
			});
			
			uploadURL.append(str);
		}
		
		$(".uploadResult").on("click", "button", function(e){
			var targetFile = $(this).data("file");
			var type = $(this).data("type");
			
			var targetLi = $(this).closest("li");
			
			$.ajax({
				url: '/deleteFile',
				data: {fileName: targetFile, type:type},
				dataType:'text',
				type:'POST',
				success: function(result){
					alert(result);
					targetLi.remove();
				}
			});
		});
});

	


</script>

  

