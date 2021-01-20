<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("name", "김태현");
	application.setAttribute("age", 23);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session과 application 차이</title>
</head>
<body>
	<h1>자기소개합니다.</h1>
	<a href=appTest2.jsp>이동</a>
</body>
</html>