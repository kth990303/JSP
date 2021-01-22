<%@page import="java.beans.beancontext.BeanContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, sec01.ex01.*"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String tier=request.getParameter("tier");
	MemberBean m=new MemberBean(id, pwd, tier);
	MemberDAO dao=new MemberDAO();
	dao.addMember(m);
	List membersList=dao.listMembers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록창</title>
</head>
<body>
<table align="center" width="100%">
	<tr align="center" bgcolor="#99ccff">
		<td width="7%">아이디</td>
		<td width="7%">비밀번호</td>
		<td width="5%">티어</td>
		<td width="5%">가입일자</td>
	</tr>
<%
	if(membersList.size()==0){
%>
	<tr>
		<td colspan="4">
			<p align="center"><b><span style="font-size:9pt;">
			등록된 회원이 없습니다.</span></b>
		</td>
	</tr>
<%
	} else{
		for(int i=0;i<membersList.size();i++){
			MemberBean bean=(MemberBean)membersList.get(i);
	
%>
		<tr align="center">
			<td><%=bean.getId() %></td>
			<td><%=bean.getPwd() %></td>
			<td><%=bean.getTier() %></td>
			<td><%=bean.getJoinDate() %></td>
		</tr>
<%
		}
	}
%>
<tr height="1" bgcolor="#99ccff">
	<td colspan="4">
	</td>
</tr>
</table>
</body>
</html>