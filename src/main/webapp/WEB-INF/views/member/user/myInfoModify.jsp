<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../include/header.jsp" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
   <div class="container">
   
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="forms">회원 정보 수정</h1>
            </div>
          </div>
        </div>

        <div class="row">
          
          <div class="col-lg-4 col-lg-offset-1">

              <form:form method="post" modelAttribute="user" class="bs-component">
               
                 <form:hidden path="idx" />
                 
     			 <div class="form-group">
                  <label class="control-label" for="inputDefault">ID</label>
                  <form:input path="loginId" class="form-control" readonly="true" />
         		 </div>
               
                <div class="form-group">
                  <label class="control-label" for="inputDefault">Name</label>
                  <form:input path="name" class="form-control" readonly="true" />
         		 </div>
                 
 
                 <div class="form-group">
                   <label for="inputPassword" class="control-label">password</label>
                     <form:input path="password" class="form-control" />
                 </div>
              
                <div class="form-group">
                  <label class="control-label" for="inputDefault">phone number</label>
                  <form:input path="phoneNumber" class="form-control"/>
                </div>
                
                <div class="form-group">
                  <label class="control-label" for="inputDefault">email</label>
                  <form:input path="email" class="form-control"  />
                </div>
                
                <form:hidden path="userType" />

				프사
				
				
				<div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="submit" class="btn btn-primary">저장</button>
                      <a href="/StudyMate/member/user/unregister.do" class="btn btn-default">탈퇴하기</a>
                    </div>
                </div>
              </form:form>
              
              <a href="/StudyMate/member/user/myPage.do">돌아가기</a>

          </div>

        </div>
        
          
      </div>
      
      <div>
			<c:if test="${ not empty error }">
				<div class="alert alert-error">${ error }</div>
			</c:if>
			<c:if test="${ not empty success }">
				<div class="alert alert-success">${ success }</div>
			</c:if>
	      </div>
   
    </div>
  
<%@ include file="../../include/footer1.jsp" %>
  
  