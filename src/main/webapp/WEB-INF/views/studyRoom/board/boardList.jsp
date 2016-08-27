<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="board.jsp" %>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">자유게시판</h4>
                                <p class="category">자유자유자유</p>
                            </div>
                            
                            <a href="boardWrite.jsp" style="float:right; margin-right:10px" class="btn btn-info btn-fill">글쓰기</a>
                            
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped">
                                    <thead>
                                        <th>No.</th>
                                    	<th>제목</th>
                                    	<th>작성자</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td>1</td>
                                        	<td><a href="boardModify.jsp">test</a></td>
                                        	<td>$36,738</td>
                                        </tr>
                                        <tr>
                                        	<td>2</td>
                                        	<td>Minerva Hooper</td>
                                        	<td>$23,789</td>
                                        </tr>
                                        <tr>
                                        	<td>3</td>
                                        	<td>Sage Rodriguez</td>
                                        	<td>$56,142</td>
                                        </tr>
                                        <tr>
                                        	<td>4</td>
                                        	<td>Philip Chaney</td>
                                        	<td>$38,735</td>
                                        </tr>
                                        <tr>
                                        	<td>5</td>
                                        	<td>Doris Greene</td>
                                        	<td>$63,542</td>
                                        </tr>
                                    </tbody>
                                </table>
       
                            </div>
                            
                            <!--======== 페이지네이션 =========-->
                            <div class="row col-xs-offset-3">
					          <div class="col-lg-4">
					            <div class="bs-component">
					              <ul class="pagination pagination-sm">
					                <li class="disabled"><a href="#">&laquo;</a></li>
					                <li class="active"><a href="#">1</a></li>
					                <li><a href="#">2</a></li>
					                <li><a href="#">3</a></li>
					                <li><a href="#">4</a></li>
					                <li><a href="#">5</a></li>
					                <li><a href="#">&raquo;</a></li>
					              </ul>
					            </div>
					          </div>
					        </div> 
                            
                        </div>
                          
                        <!--========= 검색폼 ============-->  
                         <form>
                            <div class="row">
                               <div class="col-md-4">
                                   <div class="form-group">
                                      <input type="text" class="form-control border-input" placeholder="title">
                                    </div>
                               </div>
                             <span ><button type="submit" class="btn btn-primary" style="margin-top:3px">검색</button></span>    
                            </div>
			      		</form>
			      			
                    </div>
                </div>
            </div>
        </div>



<%@ include file="../../include/footer2.jsp" %>


