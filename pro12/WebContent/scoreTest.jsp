<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	double js_score=Double.parseDouble(request.getParameter("js_score"));
	double java_score=Double.parseDouble(request.getParameter("java_score"));
	char grade;
	double real_score=(js_score*3+java_score*2)/5;
	if(real_score>=93)
		grade='A';
	else if(real_score>=86)
		grade='B';
	else if(real_score>=75)
		grade='C';
	else if(real_score>=61)
		grade='D';
	else
		grade='F';
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학점 변환창</title>
</head>
<body>
	<%
		if(js_score<0 || java_score<0){
	%>
		아무리 슬퍼도... 0점 미만은 나올 수 없는 시험이예요. 제대로 입력해주세요.<br>
		<a href="/pro12/scoreTest.html">다시 입력하러 가기!</a>
	<%
		} else if(js_score>100 || java_score>100){
	%>
		허언 좀 그만하세요. 100점 만점인데 무슨 소리람...<br>
		<a href="/pro12/scoreTest.html">다시 입력하러 가기!</a>
	<% 
		} else {
	%>
		<h1>당신의 예상 학점은 <%=grade %>입니다.</h1>
		<h2>자바스크립트 점수: <%=(int)js_score %></h2>
		<h2>JSP/Spring 점수: <%=(int)java_score %></h2>
		<hr>
		당신의 가중치 반영점수: <%=(int)real_score %><br>
		시험 반영비율: JS 60% / JAVA 40% 예정<br>
		커트라인은 최근 5개년동안의 교수님 커트라인을 바탕으로 추정하였습니다.<br><br>
		<%
			if(grade>='C') {
		%>
		<p style="color: red" >**재수강이 가능한 점수입니다.**</p>
		재수강 관련 정보<br>
		<a href="http://www.konkuk.ac.kr/jsp/Haksa/haksa_02_02.jsp" target="blank">재수강 관련 정보 확인</a>
		<%
				}
			}
		%>
</body>
</html>