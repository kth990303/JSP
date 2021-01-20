<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String age=request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out 객체 테스트</title>
</head>
<body>
<%
	if(name!="" && age!=""){
%>
	<h1><%=name %>(<%=age %>)</h1>
	<h1><% out.println(name+"("+age+")"); %></h1> <!-- out 객체 이용 -->
<%
	} else {
%>
	<h1>정보를 입력하세요</h1>
<%
	}
%>
</body>
</html>