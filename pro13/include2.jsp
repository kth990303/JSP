<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include2.jsp</title>
</head>
<body>
	아린이가 좋아요~
	<jsp:include page="suzi_image.jsp" flush="true">
		<jsp:param value="Arin" name="name"/>
		<jsp:param value="Arin.jpg" name="imgName"/>
	</jsp:include>
</body>
</html>