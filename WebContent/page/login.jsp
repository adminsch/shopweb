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
      <form>
        <fieldset>
          <legend>用户登录</legend>
          <div class="login-cont">
            <p class="login-left"><img src="page/img/img-login.gif" width="233" height="204" alt="赢在起点，笑在路上" /></p>
            <div class="login-right">
              <p class="login-name"><input type="text" value="请输入您的用户名" onfocus="$(this).css('color','#000').val('');" /></p>
              <p class="login-password"><input type="text" value="请输入您的密码" onfocus="$(this).attr('type','password').css('color','#000').val('');" /></p>
              <p class="login-code"><input type="text" value="验证码" onfocus="$(this).attr('type','password').css('color','#000').val('');" style="width: 90px;" />&nbsp;&nbsp;<img alt="验证码" src="${path}/code.jpg" id="code" onclick="reloadcode()"></p>
             <br/>
              <p><a href="javascript:;">忘记密码？</a></p>
              <p class="btn-login"><img src="page/img/btn-login02.gif" width="223" height="30" alt="登录" /></p>
              <p class="new-user"><a href="${path }/regist">新用户注册</a></p>
            </div>
          </div>
  		</fieldset>
      </form>
    </div>
  </div>
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
</body>
</html>
