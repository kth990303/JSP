<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=(String)request.getAttribute("name");
	String address=(String)request.getAttribute("address");
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
	
	<a href=request1.jsp>홈으로 돌아가기</a>	<!-- 바로 포워딩해서 홈으로 돌아가도 여기로 옴. -->
</body>
</html>