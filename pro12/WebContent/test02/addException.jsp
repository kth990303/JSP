<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생</title>
</head>
<body>
Error 내용: <%=exception.getMessage() %><br>
숫자만 입력해주세요. 숫자는 10만 이하 범위로만 입력해주세요.<br>
<a href="add.html">다시하기</a>
</body>
</html>