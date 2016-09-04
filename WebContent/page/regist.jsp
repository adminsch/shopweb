<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<title>注册</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/regist.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<!--[if IE 7]> 
<script type="text/javascript"> 
  $(document).ready(function(){
    $(".regist-password").html("<input type='password' />");
    $(".insure-password").html("<input type='password' />");
  });
</script> 
<![endif]--> 
<!--[if IE 8]> 
<script type="text/javascript"> 
  $(document).ready(function(){
    $(".regist-password").html("<input type='password' />");
    $(".insure-password").html("<input type='password' />");
  });
</script> 
<![endif]--> 
</head>

<body bgcolor="#e0d6df">
   <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div class="regist-con">
      <form action="${path }/registaction" id="registform" method="post">
        <fieldset>
          <legend>用户注册</legend>
          <ul class="regist-cont">
            <li>
              <dl>
                <dt>用户名：</dt> 
                <dd><input type="text" placeholder="请输入您的用户名" name="user.name" id="name" onfocus="$(this).css('color','#000');" />
                	<input type="hidden" id="msg" value="${fieldErrors.name }"/>
                </dd>
              </dl>
              <span>*</span>
            </li>
            <li>
              <dl>
                <dt>密码：</dt>
                <dd class="regist-password"><input type="text" id="password" name="user.password" onfocus="$(this).attr('type','password').css('color','#000');" /></dd>
              </dl>
              <span>*</span>
            </li>
            <li>
              <dl>
                <dt>确认密码：</dt>
                <dd class="insure-password"><input type="text" id="password1" name="password1" onfocus="$(this).attr('type','password').css('color','#000');" /></dd>
              </dl>
              <span>*</span>
            </li>
            <li>
              <dl>
                <dt>电话：</dt>
                <dd><input type="text" placeholder="请输入您的电话号码" name="user.phone" id="phone" onfocus="$(this).css('color','#000');" /></dd>
              </dl>
              <span>*</span>
            </li>
            <li>
              <dl>
                <dt>验证码：</dt>
                <dd><input type="text" placeholder="验证码" onfocus="$(this).attr('type','password').css('color','#000');" id="incode" style="width: 90px;" />&nbsp;&nbsp;
                <img alt="验证码" src="${path}/code.jpg" id="code" onclick="reloadcode()"></dd>
              </dl>
              <span>*</span>
            </li>
          </ul>
          <p class="btn-regist"><img src="page/img/btn-regist02.gif" id="registbtn" width="223" height="30" alt="注册" /></p>
          <p class="login-direct"><a href="${path }/login">直接登录</a></p>
  		</fieldset>
      </form>
    </div>
  </div>
  <s:debug></s:debug>
  <!-- <div id="footer">
    <div class="footer-logo">
      芙佳
    </div>
    <dl class="company-info">
      <dt>公司信息</dt>
      <dd>TEL. 02-3446-8622</dd>
      <dd>Fax. 02-541-7487</dd>
      <dd>mail: www.fujia@163.com</dd>
    </dl>
  </div> -->
<script type="text/javascript" >
function reloadcode() {//点击图片换验证图片
	var verify = document.getElementById('code');
	verify.setAttribute('src', '${path}/code.jpg?it=' + Math.random());
}

$(function() {
	if($("#msg").val()!=''){
		alert($("#msg").val().substr(1,5));
	}
	$("#registbtn").click(function() {
		var regname=/^[a-zA-Z]{1}[0-9a-zA-Z_]{5,}$/
		var phone=/^1\d{10}$/;
		
		$.post('${path}/checkCode',{},function(data){
			if(data!=$("#incode").val().toLowerCase()){
				alert("验证码错误");
				return false;
			}else{
				if(!regname.test($("#name").val())){
					alert("用户名过短");
					return false;
				}else if(!regname.test($("#password").val())){
					alert("密码不合法");
					return false;
				}else if($("#password").val()!=$("#password1").val()){
					alert("密码不一致");
					return false;
				}else if(!phone.test($("#phone").val())){
					alert("手机号不合法");
					return false;
				}else{
					$("#registform").submit();
				}
			}
		})
		
	})
})
			
</script>
</body>
</html>
