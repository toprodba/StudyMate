<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>my Profile</title>
</head>
<body>
	<div>
		<form:form method="post" modelAttribute="user">
			<div>ID</div>
			<form:hidden path="idx" />
			<form:input path="loginId" readonly="true" />
			<form:input path="name" readonly="true" />
			<form:password path="password" showPassword="true" />
			<form:input path="email" />
			<form:input path="phoneNumber" />
			<form:hidden path="userType" />
			
			<input type="submit" value="개인정보변경" >
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