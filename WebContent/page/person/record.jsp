<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购买记录</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/record.css" type="text/css" media="all" />
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
      <h1 class="title">购买记录</h1>
      <div class="record-con">
        <ul class="control-tab">
          <li class="active">所有订单</li>
          <li>待付款<span>0</span></li>
          <li>待发货<span>0</span></li>
          <li>代收货<span>0</span></li>
          <li>待评价<span>0</span></li>
        </ul>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="record-cont">
        <thead>
          <tr>
            <td width="300" align="center">商品</td>
            <td width="90" align="center">单价（元）</td>
            <td width="60" align="center">数量</td>
            <td width="100" align="center">状态</td>
            <td width="90" align="center">总计</td>
            <td width="120" align="center">操作</td>
          </tr>
          <tr>
            <td height="10" colspan="6"></td>
          </tr>
        </thead>
  <tbody class="record-tb-bo">
  <tr class="record-tit">
    <td height="38" colspan="3" align="left">
      <span class="record-check"><input type="checkbox" /></span>
      <span class="record-date">2014-11-03</span>
      <span class="record-num">订单号：89652226454546541</span></td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="page/img/record/ico-delete.gif" width="22" height="23" alt="删除" /></td>
  </tr>
  <tr>
    <td align="left" class="record-bo-bm">
      <a href="page/product/details.html">
      <span class="record-img"><img src="page/img/record/img-record01.jpg" width="80" height="80" alt="蚕豆" /></span>
      <span class="record-name">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g </span>
      </a>
    </td>
    <td align="center" class="record-bo-bm">19.90</td>
    <td align="center" class="record-bo-bm">1</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">待付款</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">59.90</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">
      <a href="page/cart/settlement.html">立即付款</a><br />
      <a href="javascript:;">取消订单</a>
    </td>
  </tr>
  <tr>
    <td align="left" class="record-bo-bm">
      <a href="page/product/details.html">
      <span class="record-img"><img src="page/img/record/img-record01.jpg" width="80" height="80" alt="蚕豆" /></span>
      <span class="record-name">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g </span>
      </a>
    </td>
    <td align="center" class="record-bo-bm">19.90</td>
    <td align="center" class="record-bo-bm">2</td>
    </tr>
  </tbody>
  <tbody>
    <tr>
      <td height="21" colspan="6"></td>
    </tr>
  </tbody>
  <tbody class="record-tb-bo">
  <tr class="record-tit">
    <td height="38" colspan="3" align="left">
      <span class="record-check"><input type="checkbox" /></span>
      <span class="record-date">2014-11-03</span>
      <span class="record-num">订单号：89652226454546541</span></td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="page/img/record/ico-delete.gif" width="22" height="23" alt="删除" /></td>
  </tr>
  <tr>
    <td align="left" class="record-bo-bm">
      <a href="page/product/details.html">
      <span class="record-img"><img src="page/img/record/img-record01.jpg" width="80" height="80" alt="蚕豆" /></span>
      <span class="record-name">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g </span>
      </a>
    </td>
    <td align="center" class="record-bo-bm">19.90</td>
    <td align="center" class="record-bo-bm">1</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">待付款</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">59.90</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">
      <a href="page/cart/settlement.html">立即付款</a><br />
      <a href="javascript:;">取消订单</a>
    </td>
  </tr>
  </tbody>
  <tbody>
    <tr>
      <td height="21" colspan="6"></td>
    </tr>
  </tbody>
  <tbody class="record-tb-bo">
  <tr class="record-tit">
    <td height="38" colspan="3" align="left">
      <span class="record-check"><input type="checkbox" /></span>
      <span class="record-date">2014-11-03</span>
      <span class="record-num">订单号：89652226454546541</span></td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="page/img/record/ico-delete.gif" width="22" height="23" alt="删除" /></td>
  </tr>
  <tr>
    <td align="left" class="record-bo-bm">
      <a href="page/product/details.html">
      <span class="record-img"><img src="page/img/record/img-record01.jpg" width="80" height="80" alt="蚕豆" /></span>
      <span class="record-name">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g </span>
      </a>
    </td>
    <td align="center" class="record-bo-bm">19.90</td>
    <td align="center" class="record-bo-bm">1</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">待发货</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">59.90</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">
      <a href="javascript:;">买家已付款</a><br />
      <a href="javascript:;">申请退货</a>
    </td>
  </tr>
  </tbody>
  <tbody>
    <tr>
      <td height="21" colspan="6"></td>
    </tr>
  </tbody>
  <tbody class="record-tb-bo">
  <tr class="record-tit">
    <td height="38" colspan="3" align="left">
      <span class="record-check"><input type="checkbox" /></span>
      <span class="record-date">2014-11-03</span>
      <span class="record-num">订单号：89652226454546541</span></td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="page/img/record/ico-delete.gif" width="22" height="23" alt="删除" /></td>
  </tr>
  <tr>
    <td align="left" class="record-bo-bm">
      <a href="page/product/details.html">
      <span class="record-img"><img src="page/img/record/img-record01.jpg" width="80" height="80" alt="蚕豆" /></span>
      <span class="record-name">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g </span>
      </a>
    </td>
    <td align="center" class="record-bo-bm">19.90</td>
    <td align="center" class="record-bo-bm">1</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">待收货</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">59.90</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">
      <a href="javascript:;">确认收货</a><br />
      <a href="javascript:;">申请退款</a>
    </td>
  </tr>
  </tbody>
  <tbody>
    <tr>
      <td height="21" colspan="6"></td>
    </tr>
  </tbody>
  <tbody class="record-tb-bo">
  <tr class="record-tit">
    <td height="38" colspan="3" align="left">
      <span class="record-check"><input type="checkbox" /></span>
      <span class="record-date">2014-11-03</span>
      <span class="record-num">订单号：89652226454546541</span></td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="page/img/record/ico-delete.gif" width="22" height="23" alt="删除" /></td>
  </tr>
  <tr>
    <td align="left" class="record-bo-bm">
      <a href="page/product/details.html">
      <span class="record-img"><img src="page/img/record/img-record01.jpg" width="80" height="80" alt="蚕豆" /></span>
      <span class="record-name">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g </span>
      </a>
    </td>
    <td align="center" class="record-bo-bm">19.90</td>
    <td align="center" class="record-bo-bm">1</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">待评价</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">59.90</td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">
      <a href="javascript:;">评价商品</a>
    </td>
  </tr>
  </tbody>
  <tbody>
    <tr>
      <td height="21" colspan="6"></td>
    </tr>
  </tbody>
</table>

      </div>
      
      <div class="page-list">
        <p>
          <span>&lt;上一页</span>
          <span class="page-active">1</span>
          <span>2</span>
          <span>3</span>
          <span>4</span>
          <span>5</span>
          <span>6</span>
          <span>7</span>
          <span>下一页&gt;</span>
        </p>
      </div>
      <div class="recommend">
      <h1 class="title">掌柜推荐</h1>
      <div class="rec-slider">
      <ul>
      <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span></a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
      </ul>
      </div>
      <p class="recommend-tab">
        <span class="recommend-prev">&lt;</span>
        <span class="recommend-next">&gt;</span>
      </p>
    </div>
    </div>
  </div>
 
</body>
</html>
