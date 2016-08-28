<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="board.jsp" %>


		<div class="content">
		
		 <!--========= form ============-->  
           <form>
               <div class="row">
                  <div class="col-md-6">
                      <div class="form-group">
                      	  <label>&nbsp;&nbsp;제목</label>
                          <input type="text" class="form-control border-input" placeholder="title" readonly>
                      </div>
                  </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                     <label>&nbsp;&nbsp;내용</label>
                       <textarea rows="5" class="form-control border-input" placeholder="Here can be your description" readonly>
                       </textarea>
				  </div>
			    </div>
			  </div>
			  
			  
			  
			  
			  <button type="reset" class="btn btn-info btn-fill" >취소</button>
			  <button type="submit" class="btn btn-info btn-fill" >확인</button>
			</form>
		</div>


<%@ include file="../../include/footer2.jsp" %>


