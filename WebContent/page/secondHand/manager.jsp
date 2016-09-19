<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/index.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="page/js/fadebanner.js"></script>
<script src="page/js/jquery-hashchange.js" type="text/javascript"></script>
<script src="page/js/jquery.easytabs.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready( function() {
      $('#tab-container').easytabs();
    });
  </script>
<style type="text/css">
/* Example Styles for Demo */
.etabs { margin: 0; padding: 0; }
.tab { display: inline-block; zoom:1; *display:inline; background: #E97439; border: solid 1px #999; border-bottom: none; -moz-border-radius: 4px 4px 0 0; -webkit-border-radius: 4px 4px 0 0; }
.tab a { font-size: 14px; line-height: 2em; display: block; padding: 0 10px; outline: none; }
.tab a:hover { text-decoration: none; }
.tab.active { background: #fff; padding-top: 6px; position: relative; top: 1px; border-color: #666; }
.tab a.active { font-weight: bold; }
.tab-container .panel-container { background: #fff; border: solid #666 1px; padding: 10px; -moz-border-radius: 0 4px 4px 4px; -webkit-border-radius: 0 4px 4px 4px; }
.panel-container { margin-bottom: 10px; }
tr{
height: 40px;
}
#ctab tr:nth-child(even){background-color:#F4F4F4 ;}
</style>
</head>
<body>
 <%@include file="/page/product/nav.jsp" %>
  <div id="container">
      <div class="cart-message">
      
      
<div id="tab-container" class='tab-container'>
 <ul class='etabs'>
   <li class='tab'><a href="#tabs1-html">商品管理</a></li>
   <li class='tab'><a href="#tabs1-js">用户管理</a></li>
   <li class='tab'><a href="#tabs1-css">商品列表</a></li>
 </ul>
 <div class='panel-container'>
  <div id="tabs1-html">
 	<div align="center">
      <form action="${path }/addcommodity" id="addcform" method="post" enctype="multipart/form-data">
      	<table>
      	<tr>
      	<td>商品名称：</td>
      	<td><input type="text" placeholder="商品名称" name="commodity.cname" id="cname" onfocus="$(this).css('color','#000');" /></td>
      	</tr>
      	<tr>
      	<td>库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存：</td>
      	<td><input type="text"  placeholder="库存"  id="stock" name="commodity.stock" onfocus="$(this).css('color','#000');" /></td>
      	</tr>
      	<tr>
      	<td>单&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</td>
      	<td><input type="text" placeholder="单价" name="commodity.price" id="price" onfocus="$(this).css('color','#000');" /></td>
      	</tr>
      	<tr>
      	<td>折&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;扣：</td>
      	<td><input type="text" placeholder="折扣" name="commodity.discount" id="discount" onfocus="$(this).css('color','#000');" /></td>
      	</tr>
      	<tr>
      	<td>商品地址：</td>
      	<td><input type="text" placeholder="商品地址" name="commodity.faddr" id="faddr" onfocus="$(this).css('color','#000');" /></td>
      	</tr>
      	<tr>
      	<td>商品描述：</td>
      	<td><input type="text" placeholder="商品描述" name="commodity.cdesc" id="cdesc" onfocus="$(this).css('color','#000');" /></td>
      	</tr>
      	<tr>
      	<td>商品图片：</td>
      	<td><input type="file" name="commodity.picture" id="picture" onfocus="$(this).css('color','#000');" /></td>
      	</tr>
      	<tr>
      	<td colspan="2"><img src="page/img/btn-addc.gif" id="addcbtn" width="223" height="30" alt="添加" /></td>
      	</tr>
      	</table>
      </form>
    </div>
 	
  </div>
  
   <div id="tabs1-js">
  <c:choose>
  <c:when test="${!empty requestScope.users }">
  <table align="center" style="text-align: center;" id="ctab">
   <tr style="background-color:#E97439; ">
   <td>编号</td>
   <td>名称</td>
   <td>角色</td>
   <td>积分</td>
   <td>手机号</td>
   <td>注册时间</td>
   <td>操作</td>
   </tr>
   <c:forEach items="${requestScope.users }" var="user" varStatus="status">
    <tr>
   <td style="width: 100px;">${status.index+1 }</td>
   <td style="width: 200px;">${user.name }</td>
   <c:choose>
   <c:when test="${user.role==1 }">
    <td style="width: 150px;">管理员</td>
   </c:when>
   <c:otherwise>
   <td style="width: 150px;">普通用户</td>
   </c:otherwise>
   </c:choose>
   <td style="width: 100px;">${user.integral }</td>
   <td style="width: 200px;">${user.phone }</td>
   <td style="width: 200px;"><f:formatDate value="${user.date }" pattern="yyyy-MM-dd"/> </td>
   <td style="width: 100px;"><a href="javascript:;" value="${user.uid }" class="delu">删除</a></td>
   </tr>
   
   </c:forEach>
  
   
   </table>
  
  </c:when>
  <c:otherwise>
  <h1>无用户信息</h1>
  </c:otherwise>
  </c:choose>

   

  </div>
  <div id="tabs1-css">
  <c:choose>
  <c:when test="${!empty requestScope.commoditys }">
  <table align="center" style="text-align: center;" id="ctab">
   <tr style="background-color:#E97439; ">
   <td>编号</td>
   <td>商品名称</td>
   <td>单价</td>
   <td>折扣</td>
   <td>发货地址</td>
   <td>库存</td>
   <td>销量</td>
   <td>日期</td>
   <td>操作</td>
   </tr>
   <c:forEach items="${requestScope.commoditys }" var="commodity" varStatus="status">
    <tr>
   <td style="width: 100px;">${status.index+1 }</td>
   <td style="width: 200px;">${commodity.cname }</td>
   <td style="width: 100px;">${commodity.price }</td>
   <td style="width: 100px;">${commodity.discount }</td>
   <td style="width: 200px;">${commodity.faddr }</td>
   <td style="width: 100px;">${commodity.stock }</td>
   <td style="width: 100px;">${commodity.record }</td>
   <td style="width: 100px;"><f:formatDate value="${commodity.cdate }" pattern="yyyy-MM-dd"/> </td>
   <td style="width: 100px;"><a href="javascript:;" value="${commodity.cid }" class="delc">删除</a></td>
   </tr>
   
   </c:forEach>
  
   
   </table>
  
  </c:when>
  <c:otherwise>
  <h1>无商品信息</h1>
  </c:otherwise>
  </c:choose>
   

  

  </div>
 </div>
</div>
      
		 </div>
  </div>
<script type="text/javascript">
$(function() {
	$("#addcbtn").click(function() {
		var intval=/^[0-9]*[1-9][0-9]*$/;
		var floatval=/^[+]{0,1}(\d+)$|^[+]{0,1}(\d+\.\d+)$/;
		var picture=$("#picture").val();
		var type=picture.substring(picture.lastIndexOf('.')+1,picture.length);
		var arr = [ "jpg", "png"];
		if($("#cname").val()==''){
			alert("商品名称不能为空");
			return false;
		}else if(!intval.test($("#stock").val())){
			alert("商品库存不合法");
			return false;
		}else if(!floatval.test($("#price").val())){
			alert("商品单价不合法");
			return false;
		}else if(!floatval.test($("#discount").val())){
			alert("商品折扣不合法");
			return false;
		}else if($("#faddr").val()==''){
			alert("商品地址不能为为空");
			return false;
		}else if(picture==''||$.inArray(type.toLowerCase(),arr)==-1){
			alert("商品图片类型不合法");
			return false;
		}else{
			$("#addcform").submit();
		}
	})
	
	$(function() {
		$(".delc").click(function() {
			var tr=$(this);
			$.post("${path}/delcommodity",{'commodity.cid':$(tr).attr("value")},function(result){
				 if(result>0){
					//删除成功
					$($(tr).parent().parent()).remove();
				}else{
					//删除失败
					alert("删除失败");
				} 
			})
		})
	})
	
	$(function() {
		$(".delu").click(function() {
			var tr=$(this);
			$.post("${path}/deluser",{'user.uid':$(tr).attr("value")},function(result){
				 if(result>0){
					//删除成功
					$($(tr).parent().parent()).remove();
				}else{
					//删除失败
					alert("删除失败");
				} 
			})
		})
	})
})
</script>
</body>
</html>