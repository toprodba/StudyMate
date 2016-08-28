<%@ include file="../include/header1.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- Forms
   ================================================== -->

	<div class="container">

		<div class="bs-docs-section" >
			<div class="row">
				<div class="col-lg-12">
					<div class="page-header" >
						<h1 id="forms" style="text-align: center;">로그인</h1>
					</div>
				</div>
			</div>
			
			<div>

			<div class="row" >
				<div class="col-lg-4 col-lg-offset-1">
					<form class="bs-component" method="post" action="/StudyMate/member/login_processing.do">
						<div class="form-group">
							<label class="control-label" for="inputDefault">ID</label> 
							<input type="text" class="form-control" name="loginId" placeholder="Input Id">
						</div>
						<div class="form-group">
							<label for="inputPassword" class="control-label">password</label>
							<input type="password" class="form-control" name="password" placeholder="Input Password">
						</div>
						<div class="form-group">
							<div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">login</button>
							</div>
						</div>
					</form>
					<div>
						<br /> 
						<a href="member/join.do">회원가입</a> &nbsp; &nbsp; 
						<a href="/StudyMate/member/user/findId.do">ID찾기/</a> 
						<a href="findPw.do">password찾기</a>
					</div>
				</div>
			</div>
			
			</div>
		
			
		</div>
	</div>
	
	<c:if test="${ not empty success }">
        ${ success }
    </c:if>
</body>
</html>

