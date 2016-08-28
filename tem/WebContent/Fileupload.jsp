<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,java.io.*,cn.com.Dao.*" %>
    <%@ page import="java.util.*,java.io.*,cn.com.Entity.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>upload</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<script>
		function warn(){
			alert("上传成功!");
		}
		</script>
	</head>
	<body >
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
					<form action="Upload" method="post" enctype="multipart/form-data">
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
						文件上传！
					</h1>
					<input type="hidden" id="fileNum" name="fileNum" value="1"/>
					<table>
					<tr><td>文件名：</td><td><input type="file" name="file"></td></tr>
					<tr><td><input type="submit" value="确认上传" onclick="warn();"></td>
					<td><input type="button" value="返回" onclick="location='userlist.jsp'"></td></tr>
					</table>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				sunchenhu@126.com
				</div>
			</div>
		</div>
</form>
</center>
	</body>
</html>
