<%@ page language="java" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
	<head>
	<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
		<title>regist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<style>
span{
color:red; font-size:12px;
}</style>
		<script>
		function reloadcode() {//点击图片换验证图片
			var verify = document.getElementById('code');
			verify.setAttribute('src', 'img?it=' + Math.random());
		}
		$(function() {//Ajax异步验证码
			$("#incode").blur(function() {
				var incode=$("#incode").val();//获取文本框输入的值
			$.post("code",{code:incode},function(data){//异步发送至servlet url是img
					$("#codehidden").val(data); //返回值0，1，-1放入隐藏域
				});
			})
		})

		
		
		
		//利用ajax对用户名是否已存在进行判断
		var http_request;
		
   function sendReq() {
	   var b=false;
	   var name=document.getElementById("username").value;
		if(name==""||name==null){
	   document.getElementById("username1").innerHTML="*用户名不能为空";
	   }else if(!/[a-zA-Z_]{1}\w{5,9}$/.test(name)){
	   document.getElementById("username1").innerHTML="*6到10位字母(开头)或数字或下划线";
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
	http_request.open("GET", "<%=request.getContextPath()%>/Check?username=" + document.forms[0].username.value, true);
	http_request.send(null);
   }  
   function processReq() {
	   
   	if (http_request.readyState == 4) {
      	  if (http_request.status == 200) {
          	    var doc = http_request.responseXML;
          	 // document.getElementById("username").innerHTML ="已存在";
          	// if (document.getElementById("username").value==doc.getElementsByTagName("uname")[0].firstChild.nodeValue){
         	         	    document.getElementById("username1").innerHTML =doc.getElementsByTagName("uname")[0].firstChild.nodeValue;
          	
          	         	    //}else {document.getElementById("username").innerHTML =""}
        	  } else {
            	   alert("error status:" + http_request.status);
              }
          }
   }
   }
   //对各输入框进行验证
		//function checkusername(){
		//var name=document.getElementById("username").value;
		//if(name==""||name==null){
	   //document.getElementById("username1").innerHTML="*用户名不能为空";
	   //}else if(!/[a-zA-Z_]{1}\w{5,9}$/.test(name)){
	   //document.getElementById("username1").innerHTML="*6到10位字母(开头)或数字或下划线";
	   //}else{document.getElementById("username1").innerHTML="";}
	//}
		function checkpassword(){
			var password=document.getElementById("pwd").value;
		     if(password==""||password==null){
		   document.getElementById("password1").innerHTML="*密码不能为空";
		   }
		   else if(!/^\w{6,10}$/.test(password)){
		   document.getElementById("password1").innerHTML="*密码应为6到10位的字母或数字或下划线";
		   }else{   document.getElementById("password1").innerHTML="";}
		}
		function checkpasswordre(){
			var passwordre=document.getElementById("pwd1").value;
		var a=document.getElementById("pwd").value;
		if(a!=document.getElementById("pwd1").value){
		   document.getElementById("passwordre1").innerHTML="*两次密码不一致";
		}
		else if(passwordre==""||passwordre==null){
		document.getElementById("passwordre1").innerHTML="*密码不能为空";
		}
		else  document.getElementById("passwordre1").innerHTML="";
		}
		function checktel(){
			var tel=document.getElementById("tel").value;
		   if(tel==""||tel==null){
		   document.getElementById("tel1").innerHTML="*手机号不能为空";
		   }else if(!/^\d{11}$/.test(tel)){
		   document.getElementById("tel1").innerHTML="*手机号应为11位数字";
		   }else{  document.getElementById("tel1").innerHTML="";}
		}
		//function check(){
			//var username=document.getElementById("username").value;
			//var pwd=document.getElementById("pwd").value;
			//var pwd1=document.getElementById("pwd1").value;
			//var tel=document.getElementById("tel").value;
			//if(username==""||pwd==""||pwd1==""||tel==""){
				//alert("请输入完整的注册信息");
				//return false;
			//}else {
				//return true;}
		//}
		function docheck(){
			var name=document.getElementById("username").value;
			var password=document.getElementById("pwd").value;
			var passwordre=document.getElementById("pwd1").value;
			var tel=document.getElementById("tel").value;
			var code=document.getElementById("codehidden").value;
			
			if(-1==code||""==code){
				
				document.getElementById("incode1").innerHTML="*请输入验证码";
				return false;
			}else if(code==0){
				document.getElementById("incode1").innerHTML="*对不起，验证码不正确";		
				return false;
			}else{
		if(name==""||name==null){
		   return false;
		   }else if(!/[a-zA-Z_]{1}\w{5,9}$/.test(name)){
		   return false;
		   }else if(document.getElementById("username1").innerHTML=="*已存在"){
		   return false
		   }else if(password==""||password==null){
		   return false;
		   }else if(!/^\w{6,10}$/.test(password)){
		   return false;
		   }else if(password!=passwordre){
		   return false;
		   }else if(passwordre==""||passwordre==null){
		   return false;
		   }else if(tel==""||tel==null){
		   return false;
		   }else if(!/^\d{11}$/.test(tel)){
		   return false;
		   }else{  return true;}
			}
		}
		
		
		</script>  		  
	</head>
	<body>
		<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							
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
						注册
					</h1>
					<form action="Regist" method="post" onSubmit="return docheck()">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									用户名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="username"  id="username" onblur="sendReq()" />
								</td><td ><span id="username1"></span></td>
							</tr>
							
							<tr>
								<td valign="middle" align="right">
									密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="pwd" id="pwd" onblur="checkpassword();"/>

								</td><td ><span id="password1"></span></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									确认密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="pwd" id="pwd1" onblur="checkpasswordre();"/>
								</td><td><span id="passwordre1"></span></td>
							</tr>

							
							<tr>
								<td valign="middle" align="right">
									性别:
								</td>
								<td valign="middle" align="left">
									
									<input type="radio" class="inputgri" name="sex" value="0"  checked="checked"/>
									女
									<input type="radio" class="inputgri" name="sex" value="1"/>
									男
								</td>
							</tr>
                            <tr>
								<td valign="middle" align="right">
									地址:
								</td>
								<td valign="middle" align="left">
								
                                <select id="s_province" name="s_province"></select>&nbsp;&nbsp;
                                <select id="s_city" name="s_city" ></select>&nbsp;&nbsp;
                                <select id="s_county" name="s_county"></select>
                                <script class="resources library" src="js/area.js" type="text/javascript"></script>
	                            <script type="text/javascript">_init_area();</script>
	                            <script type="text/javascript">
                                var Gid  = document.getElementById ;
                                var showArea = function(){
	                            Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
	                            Gid('s_city').value + " - 县/区" + 
	                            Gid('s_county').value + "</h3>"
							    }
                                Gid('s_county').setAttribute('onchange','showArea()');
                                </script>
								</td><td><input type="text" class="inputgri" name="address1" /></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									手机号:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="tel" id="tel" onblur="checktel();"/>
								</td><td><span id="tel1"></span></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									验证码:
									
									<img id="code" src="img" onclick="reloadcode()"/>
									<input type="hidden" value="" id="codehidden">
								</td>
								<td valign="middle" align="left">
									<input type="text" id="incode" class="inputgri" name="number" />
								</td><td><span id="incode1"></span></td>
							</tr>
						</table>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" class="button" value="提交 " />
							<input type="reset" class="button" value="取消" />
							<input type="button" class="button" value="返回" onclick="location='userlist.jsp'"/>
						</p>
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
</html>
