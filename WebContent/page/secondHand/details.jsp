<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>产品信息</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/product.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<!----------商品图片放大---------->
<link rel="stylesheet" type="text/css" href="page/product/css/lrtk.css">
<script src="page/product/js/MagicZoom.js" type="text/javascript"></script>
<!----------商品图片放大---------->
<script type="text/javascript">
$(function() {
	$("#togw").click(function() {
		location.href='${path}/cart?order.batchno='+localStorage.getItem("batchno");
	})
})
</script>
</head>
<body bgcolor="#e0d6df">
 <%@include file="/page/product/nav.jsp" %>
<div id="container">
  <div id="nav-side">
      <%@include file="/page/product/info.jsp" %>
      <%@include file="/page/product/hot.jsp" %>
    </div>
  <div id="content">
    <div class="pro-detail">
      <div class="pro-img">
      <div id="tsShopContainer">
                    <div id="tsImgS">
                        <a href="../../${commodity.pictureFileName }" title="Images" class="MagicZoom" id="MagicZoom"><img  src="../../${commodity.pictureFileName }" style="width: 300px;height: 300px;" /></a>
                    </div>
                    <div id="tsPicContainer">
                        <div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
                        <div id="tsImgSCon">
                            <ul>
                                <li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img height="42" width="42" src="../../${commodity.pictureFileName }" tsImgS="../../${commodity.pictureFileName }" /></li>
                               <!--  <li onclick="showPic(1)" rel="MagicZoom"><img height="42" width="42" src="page/img/02.png" tsImgS="page/img/02.png" /></li>
                                <li onclick="showPic(2)" rel="MagicZoom"><img height="42" width="42" src="page/img/03.jpg" tsImgS="page/img/03.jpg" /></li>
                                <li onclick="showPic(3)" rel="MagicZoom"><img height="42" width="42" src="page/img/04.jpg" tsImgS="page/img/04.jpg" /></li> -->
                            </ul>
                        </div>
                        <div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
                    </div>
                    <img class="MagicZoomLoading" width="16" height="16" src="../../${commodity.pictureFileName }" alt="Loading..." />
                </div>
                <script src="page/product/js/ShopShow.js"></script>
        <!--<p class="img-container"><img src="page/img/detail/img-detail01.jpg" width="301" height="287" alt="苹果" /></p>
        <ul class="tab-pro-img">
          <li><img src="page/img/detail/img-detail01.jpg" alt="苹果" width="100%" /></li>
          <li><img src="page/img/detail/img-detail02.jpg" alt="苹果" width="100%" /></li>
          <li><img src="page/img/detail/img-detail01.jpg" alt="苹果" width="100%" /></li>
          <li><img src="page/img/detail/img-detail02.jpg" alt="苹果" width="100%" /></li>
        </ul>-->
      </div>
      <!--<script>
	    $(".tab-pro-img li img").click(function(){
		  var getSrc = $(this).attr("src");
	      $(".img-container img").attr("src" , getSrc);
		})
      </script>-->
      <div class="text-container">
        <h1>${commodity.cname }</h1>
        <p class="pro-text">实惠看的见，方便你来选</p>
        <div class="pro-price">
          <dl>
            <dt>促销价</dt>
            <dd class="low-price"><f:formatNumber value="${commodity.price*commodity.discount }" type="currency"></f:formatNumber></dd>
          </dl>
          <dl>
            <dt>原价</dt>
            <dd>￥<span>${commodity.price }</span></dd>
          </dl>
        </div>
       <!--  <dl class="freight">
          <dt>运费</dt>
          <dd> <span>大连</span> 至 
          <div class="fre-target">
            <a href="javascript:;">大连市开发区</a>
            <ul style="display: none;">
              <li>大连市甘井子区</li>
              <li>大连市开发区</li>
              <li>大连市旅顺口区</li>
              <li>大连市沙河口区</li>
              <li>大连市西岗区</li>
              <li>大连市中山区</li>
            </ul>
          </div> 
          <span>快递：13.00</span> </dd>
        </dl> -->
        <script>
		  $(".fre-target").click(function(){
			$(this).find("ul").toggle();
			$(this).find("li").click(function(){
			  $(".fre-target > a").text($(this).text());
			});
		  })
        </script>
        <ul class="count-total">
        <li>月销量<span>${commodity.record }</span></li>
          <li>剩余<span>
           <c:if test="${commodity.stock >0}">
        ${commodity.stock }
        </c:if>
         <c:if test="${commodity.stock <=0}">
        0
        </c:if>
          
          </span></li>
          <li>送积分<span> <f:formatNumber value="${commodity.price }" pattern="0" type="number"></f:formatNumber> </span></li>
        </ul>
        <dl class="pro-stock">
          <dt>数量</dt>
          <dd>
            <input class="pro-number" type="text" id="cnum" value="1" />
            <span class="cho-number"> <span class="pro-add"><img src="page/img/detail/ico-add-number.gif" width="19" height="13" alt="" /></span> <span class="pro-red"><img src="page/img/detail/ico-red-number.gif" width="19" height="13" alt="" /></span> </span> 件 
             <a href="javascript:;" id="togw" style="margin-left: 100px;">进入购物车</a> 
            </dd>
        	
        </dl>
        <script>
		    $(document).ready(function(){
			  $(".pro-add").click(function(){
				  var getVal = parseInt($(this).parent().prev().val());
				  if('${commodity.stock }'>getVal){
					  $(this).parent().prev().val(getVal + 1);
				  }
			  });
			  $(".pro-red").click(function(){
				var getVal = $(this).parent().prev().val();
				if(getVal > 1){
			      $(this).parent().prev().val(getVal - 1);
				}
			  });
			})
          </script>
        <div class="buy-cart">
        <form action="${path }/addorder" id="orderform" method="post">
        <input type="hidden" name="order.commodity.cid" value="${commodity.cid }"/>
        <input type="hidden" name="order.cname" value="${commodity.cname }"/>
        <input type="hidden" name="order.cprice" value='<f:formatNumber value="${commodity.price*commodity.discount }" pattern="0.00"  type="number"/>'/>
        <input type="hidden" id="cnumhidden" name="order.cnum" value=""/>
        <input type="hidden" name="order.faddr" value="${commodity.faddr }"/>
        </form>
		<c:if test="${commodity.stock>0}">
          <a class="buy" id="buy" href="javascript:;">立刻购买</a>
          <a class="cart" href="javascript:;">加入购物车</a> 
         </c:if>
        </div>
        <script>
		  $(document).ready(function(){
			$(".cart").click(function(){
				$.post("${path}/addgw",{'order.commodity.cid':'${commodity.cid }',
					'order.cname':'${commodity.cname }','order.cprice':'<f:formatNumber value="${commodity.price*commodity.discount }" pattern="0.00"  type="number"/>',
					'order.cnum':$("#cnum").val(),'order.batchno':localStorage.getItem("batchno"),'order.faddr':'${commodity.faddr }'},function(data){
						if(data!=null&&data!=''){
							localStorage.setItem("batchno",data);
							alert("添加完成");
						}
						
				})
			  
			})
			$("#buy").click(function() {
				$("#cnumhidden").val($("#cnum").val());
				$("#orderform").submit();
			})
		  })
        </script>
      </div>
      <div style="clear: both;"></div>
    </div>
    <div class="goods-evaluation">
      <h1><a href=".goods-details" class="tab-detail active">商品详情</a><a href=".total-evaluation" class="tab-evaluation">累计评价</a></h1>
      <script>
	      $(".goods-evaluation h1 a").click(function(){
		    $(this).addClass("active").siblings().removeClass("active");
			$(this).parent().siblings().css("display","none");
			var getTarget = $(this).attr("href");
			$(getTarget).css("display","block");
			return false;
	   	  })
        </script>
      <div class="goods-details">
      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${commodity.cdesc }<hr/>
       
        <p class="goods-img"><img src="../../${commodity.pictureFileName }" width="760" height="465" alt="苹果" /></p>
        
      </div>
      <div class="total-evaluation">
      <c:forEach items="${requestScope.messages }" var="message">
      	<ul>
          <li>
            <p class="eval-content">${message.content }</p>
            <p class="eval-time">${message.mdate }</p>
            <p class="eval-people">${message.user.name }</p>
          </li>
        </ul>
      </c:forEach>
      </div>
    </div>
     <%@include file="/page/product/recommend.jsp" %>
    <%-- <div class="recommend">
      <h1 class="title">掌柜推荐</h1>
      <div class="rec-slider">
      <ul>
      <c:forEach var="commodity" items="${requestScope.c }">
      <li>
          <p class="recom-img"><a href="${path }/detail?commodity.cid=${commodity.cid}"><img src="../../${commodity.pictureFileName }" alt="${commodity.cname }" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="${path }/detail?commodity.cid=${commodity.cid}">${commodity.cname }</a></p>
          <p class="recom-price">￥${commodity.price }</p>
      </li>
      </c:forEach>
      </ul>
      </div>
      <p class="recommend-tab">
        <span class="recommend-prev">&lt;</span>
        <span class="recommend-next">&gt;</span>
      </p>
    </div> --%>
  </div>
</div>

</body>
</html>
