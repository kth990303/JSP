<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name="이순신";
	public String getName(){
		return name;
	}
%>
<%
String age=request.getParameter("age"); 
String name=request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 연습</title>
</head>
<body>
	<h1>환영합니다 <%=name==null?"이순신":name %>님</h1>
	<h2>나이: <%=age %>세</h2>
</body>
</html>