<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人资料</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/data.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="page/css/datepicker.css"/>
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/common.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<script type="text/javascript" src="page/js/bootstrap-datepicker.js"></script>
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
      <h1 class="title">个人资料</h1>
      <div class="data-real">
        <h2>亲爱的张三丰，填写真实的资料，有助于好友找到你哦。</h2>
        <form>
          <ul class="data-input">
            <li>
              <dl class="photo">
                <dt>当前头像：</dt>
                <dd><img src="page/img/data/img-data01.jpg" width="80" height="80" alt="头像" /></dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>昵称：</dt>
                <dd><input type="text" /></dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>真实姓名：</dt>
                <dd><input type="text" /></dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>性别：</dt>
                <dd>
                  <input type="radio" name="sex" />男
                  <input type="radio" name="sex" />女
                </dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>生日：</dt>
                <dd>
                  <div class="date date-picker" data-date-format="dd/mm/yyyy">
  <input type="text" class="btn" />
</div><script>
        jQuery(document).ready(function() {   
        $('.date-picker').datepicker({
            autoclose: true//值为true时，选择日期之后，选择日期的面板会自动隐藏
        });
        });
    </script>
                </dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>居住地：</dt>
                <dd>
                  <select>
                    
                  </select>
                  <select></select>
                  <select></select>
                </dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>家乡：</dt>
                <dd>
                  <select></select>
                  <select></select>
                  <select></select>
                </dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt> </dt>
                <dd><img src="page/img/data/btn-save.gif" width="223" height="30" alt="保存" /></dd>
              </dl>
            </li>
          </ul>
        </form>
      </div>
      <div class="recommend">
      <h1 class="title">掌柜推荐</h1>
      <div class="rec-slider">
      <ul>
      <li>
          <p class="recom-img"><a href="../product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="../product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="../product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="../product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="../product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="../product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="../product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="../product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="../product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="../product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="../product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="../product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="../product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span></a> </p>
          <p class="recom-name"><a href="../product/details.html">猕猴桃（新品上市）</a></p>
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
