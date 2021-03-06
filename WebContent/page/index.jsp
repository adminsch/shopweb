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
<!--[if IE 8]> 
  <style type="text/css">
    .kinds-det .det-content a {
	  border-right: none;
    }
  </style>
<![endif]-->
</head>

<body bgcolor="#e0d6df">
   <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div id="nav-side">
      <div class="login-container">
        <p class="login-title"><img src="page/img/title-login.gif" alt="会员登入" width="147" height="23" /></p>
        <form>
          <ul class="login-input">
            <li>
              <label>账号：</label>
              <input type="text" />
            </li>
            <li>
              <label>密码：</label>
              <input type="password" />
            </li>
          </ul>
          <p class="f-password"><a href="javascript:;">忘记密码？</a></p>
          <p class="login-btn">
            <a href="javascript:;"><img src="page/img/btn-login.gif" width="61" height="19" alt="登入" /></a>
            <a href="regist.html"><img src="page/img/btn-regist.gif" width="61" height="19" alt="注册" /></a>
          </p>
        </form>
      </div>
      <div class="login-container">
        <dl class="login-suc">
          <dt><img src="page/img/img-photo.jpg" width="62" height="62" alt="头像" /></dt>
          <dd>
            <p class="user-name">BC</p>
            <p>您好！</p>
          </dd>
        </dl>
        <p class="my-fujia"><a href="${path }/record"><img src="page/img/btn-personal.gif" width="89" height="21" alt="我的订单" /></a></p>
      </div>
      <div class="pro-kinds">
        <h1 class="kinds-tit">产品分类</h1>
        <div class="kinds-cont">
          <div class="kinds-det">
            <h2 class="det-tit">新鲜水果</h2>
            <div class="det-content">
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬梨青柠檬</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠...</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬</a>
              <div style="clear: both;"></div>
            </div>
          </div>
          <div class="kinds-det">
            <h2 class="det-tit">有机蔬菜</h2>
            <div class="det-content">
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬梨青柠檬</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠...</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬</a>
              <div style="clear: both;"></div>
            </div>
          </div>
          <div class="kinds-det">
            <h2 class="det-tit">日用百货</h2>
            <div class="det-content">
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬梨青柠檬</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠...</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">猕猴桃</a>
              <a href="product/details.html">苹果</a>
              <a href="product/details.html">梨青柠檬</a>
              <div style="clear: both;"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="hot-sale">
        <h1 class="hot-tit">热卖商品</h1>
        <div class="hot-cont">
          <ul class="hot-list">
            <li>
              <p><a href="product/details.html"><img src="page/img/img-hot01.jpg" width="136" height="112" alt="安岳柠檬" /></a></p>
              <p class="hot-name"><a href="product/details.html">安岳柠檬  <span>RMB:100</span></a></p>
            </li>
            <li>
              <p><a href="product/details.html"><img src="page/img/img-hot01.jpg" width="136" height="112" alt="安岳柠檬" /></a></p>
              <p class="hot-name"><a href="product/details.html">安岳柠檬  <span>RMB:100</span></a></p>
            </li>
            <li>
              <p><a href="product/details.html"><img src="page/img/img-hot01.jpg" width="136" height="112" alt="安岳柠檬" /></a></p>
              <p class="hot-name"><a href="product/details.html">安岳柠檬  <span>RMB:100</span></a></p>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div id="content">
      <div class="banner-cont">
        <ul class="fade-banner" control-fade="banner-control">
          <li><a href="product/product.html"><img src="page/img/bnr-photo01.jpg" width="744" height="303" alt="蒙自石榴" /></a></li>
          <li><a href="product/product.html"><img src="page/img/bnr-photo02.jpg" width="744" height="303" alt="蒙自石榴" /></a></li>
          <li><a href="product/product.html"><img src="page/img/bnr-photo03.jpg" width="744" height="303" alt="蒙自石榴" /></a></li>
          <li><a href="product/product.html"><img src="page/img/bnr-photo04.jpg" width="744" height="303" alt="蒙自石榴" /></a></li>
          <li><a href="product/product.html"><img src="page/img/bnr-photo05.jpg" width="744" height="303" alt="蒙自石榴" /></a></li>
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
        <h1 class="title">促销专区</h1>
        <ul class="promotion-list">
          <li><a href="product/details.html"><img src="page/img/img-promotion01.jpg" alt="樱桃" width="215" height="199" /></a></li>
          <li><a href="product/details.html"><img src="page/img/img-promotion01.jpg" alt="樱桃" width="215" height="199" /></a></li>
          <li><a href="product/details.html"><img src="page/img/img-promotion01.jpg" alt="樱桃" width="215" height="199" /></a></li>
        </ul>
      </div>
      <div class="product-show">
        <h1>
          <span>新鲜水果</span>
          <span class="show-arrow"></span>
          <a href="product/product.html">更多</a>
        </h1>
        <ul class="show-list">
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
        </ul>
      </div>
      <div class="product-show">
        <h1>
          <span>有机蔬菜</span>
          <span class="show-arrow"></span>
          <a href="product/product.html">更多</a>
        </h1>
        <ul class="show-list">
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
        </ul>
      </div>
      <div class="product-show">
        <h1>
          <span>日用百货</span>
          <span class="show-arrow"></span>
          <a href="product/product.html">更多</a>
        </h1>
        <ul class="show-list">
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
          <li>
            <p><a href="product/details.html"><img src="page/img/index/img-products01.jpg" alt="百货" width="136" height="137" /></a></p>
            <p class="show-name">水果</p>
            <p class="show-price"><a href="product/details.html">RMB 100</a></p>
          </li>
        </ul>
      </div>
      <div class="product-show">
        <h1>
          <span>合作伙伴</span>
          <span class="show-arrow"></span>
          <a href="javascript:;"></a>
        </h1>
        <ul class="show-list">
          <li>
            <p><a href="javascript:;"><img src="page/img/index/img-tmall.gif" alt="合作伙伴" width="136" height="137" /></a></p>
          </li>
          <li>
            <p><a href="javascript:;"><img src="page/img/index/img-tmall.gif" alt="合作伙伴" width="136" height="137" /></a></p>
          </li>
          <li>
            <p><a href="javascript:;"><img src="page/img/index/img-tmall.gif" alt="合作伙伴" width="136" height="137" /></a></p>
          </li>
          <li>
            <p><a href="javascript:;"><img src="page/img/index/img-tmall.gif" alt="合作伙伴" width="136" height="137" /></a></p>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!-- <div id="footer">
    <div class="footer-logo">
      
    </div>
    <dl class="company-info">
      <dt>公司信息</dt>
      <dd></dd>
      <dd>Fax. 02-541-7487</dd>
      <dd>mail: www.fujia@163.com</dd>
    </dl>
  </div> -->
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
