<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보</title>
</head>
<body>
	<table boarder="1" align="center">
		<tr align="center">
			<td>아이디</td>
			<td>비밀번호</td>
		</tr>
		<tr>
			<td>${userID }</td>
			<td>${passwd }</td>
		</tr>
	</table>
</body>
</html>