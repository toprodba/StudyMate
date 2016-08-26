<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header1.jsp" %>
  
  
   <!-- Forms ================================================== -->
      
   <div class="container">
         
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="forms">가입 신청서</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                  <legend>신청서 작성</legend>
                  
                   <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">이름</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputName" placeholder="Email">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">email</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputEmail" placeholder="Email">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">사유</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" rows="3" id="inputReason"></textarea>
                      <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                    </div>
                  </div>
              
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" onclick="page_back();" class="btn btn-default">돌아가기</button>
                      <button type="submit" class="btn btn-primary">신청하기</button>
                    </div>
                  </div>
                </fieldset>
              </form>
            </div>
          </div>
          </div>
          </div>
          
      </div>
      
<%@ include file="../include/footer1.jsp" %>