<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header1.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
					<form:form class="form-horizontal" method="post" modelAttribute="studyGroup">
						<fieldset>
							<legend>스터디 만들기</legend>

							<!-- 아이디값을 받아서 파라미터값으로 넘겨줌(studycontroller에 study createpost로 넘겨줌) -->
							<div class="form-group">
								<div class="col-lg-10">
									<form:input type="hidden" path="leaderIdx" value="${leader.idx}" />
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail" class="col-lg-2 control-label">스터디명</label>
								<div class="col-lg-10">
									<form:input type="text" class="form-control" path="studyGroupName"
										placeholder="study name" />
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail" class="col-lg-2 control-label">소개</label>
								<div class="col-lg-10">
									<form:input type="text" class="form-control" path="studyGroupIntro"
										placeholder="study intro" />
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail" class="col-lg-2 control-label">기간</label>
								<div class="col-lg-10">
									<form:input type="text" class="form-control"
										 path="studyGroupTerm"
										placeholder="study term" />
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail" class="col-lg-2 control-label">정원</label>
								<div class="col-lg-10">
									<form:input type="text" class="form-control" path="maxCounter"
										 placeholder="max count" />
								</div>
							</div>

							<div class="form-group">
								<label for="textArea" class="col-lg-2 control-label">목표</label>
								<div class="col-lg-10">
									<form:input type="text" class="form-control" rows="3" path="studyGroupGoal" />
								</div>
							</div>

							<div class="form-group">
								<label for="textArea" class="col-lg-2 control-label">내용</label>
								<div class="col-lg-10">
									<form:input class="form-control" rows="3" path="studyGroupContents" />
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
					</form:form>
				</div>
			</div>
		</div>
	</div>

</div>
<c:if test="${ not empty error }">
	<script type='text/javascript'>alert('${ error }');</script>
</c:if>

<%@ include file="../include/footer1.jsp"%>