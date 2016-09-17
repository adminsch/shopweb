<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<script type="text/javascript">
$(function() {
	$("#togw").click(function() {
		location.href='${path}/cart?order.batchno='+localStorage.getItem("batchno");
	})
	$("#searchbtn").click(function() {
		$("#searchform").attr("action","${path }/index?commodity.cname="+$("#searchtext").val());
		
		$("#searchform").submit();
	})
})
</script>
</head>
<body>
<div id="header">
 <div class="header-top">
    <div class="logo-container"><img src="page/img/logo-fujia.png" width="197" height="51" alt="logo" /></div>
    <div class="header-nav">
      <ul>
        <li><a href="${path }/index">首页</a></li>
        <li><a href="${path }/pinfo">信息</a></li>
        <li><a href="${path }/record">我的订单</a></li>
        <li><a href="${path }/msg">我的评价</a></li>
        <c:choose>
        <c:when test="${sessionScope.role==1}">
         <li><a href="${path }/manager">管理</a></li>
        </c:when>
        <c:otherwise>
        <li><a href="javascript:;" id="togw">购物车</a></li>
        </c:otherwise>
        </c:choose>
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
      <form id="searchform" method="post">
        <input type="text" onfocus="$(this).css('color','#313131');" id="searchtext" placeholder="请输入商品名称或输入关键字" />
        <a href="javascript:;" id="searchbtn"><img src="page/img/ico-search.gif" alt="搜索" width="64" height="23" /></a>
      </form>
      </div>
    </div>
  </div>
   
</body>
</html>