<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理收货地址</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/address.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/common.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
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
      <h1 class="title">管理收货地址</h1>
      <div class="new-address">
              <h2 class="add-address">新增收货地址</h2>
              <div class="input-address">
                <form>
                  <ul>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>收货人：</dt>
                        <dd><input type="text" /></dd>
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>手机号码：</dt>
                        <dd><input type="text" /></dd>
                        <dt>固定电话：</dt>
                        <dd><input type="text" class="area-code" />-<input type="text" /><span class="prompt">两者至少填写一项</span></dd>
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require"></span>邮编：</dt>
                        <dd><input type="text" /></dd>
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>地址：</dt>
                        <dd>
                          <select name="province" class="choice">
                             <option value="210000">辽宁</option>
                          </select>
                          <select name="city" class="choice">
                            <option value="210200">大连市</option>
                          </select>
                          <select name="area" class="choice">
                            <option value="开发区">开发区</option>
                            <option value="甘井子区">甘井子区</option>
                            <option value="旅顺口区">旅顺口区</option>
                            <option value="沙河口区">沙河口区</option>
                            <option value="西岗区">西岗区</option>
                            <option value="中山区">中山区</option>
                          </select>
                          <input type="text" class="address-text" value="新开路68号 中投大厦17层" />
                        </dd>
                      </dl>
                    </li>
                  </ul>
                  <p class="submit-address"><a href="javascript:;"><img src="page/img/cart/btn-save.gif" width="64" height="22" alt="保存" /></a></p>
                </form>
              </div>
            </div>
      <div class="address-list">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <thead>
          <tr>
    <td width="75">收货人</td>
    <td width="150">所在地区</td>
    <td width="250">详细地址</td>
    <td width="65">邮编</td>
    <td width="100">手机</td>
    <td width="70">操作</td>
  </tr>
        </thead>
        <tbody>
  <tr>
    <td>隽铖网络</td>
    <td>辽宁省大连市西岗区</td>
    <td>新开路中投大厦17楼，隽铖网络科技有限公司</td>
    <td>116000</td>
    <td>18000000000</td>
    <td><span class="address-modify">修改</span><span class="address-del">删除</span></td>
  </tr>
  <tr>
    <td>隽铖网络</td>
    <td>辽宁省大连市西岗区</td>
    <td>新开路中投大厦17楼，隽铖网络科技有限公司</td>
    <td>116000</td>
    <td>18000000000</td>
    <td><span class="address-modify">修改</span><span class="address-del">删除</span></td>
  </tr>
  </tbody>
</table>
      </div>
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
