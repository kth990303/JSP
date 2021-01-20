<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("name", "김태현");
	request.setAttribute("address", "건국대학교");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 내장 객체 테스트</title>
</head>
<body>
<%
	RequestDispatcher dispatch=request.getRequestDispatcher("request2.jsp");
	dispatch.forward(request, response);
%>
</body>
</html>