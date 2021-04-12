<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<script type="text/javascript" src="${contextPath}/script/check.js" ></script>
</head>
<body>
	<form name="frm" method="post" action="${contextPath}/login/loginInfo.do">
	 <%-- action="loginInfo.do" >> action-servlet에서 불러올 예정 --%>
		<table boarder="1" align="center">
			<tr>
				<td>아이디</td>
				<td>비밀번호</td>
			</tr>
			<tr>
				<td> 
					<input type="text" name="userID" size="20"/>
				</td>
				<td>
					<input type="password" name="passwd" size="20"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인" onclick="return validation();"/> 
					<input type="reset" value="다시입력"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>