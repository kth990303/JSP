<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=(String)session.getAttribute("name");
	session.setAttribute("address", "건국대학교");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 내장 객체 테스트</title>
</head>
<body>
	안녕하세요 <%=name %>님!<br>
	당신의 학교를 알고 싶다면 아래 주소를 클릭해주세요~<br><br>
	
	<a href=session2.jsp>학교 확인하기</a>
</body>
</html>