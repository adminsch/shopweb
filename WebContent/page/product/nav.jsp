<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
</head>
<body>
<div id="header">
 <div class="header-top">
    <div class="logo-container"><img src="page/img/logo-fujia.png" width="197" height="51" alt="logo" /></div>
    <div class="header-nav">
      <ul>
        <li><a href="${path }/index">首页</a></li>
        <li><a href="${path }/pinfo">信息</a></li>
        <li><a href="${path }/record">我的芙佳</a></li>
        <li><a href="${path }/cart">我的评价</a></li>
        <li><a href="${path }/cart">购物车</a></li>
        <li><a href="${path }/xbox">二手交易</a></li>
      </ul>
    </div>
    </div>
    <div class="header-bottom">
     <!--  <ul class="hot-search">
        <li class="search-title">热门搜索：</a></li>
        <li><a href="product/details.html">安岳柠檬</a></li>
        <li><a href="product/details.html">安岳柠檬</a></li>
        <li><a href="product/details.html">安岳柠檬</a></li>
        <li><a href="product/details.html">安岳柠檬</a></li>
        <li><a href="product/details.html">安岳柠檬</a></li>
        <li><a href="product/details.html">安岳柠檬</a></li>
      </ul> -->
      <div class="search-container">
        <input type="text" onfocus="this.value='';$(this).css('color','#313131');" value="请输入商品名称或输入关键字" />
        <a href="javascript:;"><img src="page/img/ico-search.gif" alt="搜索" width="64" height="23" /></a>
      </div>
    </div>
  </div>
   
</body>
</html>