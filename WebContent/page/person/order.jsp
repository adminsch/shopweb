<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单详情</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/order.css" type="text/css" media="all" />
</head>

<body bgcolor="#e0d6df">
  <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div id="nav-side">
      <div class="person-container">
        <div class="person-message">
          <p class="person-photo"><img src="page/img/img-person.jpg" width="87" height="87" alt="张三丰" /></p>
          <p class="person-name">张三丰，您好！</p>
          <p class="person-repair"><a href="data.html">[修改]</a></p>
        </div>
        <div class="my-message">
         <p class="my-address">
            <a href="address.html">我的地址</a>
          </p>
          <p class="my-intrgral">
            <a href="integral.html">我的积分：<span>122</span></a>
          </p>
          <p class="my-coupon">
            <a href="coupon.html">我的优惠券：<span>4张</span></a>
          </p>
          <p class="my-record">
            <a href="record.html">购买记录</a>
          </p>
        </div>
      </div>
    </div>
    <div id="content">
      <h1 class="title">订单信息</h1>
      <div class="specie-container">
        <h2 class="specie-title">收货人信息</h2>
        <ul class="specie-message">
          <li>
            <dl>
              <dt>收货人姓名：</dt>
              <dd>西门吹雪</dd>
            </dl>
          </li>
          <li>
            <dl>
              <dt>地址：</dt>
              <dd>大连市</dd>
            </dl>
          </li>
          <li>
            <dl>
              <dt>固定电话：</dt>
              <dd>0411-88888888</dd>
            </dl>
          </li>
          <li>
            <dl>
              <dt>手机号码：</dt>
              <dd>18888888888</dd>
            </dl>
          </li>
          <li>
            <dl>
              <dt>电子邮件：</dt>
              <dd>811052479@qq.com</dd>
            </dl>
          </li>
          <li>
            <dl>
              <dt>邮编：</dt>
              <dd>116052</dd>
            </dl>
          </li>
        </ul>
      </div>
      <div class="specie-container">
        <h2 class="specie-title">支付方式</h2>
        <dl class="specie-message">
          <dt>支付方式：</dt>
          <dd>在线支付</dd>
        </dl>
      </div>
      <div class="specie-container">
        <h2 class="specie-title">发票信息</h2>
        <dl class="specie-message">
          <dt>发票类型：</dt>
          <dd>普通发票</dd>
        </dl>
        <dl class="specie-message">
          <dt>发票抬头：</dt>
          <dd>个人</dd>
        </dl>
      </div>
      <div class="specie-container">
        <h2 class="specie-title">商品清单</h2>
        <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" class="detail-list">
      <thead>
  <tr>
    <td height="30" align="center" valign="middle">商品编号</td>
    <td align="center" valign="middle">商品名称</td>
    <td align="center" valign="middle">酷派价</td>
    <td align="center" valign="middle">优惠</td>
    <td align="center" valign="middle">商品数量</td>
    <td align="center" valign="middle">小计</td>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td height="30" align="center">45512454552</td>
    <td align="center">魅族MX3</td>
    <td align="center">￥1299.00</td>
    <td align="center">￥200.00</td>
    <td align="center">1</td>
    <td align="center">￥1099.00</td>
  </tr>
  </tbody>
</table>
      </div>
      <div class="specie-container">
        <h2 class="specie-title">结算信息</h2>
        <div class="settlement-message">
          <p>商品金额：1299.00-优惠：200.00-积分：100.00+运费：10.00</p>
        </div>
        <div class="settlement-price">应付总额：<span>1189.00</span></div>
      </div>
    </div>
  </div>
  
</body>
</html>
