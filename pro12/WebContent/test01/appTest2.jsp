<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=(String)session.getAttribute("name");
	int age=(Integer)application.getAttribute("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session과 application 차이</title>
</head>
<body>
	<%=name %>(<%=age %>)
</body>
</html>