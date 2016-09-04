<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<title>登录</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/login.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<!--[if IE 7]> 
<script type="text/javascript"> 
  $(document).ready(function(){
    $(".login-password").html("<input type='password' />");
  });
</script> 
<![endif]--> 
<!--[if IE 8]> 
<script type="text/javascript"> 
  $(document).ready(function(){
    $(".login-password").html("<input type='password' />");
  });
</script> 
<![endif]--> 
</head>

<body bgcolor="#e0d6df">
  <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div class="login-con">
      <form action="${path }/loginaction" id="loginform" method="post">
        <fieldset>
          <legend>用户登录</legend>
          <div class="login-cont">
            <p class="login-left"><img src="page/img/img-login.gif" width="233" height="204" alt="赢在起点，笑在路上" /></p>
            <div class="login-right">
              <p class="login-name"><input type="text" placeholder="用户名" onfocus="$(this).css('color','#000');" name="user.name" id="name" />
              <input type="hidden" id="msg" value="${fieldErrors.msg }"/></p>
              <p class="login-password"><input type="text" placeholder="密码" onfocus="$(this).attr('type','password').css('color','#000')"  id="password" name="user.password" /></p>
              <p class="login-code"><input type="text" placeholder="验证码" onfocus="$(this).attr('type','password').css('color','#000');" id="incode" style="width: 90px;" />&nbsp;&nbsp;
              <img alt="验证码" src="${path}/code.jpg" id="code" onclick="reloadcode()"></p>
             <br/>
              <!-- <p><a href="javascript:;">忘记密码？</a></p> -->
              <p class="btn-login"><img src="page/img/btn-login02.gif" width="223" height="30" id="loginbtn" alt="登录" /></p>
              <p class="new-user"><a href="${path }/regist">新用户注册</a></p>
            </div>
          </div>
  		</fieldset>
      </form>
    </div>
  </div>
 <script type="text/javascript" >
function reloadcode() {//点击图片换验证图片
	var verify = document.getElementById('code');
	verify.setAttribute('src', '${path}/code.jpg?it=' + Math.random());
}

$(function() {
	if($("#msg").val()!=''){
		alert($("#msg").val().substr(1,8));
	}
	$("#loginbtn").click(function() {
		var regname=/^[a-zA-Z]{1}[0-9a-zA-Z_]{5,}$/
		$.post("${path}/checkCode",{},function(data){
			if(data!=$("#incode").val().toLowerCase()){
				alert("验证码错误");
				return false;
			}else{
				if(!regname.test($("#name").val())){
					alert("用户名不合法");
					return false;
				}else if(!regname.test($("#password").val())){
					alert("密码不合法");
					return false;
				}else{
					$("#loginform").submit();
				}
			}
			
		})
		
	})
})
			
</script>
</body>
</html>
