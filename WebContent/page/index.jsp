<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>首页</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/index.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/fadebanner.js"></script>
<style rel="stylesheet" type="text/css">
.table tr,td{padding:5px;}
</style>
</head>

<body bgcolor="#e0d6df">
   <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div id="nav-side">
    <%@include file="/page/product/info.jsp" %>
   	<%@include file="/page/product/hot.jsp" %>
     <%--  <div class="hot-sale">
        <h1 class="hot-tit">热卖商品</h1>
        <div class="hot-cont">
        <c:forEach items="${requestScope.c }" var="commodity">
          <ul class="hot-list">
            <li>
              <p><a href="${path }/detail?commodity.cid=${commodity.cid}"><img src="../../${commodity.pictureFileName }" width="136" height="112"/></a></p>
              <p class="hot-name"><a href="product/details.html">${commodity.cname }<span>RMB:${commodity.price }</span></a></p>
            </li>
          </ul>
          </c:forEach>
        </div>
      </div> --%>
    </div>
    <div id="content">
      <div class="banner-cont">
        <ul class="fade-banner" control-fade="banner-control">
        <c:forEach items="${requestScope.c }" var="commodity">
          <li><a href="${path }/detail?commodity.cid=${commodity.cid}"><img src="../../${commodity.pictureFileName }" width="744" height="303" alt="${commodity.cname }" /></a></li>
        </c:forEach>
        </ul>
        <ul class="banner-control">
          <li class="active"></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
      <div class="promotion-area">
        <h1 class="title">商品专区</h1>
  
      <ul class="promotion-list">
        <c:forEach var="commodity" items="${commoditys }">
         <li>
         	<a href="${path }/detail?commodity.cid=${commodity.cid}">
         	<div style="position:relative;width:215px ;height:199px ;">
			   <img src="../../${commodity.pictureFileName }" title="库存:${commodity.stock} 销量:${commodity.record}" style="border-width:0px;" width="215px" height="199px" />
			   <img src="page/img/buy.png" style="border-width:0px;position:absolute;width:70px;height:50px;z-indent:2;left:0;top:0;margin-left:130px;margin-top: 137px;"/>
			</div>
         	</a>
         </li>
		   <c:if test="${(status.index+1)%3==0 }">
      			<ul/>
      	   </c:if>
        </c:forEach>
        </ul> 
      </div>
     
    </div>
  </div>
</body>
<script>
  $(".fade-banner").fadeBanner();//轮播图插件初始化，注意control-fade，contrl-tab两个属性规定是否有小圆点控制按钮和tab切换的按钮
  $(".dropdown").click(function(){
	$(this).parent().css("position","relative");
	var getTar = $(this).attr("href");
	$(getTar).slideToggle();
	return false;
  });
  $(window).scroll(function(){
	var getSpace = $(window).scrollTop();
	$(".online-service").stop().animate({"top" : getSpace+250}, "linear");
  })
</script>
</html>
