<%@ include file="../include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

  
      
   <div class="container">
   
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="forms">회원가입</h1>
            </div>
          </div>
        </div>

        <div class="row">
          
          <div class="col-lg-4 col-lg-offset-1">

			<form:form class="bs-component" method="post" modelAttribute="user" action="join.do">
               
                <div class="form-group">
                  <label class="control-label" for="inputDefault">Input ID</label>
                  <form:input path="loginId" class="form-control" id="inputDefault" placeholder="id" />
                </div>
                
                  <div class="form-group">
                    <label for="inputPassword" class="control-label">Input password</label>
                      <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password">
                  </div>
                
                <div class="form-group">
                  <label class="control-label" for="inputDefault">Input name</label>
                  <form:input path="name" class="form-control" id="inputDefault" />
                </div>
                
                <div class="form-group">
                  <label class="control-label" for="inputDefault">Input phone number</label>
                  <form:input path="phoneNumber" class="form-control" id="inputDefault" />
                </div>
                
                <div class="form-group">
                  <label class="control-label" for="inputDefault">Input email</label>
                  <form:input path="email" class="form-control" id="inputDefault" />
                </div>
                
                

				profile picture
				
				 <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" class="btn btn-default">Cancel</button>
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </div>

			</form:form>
          </div>
        </div>
      </div>
   
    </div>
  	<c:if test="${ not empty error }">
    	<script type='text/javascript'>alert('${ error }');</script>
    </c:if>
 </body>
</html>
  
  