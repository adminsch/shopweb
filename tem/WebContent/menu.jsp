<%@ page language="java" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Hello, MENU!</title>
<style>
a {text-decoration:none}
span{
color:green; font-size:18px; font-family:"隶书";
}
</style>
</head>
<body bgcolor="CDCDCD">
<% String username = (String) session.getAttribute("USERNAME");%>
<font size="5" face="隶书">欢迎登陆!<br/></font><%=username%><br/><br/>
<% if("sunchenhui".equals(username)){%>
<ul>
<li><a href="<%=request.getContextPath()%>/List"  target="_top"><span>员工信息</span></a></li>

<%} %>
<li><a href="introduce.jsp" target="_top"><span>企业文化</span></a></li>
<li><a href="rules.jsp" target="_top"><span>规章制度</span></a></li>
<li><a href="Files" target="_top"><span>文件下载</span></a></li>
<li><a href="<%=request.getContextPath()%>/loginout" target="_top"><span>安全退出</span></a></li>
</ul>
</body>
</html>