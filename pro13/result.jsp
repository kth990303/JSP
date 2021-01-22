<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
%>
<%!
	String msg="정보를 제대로 입력하지 않으셨습니다. 다시 시도해주세요.";
	String flag="제대로 입력해!";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
<%
	if(id==""){
%>
<jsp:forward page="login.jsp">
	<jsp:param value="<%=flag %>" name="flag"/>
</jsp:forward>
<%-- <jsp:forward page="relogin.jsp">
	<jsp:param value="<%=msg %>" name="msg"/>
</jsp:forward> --%>
<%
	} else{
%>
<h1><%=id %>계정으로 로그인했습니다.</h1>
<%
	}
%>
</body>
</html>