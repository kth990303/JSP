<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include1.jsp</title>
</head>
<body>
	수지가 좋아요~
	<jsp:include page="suzi_image.jsp" flush="true">
		<jsp:param value="Suzi" name="name"/>
		<jsp:param value="suzi.jpg" name="imgName"/>
	</jsp:include>
</body>
</html>