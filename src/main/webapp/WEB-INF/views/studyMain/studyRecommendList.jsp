<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header1.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style type="text/css">
.click:hover {
	background-color: #ffa;
	cursor: pointer;
}
</style>
<div class="container">

	<!-- 스터디 리스트 Table ================================================== -->

	<div class="bs-docs-section">

		<div class="row">
			<div class="col-lg-12">
				<div class="page-header">
					<h1 id="tables">StudyGroup Recommend List</h1>
					<br /> 
					<div><a href="/StudyMate/studyMain/studyCreate.do"
						class="btn btn-primary col-xs-offset-10">Create Study Group</a> 
					<a href="/StudyMate/studyMain/studyList.do"
						class="btn btn-primary col-xs-offset-10">My Study Group List</a></div>
				</div>
			</div>
		</div>

		<div class="bs-component">

			<table class="table table-striped table-hover ">
				<thead>
					<tr>
						<th>조장</th>
						<th>스터디 이름</th>
						<th>스터디 소개</th>
						<th>활동 기간</th>
						<th>스터디 목표</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="studyGroup" items="${list}">
						<tr data-url="">
							<td>${studyGroup.leaderName}</td>
							<td>${studyGroup.studyGroupName}</td>
							<td>${studyGroup.studyGroupIntro}</td>
							<td>${studyGroup.studyGroupTerm}</td>
							<td>${studyGroup.studyGroupGoal}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>





<%@ include file="../include/footer1.jsp"%>
