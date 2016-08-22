<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
	<div>
		<form:form method="post" modelAttribute="user">
			<form:hidden path="idx" />
			
			<div>비밀번호 입력</div>
			<input type="password" name="password2">
			
			<input type="submit" value="회원 탈퇴" >
		</form:form>
		
		<a href="/StudyMate/member/user/main.do">메인으로</a>
	</div>
	<div>
		<c:if test="${ not empty error }">
				<div class="alert alert-error">${ error }</div>
			</c:if>
			<c:if test="${ not empty success }">
				<div class="alert alert-success">${ success }</div>
			</c:if>
	</div>
</body>
</html>