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
<link rel="stylesheet" href="page/css/discuss.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/common.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<script type="text/javascript" src="page/js/jquery.raty.min.js"></script>
<script type="text/javascript">
$(function() {
	
	$("#pjbtn").click(function() {
		if($("input[name='message.rate']:checked").val()==null||$("input[name='message.rate']:checked ").val()==undefined){
			alert("请选择评价等级");
			return false;
		}else if($("#pjtext").val()==''||$("#pjtext").val()==null){
			alert("请评价");
			return false;
		}else{
			$("#batchhidden").val(GetQueryString("order.batchno"))
			$("#pjform").submit();
		}
	})
})
function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
</script>
</head>

<body bgcolor="#e0d6df">
   <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div id="content">
      <h1 class="title">宝贝评价</h1>
      <div class="discuss-container">
        <div class="discuss-content">
        <dl>
          <dt>
            <p><img src="page/img/pj.jpg" width="130" height="129" alt="" /></p>
           <!--  <p><a href="../product/details.html">蔬菜蔬菜蔬菜蔬菜</a></p> -->
          </dt>
          <dd>
         <form action="${path }/pj" id="pjform" method="post">
            <div class="discuss-class">
              <label for="rate-good">
                 <input id="rate-good" name="message.rate" value="1" type="radio" />
                 <span>好评</span>
              </label>
              <label for="rate-normal">
                 <input id="rate-normal" name="message.rate" value="0" type="radio" />
                 <span>中评</span>
              </label>
              <label for="rate-bad">
                 <input id="rate-bad" name="message.rate" value="-1" type="radio" />
                 <span>差评</span>
              </label>
            </div>
            <div class="discuss-input">
              <textarea onfocus="this.style.color='#333';" name="message.content" id="pjtext" placeholder ="亲，写点评价吧，你的评价会对其他买家有很大帮助"></textarea>
            </div>
            <input type="hidden" name="message.batchno" value="" id="batchhidden"/>
            </form>
          </dd>
        </dl>
        </div>
       <!--  <div class="discuss-content">
        <dl class="discuss-score">
          <dt>
            <p>店铺动态评分</p>
          </dt>
          <dd>
            <p>
            宝贝与描述相符
            <span class="raty"></span></p>
            <p>
            卖家的服务态度
            <span class="raty"></span>
            </p>
            <p>
            卖家的发货速度
            <span class="raty"></span>
            </p>
          </dd>
        </dl>
        </div> -->
      <div class="discuss-insure"><a href="javascript:;" id="pjbtn">发表评论</a></div>
      </div>
     <!--  <div class="discuss-container">
        <div class="discuss-content">
        <dl>
          <dt>
            <p><a href="../product/details.html"><img src="page/img/discuss/img-discuss01.jpg" width="130" height="129" alt="" /></a></p>
            <p><a href="../product/details.html">蔬菜蔬菜蔬菜蔬菜</a></p>
          </dt>
          <dd>
            <div class="discuss-class">
              <label for="rate-good">
                 <input id="rate-good" name="rate" type="radio" />
                 <span>好评</span>
              </label>
              <label for="rate-normal">
                 <input id="rate-normal" name="rate" type="radio" />
                 <span>中评</span>
              </label>
              <label for="rate-bad">
                 <input id="rate-bad" name="rate" type="radio" />
                 <span>差评</span>
              </label>
            </div>
            <div class="discuss-input">
              <textarea onfocus="this.innerHTML='';this.style.color='#333';" onblur="this.innerHTML='';">亲，写点评价吧，你的评价会对其他买家有很大帮助</textarea>
            </div>
          </dd>
        </dl>
        </div>
        <div class="discuss-content">
        <dl class="discuss-score">
          <dt>
            <p>店铺动态评分</p>
          </dt>
          <dd>
            <p>
            宝贝与描述相符
            <span class="raty"></span></p>
            <p>
            卖家的服务态度
            <span class="raty"></span>
            </p>
            <p>
            卖家的发货速度
            <span class="raty"></span>
            </p>
          </dd>
        </dl>
        </div>
      <div class="discuss-insure"><a href="javascript:;">发表评论</a></div>
      </div>
      <div class="discuss-container">
        <div class="discuss-content">
        <dl>
          <dt>
            <p><a href="../product/details.html"><img src="page/img/discuss/img-discuss01.jpg" width="130" height="129" alt="" /></a></p>
            <p><a href="../product/details.html">蔬菜蔬菜蔬菜蔬菜</a></p>
          </dt>
          <dd>
            <div class="discuss-class">
              <label for="rate-good">
                 <input id="rate-good" name="rate" type="radio" />
                 <span>好评</span>
              </label>
              <label for="rate-normal">
                 <input id="rate-normal" name="rate" type="radio" />
                 <span>中评</span>
              </label>
              <label for="rate-bad">
                 <input id="rate-bad" name="rate" type="radio" />
                 <span>差评</span>
              </label>
            </div>
            <div class="discuss-input">
              <textarea onfocus="this.innerHTML='';this.style.color='#333';" onblur="this.innerHTML='';">亲，写点评价吧，你的评价会对其他买家有很大帮助</textarea>
            </div>
          </dd>
        </dl>
        </div>
        <div class="discuss-content">
        <dl class="discuss-score">
          <dt>
            <p>店铺动态评分</p>
          </dt>
          <dd>
            <p>
            宝贝与描述相符
            <span class="raty"></span></p>
            <p>
            卖家的服务态度
            <span class="raty"></span>
            </p>
            <p>
            卖家的发货速度
            <span class="raty"></span>
            </p>
          </dd>
        </dl>
        </div>
      <div class="discuss-insure"><a href="javascript:;">发表评论</a></div>
      </div>
    </div> -->
  </div>
  
</body>
<script>
  $('.raty').raty({
        score: 0 //default stars
    });
  
</script>
</html>
