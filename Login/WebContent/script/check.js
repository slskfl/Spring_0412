function validation(){
	if(document.frm.userID.value==""){
		alert("아이디를 입력하세요.");
		document.frm.userID.focus();
		return false;
	} else if(document.frm.userID.value.length>10){
		alert("아이디를 10글자 이하로 입력하세요.");
		document.frm.userID.focus();
		return false;
	}
	if(document.frm.passwd.value==""){
		alert("비밀번호를  입력하세요.");
		document.frm.passwd.focus();
		return false;
	}else if(document.frm.passwd.value.length>10){
		alert("비밀번호를 10글자 이하로 입력하세요.");
		document.frm.passwd.focus();
		return false;
	}
	
	maskingLogin(); //비밀번호 마스킹 처리 메서드
	
	return true;
}

function maskingLogin(){
	var maskingPw=document.frm.passwd.value; //마스킹할 원본 문자
	var pwLength=maskingPw.length; //마스킹할 원본 문자 길이
	var result; //마스킹 처리된 문자
	
	var front=maskingPw.substr(0,2);//앞 두글자
	var back=maskingPw.substr((pwLength-2),2); //뒤 두글자
	for(var i=0; i<pwLength-4; i++){
		var str='*';
		front=front.concat(str);
	}
	
	result=front.concat(back);
	document.frm.passwd.value=result;
}

