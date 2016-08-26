<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header1.jsp" %>
  
  
   <!-- Forms ================================================== -->
      
   <div class="container">
         
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="forms">스터디 만들기</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                  <legend>스터디 만들기</legend>
                  
                   <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">스터디명</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputStudyName" placeholder="study name">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">소개</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputStudyIntro" placeholder="study intro">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">기간</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputStudyTerm" placeholder="study term">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">정원</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputStudyCount" placeholder="member count">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">목표</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" rows="3" id="inputStudyGoal"></textarea>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">내용</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" rows="3" id="inputStudyContents" ></textarea>
                      <span class="help-block">스터디 활동내역이나 기타 사항을 입력해주세요.</span>
                    </div>
                  </div>
              
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" class="btn btn-default">Cancel</button>
                      <button type="submit" class="btn btn-primary">Create</button>
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