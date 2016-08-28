<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.*,java.io.*,cn.com.Dao.*" %>
    <%@ page import="java.util.*,java.io.*,cn.com.Entity.*" %>
    <%@page import="java.net.URLDecoder;" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>download</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body >
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
					<form action="Download" method="post" enctype="multipart/form-data">
					</div>
					<div id="topheader">
						<h1 id="title">
							<a href="#">邮件分派系统</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						文件下载！
					</h1>
				
					<table class="table">
						<tr class="table_header">
							<td>
								文件名
							</td>
							<td>
								操作
							</td>							
						</tr>
			
					<c:forEach items="${list}" var="list">
					<tr>
		<td>
			${list.fileName}
		</td>		
        <td>
		<a href='Download?filename1=${list.filename1}'>下载</a>
		</td>
	</tr>
					</c:forEach>
		
	</table>
	<br/>
				

		<input type="button" class="button" value="返回" onclick="location='main.jsp'">


				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				sunchenhu@126.com
				</div>
			</div>
		</div>
</form>

	</body>
</html>
    
    
