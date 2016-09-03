<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <form>
        <fieldset>
          <legend>用户注册</legend>
          <ul class="regist-cont">
            <li>
              <dl>
                <dt>用户名：</dt>
                <dd><input type="text" value="请输入您的用户名" onfocus="$(this).css('color','#000').val('');" /></dd>
              </dl>
              <span>*</span>
            </li>
            <li>
              <dl>
                <dt>密码：</dt>
                <dd class="regist-password"><input type="text" value="请输入您的密码" onfocus="$(this).attr('type','password').css('color','#000').val('');" /></dd>
              </dl>
              <span>*</span>
            </li>
            <li>
              <dl>
                <dt>确认密码：</dt>
                <dd class="insure-password"><input type="text" value="请再次输入您的密码" onfocus="$(this).attr('type','password').css('color','#000').val('');" /></dd>
              </dl>
              <span>*</span>
            </li>
            <li>
              <dl>
                <dt>电话：</dt>
                <dd><input type="text" value="请输入您的电话号码" onfocus="$(this).css('color','#000').val('');" /></dd>
              </dl>
              <span>*</span>
            </li>
            <li>
              <dl>
                <dt>电子邮箱：</dt>
                <dd><input type="text" value="请输入您的电子邮箱" onfocus="$(this).css('color','#000').val('');" /></dd>
              </dl>
              <span>*</span>
            </li>
          </ul>
          <p class="btn-regist"><a href="javascript:;"><img src="page/img/btn-regist02.gif" width="223" height="30" alt="注册" /></a></p>
          <p class="login-direct"><a href="${path }/login">直接登录</a></p>
  		</fieldset>
      </form>
    </div>
  </div>
  <div id="footer">
    <div class="footer-logo">
      芙佳
    </div>
    <dl class="company-info">
      <dt>公司信息</dt>
      <dd>TEL. 02-3446-8622</dd>
      <dd>Fax. 02-541-7487</dd>
      <dd>mail: www.fujia@163.com</dd>
    </dl>
  </div>
</body>
</html>
