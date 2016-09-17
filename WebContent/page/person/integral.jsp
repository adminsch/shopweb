<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的积分</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/integral.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/common.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
</head>

<body bgcolor="#e0d6df">
   <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <%@include file="/page/person/userinfo.jsp" %>
    <div id="content">
      <h1 class="title">我的积分</h1>
      <div class="integral-con">
        <ul class="control-tab">
          <li class="active">积分明细</li>
          <li>积分收入</li>
          <li>积分支出</li>
          <li href="exchange">兑换商品</li>
        </ul>
        <p class="integral-count">
          <span>我的积分：<span>122</span></span>
          <span>即将过期积分：<span>32</span></span>
        </p>
        <div class="integral-detail">
          <ul class="integral-nav">
            <li class="source">来源</li>
            <li class="change">积分变化</li>
            <li class="date">日期</li>
            <li class="remark">备注</li>
          </ul>
          <ul class="integral-cont">
            <li class="source">
              <dl>
                <dt><a href="page/product/details.html"><img src="page/img/integral/img-integral01.jpg" width="80" height="80" alt="蚕豆" /></a></dt>
                <dd><a href="page/product/details.html">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g</a></dd>
              </dl>
            </li>
            <li class="change">+36</li>
            <li class="date">2014-11-16 12:42:35</li>
            <li class="remark">交易获得</li>
          </ul>
          <ul class="integral-cont">
            <li class="source">
              <dl>
                <dt><a href="page/product/details.html"><img src="page/img/integral/img-integral01.jpg" width="80" height="80" alt="蚕豆" /></a></dt>
                <dd><a href="page/product/details.html">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g</a></dd>
              </dl>
            </li>
            <li class="change">+36</li>
            <li class="date">2014-11-16 12:42:35</li>
            <li class="remark">交易获得</li>
          </ul>
          <ul class="integral-cont">
            <li class="source">
              <dl>
                <dt><a href="page/product/details.html"><img src="page/img/integral/img-integral01.jpg" width="80" height="80" alt="蚕豆" /></a></dt>
                <dd><a href="page/product/details.html">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g</a></dd>
              </dl>
            </li>
            <li class="change">+36</li>
            <li class="date">2014-11-16 12:42:35</li>
            <li class="remark">交易获得</li>
          </ul>
          <ul class="integral-cont">
            <li class="source">
              <dl>
                <dt><a href="page/product/details.html"><img src="page/img/integral/img-integral01.jpg" width="80" height="80" alt="蚕豆" /></a></dt>
                <dd><a href="page/product/details.html">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g</a></dd>
              </dl>
            </li>
            <li class="change">-136</li>
            <li class="date">2014-11-16 12:42:35</li>
            <li class="remark">交易获得</li>
          </ul>
        </div>
        <div class="integral-exchange" style="display: none;">
        <div class="ex-list">
        <ul>
          <li>
            <p class="recom-img">
              <a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /></a>
              <span></span>
            </p>
            <p class="recom-name">猕猴桃（新品上市）</p>
            <p class="recom-price">￥5.60/斤</p>
          </li>
          <li>
            <p class="recom-img">
              <a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /></a>
              <span></span>
            </p>
            <p class="recom-name">猕猴桃（新品上市）</p>
            <p class="recom-price">￥5.60/斤</p>
          </li>
          <li>
            <p class="recom-img">
              <a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /></a>
              <span></span>
            </p>
            <p class="recom-name">猕猴桃（新品上市）</p>
            <p class="recom-price">￥5.60/斤</p>
          </li>
          <li>
            <p class="recom-img">
              <a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /></a>
              <span></span>
            </p>
            <p class="recom-name">猕猴桃（新品上市）</p>
            <p class="recom-price">￥5.60/斤</p>
          </li>
          <li>
            <p class="recom-img">
              <a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /></a>
              <span></span>
            </p>
            <p class="recom-name">猕猴桃（新品上市）</p>
            <p class="recom-price">￥5.60/斤</p>
          </li>
          <li>
            <p class="recom-img">
              <a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /></a>
              <span></span>
            </p>
            <p class="recom-name">猕猴桃（新品上市）</p>
            <p class="recom-price">￥5.60/斤</p>
          </li>
          <li>
            <p class="recom-img">
              <a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /></a>
              <span></span>
            </p>
            <p class="recom-name">猕猴桃（新品上市）</p>
            <p class="recom-price">￥5.60/斤</p>
          </li>
          <li>
            <p class="recom-img">
              <a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /></a>
              <span></span>
            </p>
            <p class="recom-name">猕猴桃（新品上市）</p>
            <p class="recom-price">￥5.60/斤</p>
          </li>
        </ul>
      </div>
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
       <%@include file="/page/product/recommend.jsp" %>
      </div>
    </div>
  </div>
 
</body>
<script> 
  $(document).ready(function(){
	$(".control-tab li").click(function(){
	var getHref = $(this).attr("href");
	if(getHref){
	  $(".integral-exchange").css("display","block");
	  $(".integral-detail").css("display","none");
	}else {
	  $(".integral-exchange").css("display","none");
	  $(".integral-detail").css("display","block");
	}
  })
  })
</script>
</html>
