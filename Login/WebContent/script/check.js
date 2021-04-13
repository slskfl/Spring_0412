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
	return true;
}

//이거 저장됩니까?
