<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=(String)session.getAttribute("name");
	String address=(String)session.getAttribute("address");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학교 확인_session 바인딩 테스트</title>
</head>
<body>
	<%=name %>님의 학교는 <%=address %>입니다.<br>
	즐거운 새내기생활 되세요~<br><br>
	
	<a href=session1.jsp>홈으로 돌아가기</a>
</body>
</html>