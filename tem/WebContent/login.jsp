<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>用户登录</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css"
			href="css/style.css" />
			
			<style>
			
span{
color:red; font-size:12px;
}</style>
			<script>
			var http_request;
			
			   function sendReq() {
				   var b=false;
				   var name=document.getElementById("username").value;
					if(name==""||name==null){
				   document.getElementById("username1").innerHTML="*用户名不能为空";
				   }else{document.getElementById("username1").innerHTML="";
					b=true;
				   }
					if(b==true){
			   	if (window.ActiveXObject) {
					try {
						http_request = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						http_request = new ActiveXObject("Microsoft.XMLHTTP");
					}
				}else{
					http_request=new XMLHttpRequest();
				}
				if (!http_request) {
					window.alert("xmlhttp not supported!");
					return false;
				}
				http_request.onreadystatechange = processReq;	
				http_request.open("GET", "<%=request.getContextPath()%>/Check1?username=" + document.forms[0].username.value, true);
				http_request.send(null);
			   }  
			   function processReq() {
				   
			   	if (http_request.readyState == 4) {
			      	  if (http_request.status == 200) {
			          	    var doc = http_request.responseXML;
			          	
			         	         	    document.getElementById("username1").innerHTML =doc.getElementsByTagName("uname")[0].firstChild.nodeValue;
			          	
			        	  } else {
			        		  //alert(http_request.status);
			            	   alert("error status:" + http_request.status);
			              }
			          }
			   }
			   }
			   
			   //密码ajax验证
 function sendReq1() {
				   var a=false;
				   var password=document.getElementById("pwd").value;
					    if(password==""||password==null){
					   document.getElementById("pwd1").innerHTML="*密码不能为空";
					   }else{   document.getElementById("pwd1").innerHTML="";					
					a=true;	}			   
					if(a==true){
			   	if (window.ActiveXObject) {
					try {
						http_request = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						http_request = new ActiveXObject("Microsoft.XMLHTTP");
					}
				}else{
					http_request=new XMLHttpRequest();
				}
				if (!http_request) {
					window.alert("xmlhttp not supported!");
					return false;
				}
				http_request.onreadystatechange = processReq;	
				http_request.open("GET", "<%=request.getContextPath()%>/Checkpassword?username="+ document.forms[0].username.value+"&pwd=" + document.forms[0].pwd.value, true);
				http_request.send(null);
			   }  
			   function processReq() {
				   
			   	if (http_request.readyState == 4) {
			      	  if (http_request.status == 200) {
			          	    var doc = http_request.responseXML;
			          	
			         	         	    document.getElementById("pwd1").innerHTML =doc.getElementsByTagName("uname")[0].firstChild.nodeValue;
			          	
			        	  } else {
			            	   alert("error status:" + http_request.status);
			              }
			          }
			   }
			   }			   
			//function checkpwd(){
				//	var password=document.getElementById("pwd").value;
				  //   if(password==""||password==null){
				   //document.getElementById("pwd1").innerHTML="*密码不能为空";
				   //}else{   document.getElementById("pwd1").innerHTML="";}
				//}
			
			
			function check1(){
				var name=document.getElementById("username").value;
				var password=document.getElementById("pwd").value;
				if(name==""||name==null){
					   return false;
					   }else if(!/[a-zA-Z_]{1}\w{5,9}$/.test(name)){
					   return false;
					   }else if(document.getElementById("username1").innerHTML=="*用户名不存在"){
					   return false
					   }else if(document.getElementById("pwd1").innerHTML=="*用户名与密码不匹配"){
					   return false
					   }else if(password==""||password==null){
					   return false;
					   }else if(!/^\w{6,10}$/.test(password)){
					   return false;
					   }else {return true;}
			}
			</script>
	</head>

	<body>
		<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p><a href="introduce.jsp"><font size="2">公司简介</font></a>
								
								<br />
							</p>
						</div>
						<div id="topheader">
							<h1 id="title">
								<a href="#">邮件分派系统</a>
							</h1>
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<table >
					<tr><td ><img src="img/1.jpg" height="250" title=
					"cumt邮件分派系统初创于1993年，公司致力于民族品牌的建设和发展，
					不断完善终端网络、中转运输网络和信息网络三网一体的立体运行体系，
					立足传统快递业务，全面进入电子商务物流领域，
					以专业的服务和严格的质量管理来推动中国物流和快递行业的发展，
					成为对国民经济和人们生活最具影响力的民营快递企业之一。"></td>
                    <td>
					<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
					<tr><td colspan="2"><h1>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请登录：
					</h1></td>
					
					</tr>
					<form action="Login" method="post" onSubmit="return check1()">
						
							<tr>
								<td valign="middle" align="right">
									用户名:
								</td>
								<td valign="middle" align="right">
									<input type="text" class="inputgri" name="username" id="username" onblur="sendReq()"/>
								</td><td ><span id="username1"></span></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="pwd" onblur="sendReq1()"  id="pwd" />
								</td><td ><span id="pwd1"></span></td>
							</tr>
                            
							
							
							<tr>
							<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="button" value="登录"  />
							<input type="reset" class="button" value=" 取消" />
							</td>
							</tr>
						</table>
						</td></tr>
					</form>
					</table>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					sunchenhu@126.com
				</div>
			</div>
		</div>
	</body>
</html>

