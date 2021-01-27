<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험 점수 입력 페이지</title>
</head>
<body>
	<h1>시험 점수를 입력해주세요</h1>
	<form action="scoreResult1.jsp" method="get">
	시험점수: <input type="text" name="score">
	<input type="submit" value="제출">
	</form>
</body>
</html>