<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/record.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/common.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<style type="text/css">
.etabs { margin: 0; padding: 0; }
.tab { display: inline-block; zoom:1; *display:inline; background: #F09E75; border: solid 1px #999; border-bottom: none; -moz-border-radius: 4px 4px 0 0; -webkit-border-radius: 4px 4px 0 0; }
.tab a { font-size: 14px; line-height: 2em; display: block; padding: 0 10px; outline: none; }
.tab a:hover { text-decoration: none; }
.tab.active { background: #fff; padding-top: 6px; position: relative; top: 1px; border-color: #666; }
.tab a.active { font-weight: bold; }
.tab-container .panel-container { background: #fff; border: solid #666 1px; padding: 10px; -moz-border-radius: 0 4px 4px 4px; -webkit-border-radius: 0 4px 4px 4px; }
.panel-container { margin-bottom: 10px; }
#ctab tr:nth-child(even){background-color:#F4F4F4 ;}
</style>
<script type="text/javascript">
$(function() {
	
})
</script>
</head>
<body bgcolor="#e0d6df">
 <%@include file="/page/product/nav.jsp" %>
  <div id="container">
  <ul class='etabs'>
   <li class='tab'><a href="#tabs1-html">商品管理</a></li>
 </ul>
  <div class='panel-container'>
  <div id="tabs1-html">
 	<table align="center" style="text-align: center;" id="ctab">
  <tr style="background-color:#E97439; font-size: 17px;color: #FFFFFF;">
  	<td style="width: 50px;">编号</td> 
 	<td style="width: 200px;">商品图片</td> 
  	<td style="width: 100px;">商品名称</td>
  	<td style="width: 250px;">商品介绍</td>
  	<td style="width: 100px;">评价等级</td>
  	<td style="width: 250px;">评价内容</td>
  	<td style="width: 100px;">评价时间</td>
  </tr>
  <c:forEach items="${requestScope.messages }" var="message" varStatus="status">
  <tr style="border: 1px solid black;">
  	<td>${status.index+1 }</td>
 	<td><a href="${path }/detail?commodity.cid=${message.commodity.cid}"><img src="../../${message.commodity.pictureFileName }" style="width: 100px;height: 100px;padding: 10px 10px;"></a></td> 
  	<td>${message.commodity.cname }</td>
 	<td style="word-break:break-all;width: 300px; text-overflow:ellipsis;overflow:hidden;">${message.commodity.cdesc }</td>
  	<td>
  	<c:choose>
  	<c:when test="${message.rate==-1}">
  		差评
  	</c:when>
  	<c:when test="${message.rate==0 }">
  		中评
  	</c:when>
  	<c:otherwise>
  		好评
  	</c:otherwise>
  	</c:choose>
  	</td>
  	<td style="word-break:break-all;width: 300px; text-overflow:ellipsis;overflow:hidden;">${message.content}</td>
  	<td>${message.mdate }</td>
  </tr>
  </c:forEach>
  </table>
    </div>
  </div>
 </div>
</body>
</html>