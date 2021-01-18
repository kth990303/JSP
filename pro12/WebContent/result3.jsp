<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String user_id=request.getParameter("user_id");
	String user_pw=request.getParameter("user_pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창 결과3</title>
</head>
<body>
<%
	if(user_id.length()==0 || user_id==null || user_pw.length()==0 || user_pw==null){
%>
	아이디나 비밀번호를 입력하지 않으셨습니다. 다시 시도해주세요.<br>
	<a href="/pro12/login.html">HOME</a>
<%
	}else {
		if(user_id.equals("admin")) {
%>
	<h1>관리자 로그인 성공</h1>
	<form>
		<input type="button" value="회원정보 수정">
		<input type="button" value="회원정보 삭제">
	</form>
<%
		}
		else{
%>
	<h1>어서오세요 <%=user_id %>님!</h1>
<%
		}
	}
%>
</body>
</html>