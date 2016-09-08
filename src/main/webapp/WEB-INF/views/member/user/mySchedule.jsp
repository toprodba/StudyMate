<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/header1.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>개인 일정 관리</title>
<style type="text/css">
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>
<link href="/StudyMate/scheduler/fullcalendar.css" rel="stylesheet" />
<link href="/StudyMate/scheduler/fullcalendar.print.css"
	rel="stylesheet" media="print" />
<script type="text/javascript" src="/StudyMate/scheduler/moment.min.js"></script>
<script type="text/javascript" src="/StudyMate/scheduler/jquery.min.js"></script>
<script type="text/javascript"
	src="/StudyMate/scheduler/fullcalendar.js"></script>

<script type="text/javascript">
	$(document).ready(
			function() {
				$('#calendar').fullCalendar(
						{
							header : {
								left : 'prev,next today',
								center : 'title',
								right : 'month,agendaWeek,agendaDay'
							},
							defaultDate : '2016-06-12',
							selectable : true,//사용자가 fullcalendar에서 날짜 및 시간을 드래그 하여 선택 할 수 있도록 설정.
							selectHelper : true,//사용자가 드래그 하는 동안 자리 이벤트를 그릴지 말지 여부 지정.
							select : function(start, end) {
								var title = prompt('Event Title:');//드래그를 완료 하였을때 제목을 입력할 prompt 창을 띄워줌.
								var eventData;//
								if (title) {//사용자가 prompt창에서 추가할 이벤트의 제목을 입력한 경우 실행.
									eventData = {//이벤트의 속성들.
										title : title,
										start : moment(start).format('YYYY-MM-DD HH:mm:ss'),//날짜 형식을 맞춰줘야함.
										end : moment(end).format('YYYY-MM-DD HH:mm:ss')
									};
									insertSchedule(eventData);//사용자가 드래그하여 선택한 날짜 & 시간을 DB에 넣는 함수. 구현은 아래에.
									$('#calendar').fullCalendar('renderEvent', eventData, true); // fullcalendar에 그려줌.
									

								}
								$('#calendar').fullCalendar('unselect');//선택 취소 메소드. prompt 창에서 제목을 입력하지 않고 확인을 누르거나 취소버튼을 누르면 실행됨.
								//$('#calendar').fullCalendar('removeEvents');//여기에 삭제할 이벤트의 아이디 값을 ..

							},
							
							//일정을 클릭하면 삭제됨.
							eventClick : function(calEvent, jsEvent, view){
								var event_id = calEvent.event_id;
								
								deleteSchedule(event_id);//db에서 event_id에 해당하는 레코드 삭제
								$('#calendar').fullCalendar('removeEvents', function(calEvent){//클라이언트단에서 삭제
									return true;
								});
							},
							
							editable : true,
							eventLimit : true, // allow "more" link when too many events
							events : []
						});

				function insertSchedule(eventData){//월별&주별&일별 드래그한 일정을 DB에 넣는 함수 구현부.
					
					$.ajax({
						type : "post",//post 방식 요청
						url : "/StudyMate/member/user/myScheduleInsert.do", //Controller의 액션메소드 url
						data : eventData,//전송할 데이터는 파라미터로 받은 eventData
						dataType : "json",//서버 호출 후 받을 데이터 형식은 json
						success : function(data) {//성공 callback 함수
							//var scheduleList = data;//db에서 조회한 events 테이블의 모든 레코드가 Array[] 형태로 들어옴.
							/* scheduleList.forEach(function(v,i){//반복문 실행
								$('#calendar').fullCalendar('renderEvent', v,true);// fullcalendar에 조회 결과를 넣어줌.
							}); */
							//alert('일정이 추가되었습니다.');
							location.reload();
						}
					
					});	
				};
				
				
				function deleteSchedule(event_id){//DB에서 event_id에 해당하는 레코드 삭제하는 함수 구현부
					
					$.ajax({
						type : "get",
						url : "/StudyMate/member/user/myScheduleDelete.do",
						data : "event_id="+event_id,//get방식 요청할때 data가 query string으로 전송됨. parameter이름=값 (형태 맞춰줘야함) 
						dataType : "json",
						success : function (data){
							var scheduleList = data;//db에서 조회한 events 테이블의 모든 레코드가 Array[] 형태로 들어옴.
							scheduleList.forEach(function(v,i){//반복문 실행
								$('#calendar').fullCalendar('renderEvent', v,true);// fullcalendar에 조회 결과를 넣어줌.
							});
							//alert('일정이 삭제되었습니다.');
							location.reload();
						}
					});
					return true;
				};
				
				
				
				$.ajax({//DB에 있는 데이터를 json 형태로 받아와서 달력에 출력
					type : "get",//get 방식 요청
					url : "/StudyMate/member/user/myScheduleList.do", //이 url을 요청하면 UserScheduleController의 액션메소드가 실행됨. 해당 액션메소드는 DB에서 데이터를 조회한 후 json 형태로 리턴함.
					dataType : "json",//받을 데이터 타입을 json으로 설정
					success : function(data) {//성공 callback 함수
							var scheduleList = data;//db에서 조회한 events 테이블의 모든 레코드가 Array[] 형태로 들어옴.
							scheduleList.forEach(function(v, i) {//반복문 실행
								$('#calendar').fullCalendar('renderEvent',v, true);// fullcalendar에 조회 결과를 넣어줌.
							});
						}
					});
					
			});
</script>
<body>
	<div class="container">
		<div id="calendar"></div>
	</div>
</body>
</html>


<%@ include file="../../include/footer1.jsp"%>
