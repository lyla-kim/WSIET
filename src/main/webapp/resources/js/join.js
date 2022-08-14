//아이디 중복 체크 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
var idck = 0;
$(document).ready(function(){
	//idck 버튼을 클릭했을 때 
	    $("#idck").click(function() {
	        
        //userid 를 param.
        var userid =  $("#user_id").val(); 
        
        if(!userid){
			$("#user_id").focus();
			alert("아이디를 입력하세요.");
			return;
		}
        
        $.ajax({
            async: true,
            type : 'POST',
            data : userid,
            url : "/common/idCheck",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
                if (data.cnt > 0) {
                    
                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                    $("#user_id").focus();
                    
                } else {
                    alert("사용가능한 아이디입니다.");
                    $("#user_pw").focus();
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                    
                }
            },
            error : function(error) {
                console.log(error);
                alert("error : " + error);
            }
        });
    });
});

/*회원가입 유효성 검사*/
function join() {
    
    var userid = $("#user_id").val();
    var userpwd = $("#pw").val();
    var inputPwdCfm = $("#pwCheck").val();
    var username = $("#user_name").val();
    var userphone= $("#user_phone").val();
    var email = $("#email").val();
    var addr1 = $("#address1").val();
    var addr3 = $("#address3").val();
    var num = userpwd.search(/[0-9]/g);
	var eng = userpwd.search(/[a-z]/ig);
	var spe = userpwd.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	var phone = userphone.search(/[ \{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/gi);
    
    //연락처
    if(userphone.length == 0 ){
        alert("연락처를 입력해주세요");
        $("#user_phone").focus();
        return false;
    }else if(userphone.search(/\s/) != -1){
		alert("연락처는 공백 없이 입력해주세요.");
		$("#user_phone").focus();
		return false;
	}else if(phone > 0){
		alert("연락처는 숫자만 입력해주세요.");
		$("#user_phone").focus();
		return false;
	}else {
		console.log("연락처통과");	 
	}
	
    /*아이디 검사*/
    if(userid.length == 0){
        alert("아이디를 입력해 주세요"); 
        $("#user_id").focus();
        return false;
    }
    
    //패스워드
    if(userpwd.length < 5 || userpwd.length > 13){
		alert("비밀번호는 6자리 ~ 12자리 이내로 입력해주세요.");
		$("#pw").focus();
		return false;
	}else if(userpwd.search(/\s/) != -1){
		alert("비밀번호는 공백 없이 입력해주세요.");
		$("#pw").focus();
		return false;
	}else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
		alert("비밀번호는 영문, 숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
		$("#pw").focus();
		return false;
	}else {
		console.log("비번통과");	 
	}
		
	//패스워드 확인
    if(userpwd != inputPwdCfm){
        alert("비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요."); 
        $("#pwCheck").focus();
        return false; 
    }
 	
 	//이름
    if(username.length == 0){
        alert("이름을 입력해주세요");
        $("#user_name").focus();
        return false;
    }else if(username.length > 10){
    	alert("이름은 10자 이내로 입력해주세요.");
    	$("#user_name").focus();
    	return false;
    }else{
    	console.log("이름통과");
    }
    
    //이메일
    if(email.length == 0){
        alert("이메일을 입력해주세요");
        $("#email").focus();
        return false;
    }
    
    //주소
    if(addr1.length == 0 ){
        alert("주소를 입력해주세요");
        $("#address1").focus();
        return false;
    }
    
    //상세주소
    if(addr3.length > 50){
    	alert("상세주소는 50자 이내로 입력해주세요.");
    	$("#address3").focus();
    	return false;
    }
    
    if(confirm("회원가입을 하시겠습니까?")){
        if(idck==0){
            alert('아이디 중복체크를 해주세요');
            return false;
        }else{
        alert("회원가입을 축하합니다");
        $("#frm").submit();
        }
    }
    
}

	