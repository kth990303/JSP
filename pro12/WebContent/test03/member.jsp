<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	import="sec02.ex01.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		h1{
			text-align: center;
		}
	</style>
	<meta charset="UTF-8">
	<title>회원 정보 출력창</title>
</head>
<body>
	<h1>회원 정보 출력</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("name");
		MemberVO memberVO=new MemberVO();
		memberVO.setId(id);
		MemberDAO dao=new MemberDAO();
		List membersList=dao.listMembers(memberVO);
		
	%>
	<table border=1 width=800 align="center">
		<tr align="center" bgcolor="#FFFF66">
		<td>아이디</td>
		<td>비밀번호</td>
		<td>티어</td>
		<td>가입일자</td></tr>
		
		<%
			for(int i=0;i<membersList.size();i++){
				MemberVO vo=(MemberVO)membersList.get(i);
				String _id=vo.getId();
				String pw=vo.getPwd();
				String tier=vo.getTier();
				Date joinDate=vo.getJoinDate();
		%>
		
			<tr align="center">
				<td><%=_id %></td>
				<td><%=pw %></td>
				<td><%=tier %></td>
				<td><%=joinDate %></td>
			</tr>
		
		<%
				}
		%>
	</table>
</body>
</html>