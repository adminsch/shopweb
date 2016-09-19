<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>结算</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/settlement.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<style rel="stylesheet" type="text/css" >
#paybtn {
  float: right;
  font-size: 18px;
  background-color: #e01920;
  margin-top:-40px;
  padding: 9px 35px;
  color: #fff;
}
</style>
<script type="text/javascript">
$(function() {
	$("#addaddrbtn").click(function() {
		var phone=/^1\d{10}$/;
	    var re= /^[1-9][0-9]{5}$/;
	    if($("#aname").val()==null||$("#aname").val()==''){
	    	alert("姓名不能为空");
			return false;
	    }else if(!phone.test($("#phone").val())){
	    	alert("手机号不合法");
			return false;
	    }else if(!re.test($("#postal").val())){
	    	alert("邮编不合法");
			return false;
	    }else if($("#addr").val()==null||$("#addr").val()==''){
	    	alert("地址不能为空");
			return false;
	    }else{
	    	$("#addaddrform").submit();
	    }
	})
	
	$("#jifen").on('input',function(e){  
		if($("#jflabel").text()<$("#jifen").val()){
			$("#jifen").val($("#jflabel").text());
		}
	});
	$("#paybtn").click(function() {
		if($("input[name='address']:checked")==null||$("input[name='address']:checked").val()==undefined){
			alert("请选择收货地址");
			return false;
		}
		$("#attrhidden").val($("input[name='address']:checked").val());
		$("#batchtotalhidden").val($("#paylabel").text());
		if(!confirm("确定完成支付?")){
			return false;
		}else{
			$("#form").submit();
		}
	})
	
	$("#check").click(function(){
        if($("#check").prop("checked")==true){
        	$("#paylabel").text('<f:formatNumber value="${order.cnum*order.cprice-(order.user.integral)/10}" pattern="0.00" type="number"></f:formatNumber>');
       		$("#checkhidden").val(1);
        }else{
        	$("#paylabel").text('${order.cnum*order.cprice}');
        	$("#checkhidden").val(0);
        }
        })
})
</script>
</head>

<body bgcolor="#e0d6df">
   <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div id="content">    
      <div class="settlement-message">
        <h1 class="title">购买商品</h1>
        <div class="receive-container">
          <h2>收货人</h2>     
          <div class="address-container">
          <c:forEach items="${requestScope.addrs }" var="addr">
          	<dl class="address-content">
              <dt><span><input type="radio" name="address" value="${addr.addr }" /></span>${addr.aname }</dt>
              <dd>${addr.addr }, ${addr.aname }<span class="telephone">${addr.phone }</span></dd>
            </dl>
          </c:forEach>
            
           
            <div class="new-address">
              <p class="add-address">+使用新地址</p>
              <div class="input-address" style="display:;">
                 <form action="${path }/addaddrnosingle" id="addaddrform" method="post">
                  <ul>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>收货人：</dt>
                        <dd><input type="text" name="address.aname" id="aname"/></dd>
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>手机号码：</dt>
                        <dd><input type="text" name="address.phone" id="phone" /></dd>
                        <!-- <dt>固定电话：</dt>
                        <dd><input type="text" class="area-code" />-<input type="text" /><span class="prompt">两者至少填写一项</span></dd> -->
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require"></span>邮编：</dt>
                        <dd><input type="text" name="address.postal" id="postal"/></dd>
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>地址：</dt>
                         <dd>
                         <!-- <select name="province" class="choice">
                             <option value="210000">辽宁</option>
                          </select>
                          <select name="city" class="choice">
                            <option value="210200">大连市</option>
                          </select>
                          <select name="area" class="choice">
                            <option value="开发区">开发区</option>
                            <option value="甘井子区">甘井子区</option>
                            <option value="旅顺口区">旅顺口区</option>
                            <option value="沙河口区">沙河口区</option>
                            <option value="西岗区">西岗区</option>
                            <option value="中山区">中山区</option>
                          </select> -->
                          <input type="text" name="address.addr" id="addr" class="address-text"/>
                        </dd>
                      </dl>
                    </li>
                  </ul>
                  <p class="submit-address"><a href="javascript:;"><img src="page/img/cart/btn-save.gif" id="addaddrbtn" width="64" height="22" alt="保存" /></a></p>
                </form>
              </div>
              <script>
			    $(".add-address").click(function(){
				  $(".input-address").toggle();
				})
              </script>
            </div>
          </div>
        </div>
        <div class="confirm-form">
          <h2>确认订单信息</h2>
          <ul class="confirm-nav">
            <li class="name">商品</li>
            <li class="price">单价</li>
            <li class="count">数量</li>
            <li class="total">小计</li>
          </ul>
        <ul class="confirm-content">
             <li class="name" style="text-align: center;"><a href="${path }/detail?commodity.cid=${order.commodity.cid}"><img src="../../${order.commodity.pictureFileName }" width="80" height="80" /><span>${order.cname }</span></a></li>
            <li class="price" style="margin-top: 30px;">${order.cprice }</li>
            <li class="count" style="margin-top: 30px;">${order.cnum }</li>
            <li class="total" style="margin-top: 30px;">${order.cnum*order.cprice}</li>
          </ul> 
        
          <p class="form-price">
            <span>${order.cnum }件商品</span>
            <span>总计：${order.cnum*order.cprice}</span>
          </p>
          <div class="use-integral">
            <div class="use-inner">
            <p>
              <span><input type="checkbox" id="check" style="margin-right: 30px;"/>使用积分<span class="use-count"><input type="text" id="jifen" value="${order.user.integral }" readonly="readonly"/></span>个</span>
              
            </p>
            <p class="all-integral">(你有<span id="jflabel">${order.user.integral }</span>个积分)</p>
            </div>
          </div>
          <p class="need-pay">
            实付：<span id="paylabel">${order.cnum*order.cprice}</span>
          </p>
          <p class="cart-pay">
            <a href="${path }/cart" class="re-cart">返回购物车</a>
            <form action="${path }/pay" id="form" method="post">
            <input type="hidden" name="order.oid" value="${order.oid }"/>
            <input type="hidden" name="order.batchno" value="${order.batchno }"/>
            <input type="hidden" id="checkhidden" name="order.ischeck" value="0"/>
            <input type="hidden" id="batchtotalhidden" name="order.batchtotle" value=""/>
            <input type="hidden" id="attrhidden" name="order.saddr" value=""/>
            </form>
            <a href="javascript:void(0);" id="paybtn" class="go-pay">支付</a><!-- ${path }/pay -->
          </p>
        </div>
      </div>
       <%@include file="/page/product/recommend.jsp" %>
    </div>
  </div>
  
</body>
</html>
