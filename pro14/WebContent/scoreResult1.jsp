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
<title>학점 공개</title>
</head>
<body>
	<c:set var="score" value="${param.score }"></c:set>
		<h1>시험점수: 
			<c:out value="${score }"></c:out>
		</h1><br>
		<h2>당신의 학점은 </h2>
		<c:choose>
			<c:when test="${score>93 && score<=100 }">
				<h2>A+ 입니다.</h2>
			</c:when>
			<c:when test="${score>85 && score<=93 }">
				<h2>A 입니다.</h2>
			</c:when>
			<c:when test="${score>73 && score<=85 }">
				<h2>B+ 입니다.</h2>
			</c:when>
			<c:when test="${score>59 && score<=73 }">
				<h2>B 입니다.</h2>
			</c:when>
			<c:when test="${score>33 && score<=59 }">
				<h2>C+ 입니다.</h2>
			</c:when>
			<c:otherwise>
				<h2>F 입니다.</h2>
			</c:otherwise>
		</c:choose>
</body>
</html>