<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购买记录</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/record.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/common.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<script type="text/javascript">
$(function() {
	var cnum=$($($($($(".totalable").parent(".record-bo-lt")).prev()).prev()).prev());
	var price=$($($($(".totalable").parent(".record-bo-lt")).prev()).prev());
	var totalable=$(".totalable");
	for(var i=0;i<cnum.length;i++){
		$($(totalable)[i]).text($($(cnum)[i]).text()*$($(price)[i]).text())
	}
	
	$(".delo").click(function() {
		var val=$(this);
		$.post("${path}/delorder",{'order.oid':$($(val).prev()).val()},function(data){
			if(data>=1){
				$($($($(val).parent('.record-bo-lt')).parent('.tr1')).parent('.record-tb-bo')).remove();
			}else{
				alert("删除失败");
				return false;
			}
				
		})
	})
})
</script>
</head>

<body bgcolor="#e0d6df">
  <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <%@include file="/page/person/userinfo.jsp" %>
    <div id="content">
      <h1 class="title">购买记录</h1>
     <div class="record-con">
       <ul class="control-tab">
          <li class="active">所有订单</li>
           <!--  <li>待付款<span>0</span></li>
          <li>待发货<span>0</span></li>
          <li>代收货<span>0</span></li>
          <li>待评价<span>0</span></li> -->
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
  
  <tbody>
    <tr>
      <td height="21" colspan="6"></td>
    </tr>
  </tbody>
  <c:forEach items="${requestScope.orders }" var="order">
  <tbody class="record-tb-bo">
  <tr class="record-tit">
    <td height="38" colspan="3" align="left">
     <!--  <span class="record-check"><input type="checkbox" /></span> -->
     <!--  <span class="record-date">2014-11-03</span> -->
      <span class="record-num">订单号：${order.batchno }</span></td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="page/img/record/ico-delete.gif" width="22" height="23" alt="删除" /></td>
  </tr>
  <tr class="tr1">
    <td align="left" class="record-bo-bm">
      <a href="${path }/detail?commodity.cid=${order.commodity.cid}">
      <span class="record-img"><img src="../../${order.commodity.pictureFileName }" width="80" height="80"/></span>
      <span class="record-name">${order.commodity.cname } </span>
      </a>
    </td>
    <td align="center" class="record-bo-bm">${order.cprice}</td>
    <td align="center" class="record-bo-bm">${order.cnum}</td>
    <c:choose>
    <c:when test="${order.status==1}">
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">已付款</td>
    </c:when>
    <c:otherwise>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">待付款</td>
    </c:otherwise>
    </c:choose>
    
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm"><span class="totalable">59.90</span></td>
    <td rowspan="2" align="center" class="record-bo-lt record-bo-bm">
      <!-- <a href="page/cart/settlement.html">立即付款</a><br /> -->
       <input type="hidden" value="${order.oid }" class="orderhidden"/> 
      <a href="javascript:;" class="delo">删除</a>
    </td>
  </tr>
  </tbody>
  </c:forEach>
  <tbody>
    <tr>
      <td height="21" colspan="6"></td>
    </tr>
  </tbody>
</table>

      </div>
      
      
       <%@include file="/page/product/recommend.jsp" %>
    </div>
  </div>
 
</body>
</html>
