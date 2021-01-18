<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 창</title>
</head>
<body>
	<h1>결과 출력</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");
	%>
	<h1>아이디  : <%= user_id!=""?user_id:"아이디 미입력" %></h1>
	<h1>비밀번호 : <%= user_pw!=""?"비밀번호 정답":"비밀번호 미입력" %></h1>
</body>
</html>