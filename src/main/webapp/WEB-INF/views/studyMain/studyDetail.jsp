<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header1.jsp" %>
  

  
   <!-- 신청 Forms ================================================== -->
      
   <div class="container">
         
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="forms">application form</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                  <legend>스터디 상세보긴</legend>
                  
                   <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">조장</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="leader" value="" readonly >
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">인원</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="count" value="" readonly>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">내용</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" rows="3" id="contents" readonly></textarea>           
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">인원</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="count" value="" readonly>
                    </div>
                  </div>
              
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" onclick="page_back();" class="btn btn-default">돌아가기</button>
                      <a href="applicationForm.jsp" class="btn btn-primary">가입하기</a>
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