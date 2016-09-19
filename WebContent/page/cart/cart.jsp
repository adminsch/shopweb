<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/settlement.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="page/css/modal.css" media="all" />
<link rel="stylesheet" href="page/css/cart.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<script type="text/javascript" src="page/js/modal.js"></script>
<script type="text/javascript">
$(function() {
	$("#jifen").on('input',function(e){  
		if($("#jflabel").text()<$("#jifen").val()){
			$("#jifen").val($("#jflabel").text());
		}
	});
	$(".sub").click(function() {
		var val=$($($(this).next()).children('.numtext')).val();
		if(val<=1){
			return false;
		}
		val--;
		var obj=$(this);
		var oid=$($($($($(this).parent('.count')).prev()).prev()).children('.hidden')).val();
		var price=$($($(this).parent('.count')).prev()).text();
		$.post("${path}/updategw",{'order.oid':oid,'order.cprice':price,'order.cnum':val},function(data){
			$($($(obj).next()).children('.numtext')).val(val);
			$("#total").text(parseFloat($("#total").text())-parseFloat($($($(obj).parent('.count')).prev()).text()));
			
		});
		
	})
	$(".sum").click(function() {
		var val=$($($(this).prev()).children('.numtext')).val();
		var relval=$($($($($($(this).parent('.count')).prev()).prev())).prev()).val();
		if(parseInt(relval)>parseInt(val)){
			val++;
			var obj=$(this);
			var oid=$($($($($(this).parent('.count')).prev()).prev()).children('.hidden')).val();
			var price=$($($(this).parent('.count')).prev()).text();
			$.post("${path}/updategw",{'order.oid':oid,'order.cprice':price,'order.cnum':val},function(data){
				$($($(obj).prev()).children('.numtext')).val(val);
				$("#total").text(parseFloat($($($(obj).parent('.count')).prev()).text())+parseFloat($("#total").text()));
				
			});
		}	
	})
	$("#paybtn").click(function() {
		if($("input[name='address']:checked")==null||$("input[name='address']:checked").val()==undefined){
			alert("请选择收货地址");
			return false;
		}
		$("#attrhidden").val($("input[name='address']:checked").val());
		$("#batchtotalhidden").val($("#total").text());
		if(!confirm("确定完成支付?")){
			return false;
		}else{
			localStorage.removeItem("batchno");
			$("#batchtotalhidden").val($("#total").text());
			$("#form").submit();
		}
	})
	$(".clear").click(function() {
		$.post("${path}/delshop",{'order.batchno':localStorage.getItem("batchno")},function(data){
			localStorage.removeItem("batchno");
			$("#content1").empty();
			$("#content1").html('<h1 style="font-size: 40px;text-align: center;">空空如也，快去购物</h1>');
		})
	})
	   //${totle.batchtotle }
	$("#check").click(function(){
        if($("#check").prop("checked")==true){
        	$("#total").text('<f:formatNumber value="${totle.batchtotle -(totle.user.integral)/10}" pattern="0.00" type="number"></f:formatNumber>');
       		$("#checkhidden").val(1);
        }else{    
        	$("#total").text('${totle.batchtotle}');
        	$("#checkhidden").val(0);
        }
        })
	
	if("${fn:length(orders)}"==0){
		$("#content1").empty();
		$("#content1").html('<h1 style="font-size: 40px;text-align: center;">空空如也，快去购物</h1>');
	}
})
</script>
</head>

<body bgcolor="#e0d6df">
  <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div id="content">
      <div class="cart-message">  
       <div class="receive-container">
          <h1 class="title">收货人</h1>
          <div class="address-container">
          <c:forEach items="${requestScope.addrs }" var="addr">
          	<dl class="address-content">
              <dt><span><input type="radio" name="address" value="${addr.addr }" /></span>${addr.aname }</dt>
              <dd>${addr.addr }, ${addr.aname }<span class="telephone">${addr.phone }</span></dd>
            </dl>
          </c:forEach>
            </div>
            </div>
      
        <h1 class="title">购物车</h1>
        <div id="content1">
        <ul class="cart-nav">
          <li class="checked"><span></span>商品图片</li>
          <li class="name">商品</li>
          <li class="message">商品信息</li>
          <li class="price">单价</li>
          <li class="count">数量</li>
          <li class="operation">操作</li>
        </ul>
        
        <c:forEach items="${orders }" var="order">
        <ul class="shopping-message">
          <li class="checked"><img src="../../${order.commodity.pictureFileName }" width="80" height="80"/></li>
          <li class="name"><a href="${path }/detail?commodity.cid=${order.commodity.cid}">${order.commodity.cname }</a></li>
          <li class="message">${order.commodity.cdesc }</li>
          <input type="hidden" class="stockhidden" value="${order.commodity.stock }"/>
          <li class="hiddenli"><input type="hidden" class="hidden" value="${order.oid }"/> </li>
          <li class="price">${order.cprice }</li>
          <li class="count">
            <span class="sub">-</span>
            <span class="count-number"><input type="text" class="numtext" value="${order.cnum }" /></span>
            <span class="sum">+</span>
          </li>
          <li class="operation"><a href="javascript:;" value="${order.oid}" class="del-operation" data-title="删除">删除</a></li>
        </ul>
        </c:forEach>
      
        <div class="cart-operation">
          <div class="del-clear">
            <span class="clear">清空购物车</span>
          </div>
        <%--   <div class="cart-total">
            <span>总计：${totle.batchtotle } </span>
          </div> --%>
          <div class="cart-total">
            <div class="cart-total">
            <p>
              <span><input type="checkbox" id="check" style="margin-right: 30px;"/>使用积分<span class="use-count"><input type="text" id="jifen" value="${totle.user.integral }" style="width: 50px;" readonly="readonly"/></span>个</span>
            </p>
            <p class="all-integral">(你有<span id="jflabel">${totle.user.integral }</span>个积分)</p>
            </div>
          </div>
        </div>
        <div class="cart-all">
          <span class="cash-total">￥<span id="total">${totle.batchtotle }</span></span>
        </div>
        <form action="${path }/paygw" id="form" method="post">
            <input type="hidden" name="order.batchno" value="${totle.batchno }"/>
            <input type="hidden" id="attrhidden" name="order.saddr" value=""/>
             <input type="hidden" id="checkhidden" name="order.ischeck" value="0"/>
            <input type="hidden" id="batchtotalhidden" name="order.batchtotle" />
        </form>
        <div class="contiue-pay">
          <a href="${path }/index" class="contiue">继续购物</a>
          <a href="javascript:void(0);" id="paybtn" class="pay">支付</a>
        </div>
      </div>
       </div>
       <%@include file="/page/product/recommend.jsp" %>
    </div>
  </div>
 
</body>
</html>
