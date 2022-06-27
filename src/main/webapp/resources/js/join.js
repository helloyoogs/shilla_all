/**
 * 회원가입
 */
$(document).ready(function(){
	$("#join_btn").on("click", function(join_success){
	
	 	// 아이디 체크 시작
	 	var id = $("#id").val();
 		var numid = id.search(/[0-9]/g);
 		var engid = id.search(/[a-z]/ig);

 		if(id.length < 6 || id.length > 15){
  		alert("아이디는 6자리 ~ 15자리 이내로 입력해주세요.");
  		return false;
 		}else if(id.search(/\s/) != -1){
  		alert("아이디는 공백 없이 입력해주세요.");
 		 return false;
 		}else if(numid < 0 || engid < 0 ){
  		alert("아이디는 영문,숫자를 혼합하여 입력해주세요.");
  		return false;
 		}else {
		console.log("통과"); 
 		}//아이디 체크 끝
 		
	// 비밀번호 체크 시작
	 	var pw = $("#pw").val();
 		var numpw = pw.search(/[0-9]/g);
 		var engpw = pw.search(/[a-z]/ig);
 		var ENGpw = pw.search(/[A-Z]/ig);
 		var spepw = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

 		if(pw.length < 8 || pw.length > 20){
  		alert("비밀번호는 8자리 ~ 20자리 이내로 입력해주세요.");
  		return false;
 		}else if(pw.search(/\s/) != -1){
  		alert("비밀번호는 공백 없이 입력해주세요.");
 		 return false;
 		}else if(numpw < 0 || engpw < 0 || spepw < 0 || ENGpw < 0 ){
  		alert("비밀번호는 영문,숫자,특수문자,대문자를 혼합하여 입력해주세요.");
  		return false;
 		}else if(numpw < 0 || engpw < 0 || spepw < 0 || ENGpw < 0 ){
  		alert("비밀번호는 영문,숫자,특수문자,대문자를 혼합하여 입력해주세요.");
  		return false;
 		}
 		
 		else {
		console.log("통과"); 
 		}//비밀번호 체크 끝
 		
		if($("#name").val()==""){
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return false;
		}
		if($("#age").val()==""){
			alert("나이를 입력해주세요.");
			$("#age").focus();
			return false;
		}
		
		//이메일 형식 체크
		var regemail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		var email = $("#email").val();
		if(email.search(regemail)){
			alert("이메일을 정확히 입력해주세요.");
			$("#phone").focus();
			return false;
		}
		
		if($("#phone").val()==""){
			alert("전화번호를 입력해주세요.");
			$("#phone").focus();
			return false;
		}
		if($("#address").val()==""){
			alert("주소를 입력해주세요.");
			$("#address").focus();
			return false;
		}



}); //회원가입 대소문자등 유형 검사
$("#join_btn").on("click", function(){
if(join_success!=null)
 location.replace('/shilla/member/login');
}); //유형 검사 끝나면 로그인 페이지로 이동
}); // 자바스크립트 종료


