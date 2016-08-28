<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String username=(String) session.getAttribute("USERNAME");
	if (username == null) {
		response.sendRedirect("login.jsp");
	}else{
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>main</title>
</head>
<frameset rows="50,*" border="0">
    <frame name="top" src="top.jsp">
    <frameset cols="150,*">
    <frame name="menu" src="menu.jsp">
    <frame name="main" src="mailslist.jsp">
    </frameset>
</frameset>
</html><%}%>