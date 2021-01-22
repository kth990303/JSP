<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String flag=request.getParameter("flag");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
<%
	if(flag!=null){
%>
	<h2><%=flag %></h2>
<%
	}
%>
	<form method="post" action="result.jsp">
		<table>
		<tr>
			<td align="right">아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td align="right">비밀번호</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
			<input type="submit" value="로그인">
			<input type="reset" value="초기화">
		</tr>
		</table>
	</form>
</body>
</html>