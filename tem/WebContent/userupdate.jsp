<%@ page language="java" %>
<%@ page import="java.util.*,java.io.*,cn.com.Entity.*,cn.com.Dao.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
		<title>userupdate</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

</head>
<%
	UsersEntity user = (UsersEntity) request.getAttribute("USER_ENTITY");
%>

<body>
<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p>
								<a href="introduce.html"><font size="2">公司简介</font>
								<br />
							</p>
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
						修改用户信息：
					</h1>
					<form action="Update" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									用户名:
								</td>
								<td valign="middle" align="left">
									<input type="text" name="username" readonly="true" value="<%=user.getUsername()%>"/>
								</td>
							</tr>
							
							<tr>
								<td valign="middle" align="right">
									密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" name="pass" value="<%=user.getPassword()%>"/>
								</td>
							</tr>
							
							<tr>
								<td valign="middle" align="right">
									性别:
								</td>
								<td valign="middle" align="left">
									<input type="radio" name="sex" value="0"/>女&nbsp;&nbsp;
       <input type="radio" name="sex" value="1"/>男&nbsp;&nbsp;
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									地址:
								</td>
								<td valign="middle" align="left">
									<input type="text" name="address" value="<%=user.getAddress()%>"/>
								</td><td color="80FF80"><font color="FF0000">&nbsp;</font></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									手机号:
								</td>
								<td valign="middle" align="left">
									<input type="text" name="tel" value="<%=user.getTel()%>"/>
								</td><td color="80FF80"><font color="FF0000">&nbsp;</font></td>
							</tr>
							<tr>
								<td colspan="2"><input type="hidden" name="action" /> 
   <input type="button" class="button" value="修改" onclick="doSubmit()" />
   <input type="button" class="button" value="返回" onclick="location='userlist.jsp'"/>
   
   </td>
							</tr>
							
						</table>
						
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				sunchenhu@126.com
				</div>
			</div>
		</div>
	</body>

<script>
    function doSubmit() {
    	document.forms[0].action.value="UPD";
    	//alert(document.forms[0].action.value);
    	document.forms[0].submit();
    }
	function initForm() {
		var role = "<%=user.getRole()%>";
		var roleRadio = document.getElementsByName("role");
		for (var i = 0; i < roleRadio.length; i++) {
			if (role == roleRadio[i].value) {
				roleRadio[i].checked = true;
				break;
			} 
		}
		
		var sex = "<%=user.getSex()%>";
		var sexRadio = document.getElementsByName("sex");
		for (var i = 0; i < sexRadio.length; i++) {
			if (sex == sexRadio[i].value) {
				sexRadio[i].checked = true;
				break;
			} 
		}
		
	
		
		
	}
	initForm();
</script>
</html>