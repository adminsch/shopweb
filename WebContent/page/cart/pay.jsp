<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付方式</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/pay.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
</head>

<body bgcolor="#e0d6df">
   <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div id="content">
      <div class="pay-method">
        <h1 class="title">支付完成</h1>
        <div class="form-message">
          <p>订单号：<span>${order.batchno }</span></p>
          <p>订单总价：<span>${order.batchtotle}</span></p>
          <p><span><a href="${path }/discuss?order.batchno=${order.batchno }">评价</a></span></p>
        </div>
        <!-- <div class="online-method">
          <p class="online-title"><img src="page/img/pay/logo-online.gif" width="139" height="55" alt="在线支付" />选择支付方式：</p>
          <div class="online-container">
            <ul>
              <li><img src="page/img/pay/ico-alipy.gif" width="180" height="114" alt="支付宝" /></li>
              <li><img src="page/img/pay/ico-alipy.gif" width="180" height="114" alt="支付宝" /></li>
              <li><img src="page/img/pay/ico-alipy.gif" width="180" height="114" alt="支付宝" /></li>
              <li><img src="page/img/pay/ico-alipy.gif" width="180" height="114" alt="支付宝" /></li>
              <li><img src="page/img/pay/ico-alipy.gif" width="180" height="114" alt="支付宝" /></li>
            </ul>
          </div>
        </div> -->
      </div>
       <%@include file="/page/product/recommend.jsp" %>
    </div>
  </div>
  
</body>
</html>
