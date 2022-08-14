//입력 이메일 형식 유효성 검사
 function mailFormCheck(email){
    var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	return form.test(email);
};

//이메일 인증번호 전송 버튼
$('#emailck').click(function() {
	
	var email = $('#email').val(); 		 // 이메일 주소값
	console.log('이메일 : ' + email); 	 // 이메일 오는지 확인
	var checkInput = $('#emailNoCk'); 	 // 인증번호 입력하는곳 
	var boxWrap = $('#emailNoBox');		 // 인증번호 입력란 박스
	var warnMsg = $('#mail-check-warn'); // 이메일 입력 경고글
	
	//이메일 형식 유효성 검사
	if(mailFormCheck(email)){
        warnMsg.html("이메일이 전송 되었습니다.");
        warnMsg.css("display", "inline-block");
    } else {
        warnMsg.html("올바르지 못한 이메일 형식입니다.");
        warnMsg.css("display", "inline-block");
        return false;
    }
	
	$.ajax({
		type : 'get',
		url : "/common/mailCheck?email="+email, // GET방식이라 Url 뒤에 email을 묻힐수있다.
		success : function (data) {
		/*console.log("인증번호 : " +  data);*/
		checkInput.attr('disabled',false);
		boxWrap.attr("id", "emailNoBox");
		code = data;
		console.log('ajax - 인증번호 메일 전송 완료')
		}			
	}); // end ajax
}); // end send eamil
	
//인증번호 비교
//blur -> focus가 벗어나는 경우 발생
$('#emailNoCk').blur(function () {
		const inputCode = $(this).val();
		const $resultMsg = $('#mail-check-warn');
		
		if(inputCode === code){
			$resultMsg.html('인증번호 일치');
			$resultMsg.css('color','green');
			$('#emailck').attr('disabled',true);
			$('#email').attr('readonly',true);
			$('#email').attr('onFocus', 'this.initialSelect = this.selectedIndex');
	        $('#email').attr('onChange', 'this.selectedIndex = this.initialSelect');
		}else{
			$resultMsg.html('인증번호 불일치');
			$resultMsg.css('color','red');
		}
	});