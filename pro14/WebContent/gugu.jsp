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
<title>구구단</title>
</head>
<body>
	<c:set var="dan" value="${param.dan }"></c:set>
	<table border="1" width="800" align="center">
		<tr align="center" bgcolor="lightgreen">
			<td colspan="2">
				<c:out value="${dan}"></c:out>단 출력
			</td>
		</tr>
		<c:forEach var="i" begin="1" end="9" step="1">
			<tr align="center" bgcolor="lightgreen">
				<td width="400">
					<c:out value="${dan }"></c:out> x
					<c:out value="${i }"></c:out>
				</td>
				<td width="400">
					<c:out value="${dan*i }"/>				
				</td>
		</c:forEach>
	</table>
</body>
</html>