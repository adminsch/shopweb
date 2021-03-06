<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>产品信息</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/product.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>

<!----------商品图片放大---------->
<link rel="stylesheet" type="text/css" href="page/product/css/lrtk.css">
<script src="page/product/js/MagicZoom.js" type="text/javascript"></script>
<!----------商品图片放大---------->

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
            <a href="page/regist.html"><img src="page/img/btn-regist.gif" width="61" height="19" alt="注册" /></a>
          </p>
        </form>
      </div>
      <div class="login-container">
        <dl class="login-suc">
          <dt><img src="page/img/img-photo.jpg" width="62" height="62" alt="头像" /></dt>
          <dd>
            <p class="user-name">张三丰</p>
            <p>您好！</p>
          </dd>
        </dl>
        <p class="my-fujia"><a href="page/person/record.html"><img src="page/img/btn-personal.gif" width="89" height="21" alt="我的芙佳" /></a></p>
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
              <p><a href="page/product/details.html"><img src="page/img/img-hot01.jpg" width="136" height="112" alt="安岳柠檬" /></a></p>
              <p class="hot-name"><a href="page/product/details.html">安岳柠檬  <span>RMB:100</span></a></p>
            </li>
            <li>
              <p><a href="page/product/details.html"><img src="page/img/img-hot01.jpg" width="136" height="112" alt="安岳柠檬" /></a></p>
              <p class="hot-name"><a href="page/product/details.html">安岳柠檬  <span>RMB:100</span></a></p>
            </li>
            <li>
              <p><a href="page/product/details.html"><img src="page/img/img-hot01.jpg" width="136" height="112" alt="安岳柠檬" /></a></p>
              <p class="hot-name"><a href="page/product/details.html">安岳柠檬  <span>RMB:100</span></a></p>
            </li>
          </ul>
        </div>
      </div>
    </div>
  <div id="content">
    <div class="pro-detail">
      <div class="pro-img">
      <div id="tsShopContainer">
                    <div id="tsImgS">
                        <a href="page/img/01.jpg" title="Images" class="MagicZoom" id="MagicZoom"><img width="300" height="300" src="page/img/01.jpg" /></a>
                    </div>
                    <div id="tsPicContainer">
                        <div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
                        <div id="tsImgSCon">
                            <ul>
                                <li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img height="42" width="42" src="page/img/01.jpg" tsImgS="page/img/01.jpg" /></li>
                                <li onclick="showPic(1)" rel="MagicZoom"><img height="42" width="42" src="page/img/02.png" tsImgS="page/img/02.png" /></li>
                                <li onclick="showPic(2)" rel="MagicZoom"><img height="42" width="42" src="page/img/03.jpg" tsImgS="page/img/03.jpg" /></li>
                                <li onclick="showPic(3)" rel="MagicZoom"><img height="42" width="42" src="page/img/04.jpg" tsImgS="page/img/04.jpg" /></li>
                                <li onclick="showPic(4)" rel="MagicZoom"><img height="42" width="42" src="page/img/05.jpg" tsImgS="page/img/05.jpg" /></li>
                                <li onclick="showPic(5)" rel="MagicZoom"><img height="42" width="42" src="page/img/06.jpg" tsImgS="page/img/06.jpg" /></li>
                                <li onclick="showPic(6)" rel="MagicZoom"><img height="42" width="42" src="page/img/07.jpg" tsImgS="page/img/07.jpg" /></li>
                                <li onclick="showPic(7)" rel="MagicZoom"><img height="42" width="42" src="page/img/08.jpg" tsImgS="page/img/08.jpg" /></li>
                                <li onclick="showPic(8)" rel="MagicZoom"><img height="42" width="42" src="page/img/09.jpg" tsImgS="page/img/09.jpg" /></li>
                                <li onclick="showPic(9)" rel="MagicZoom"><img height="42" width="42" src="page/img/10.gif" tsImgS="page/img/10.gif" /></li>
                                <li onclick="showPic(10)" rel="MagicZoom"><img height="42" width="42" src="page/img/11.gif" tsImgS="page/img/11.gif" /></li>
                                <li onclick="showPic(10)" rel="MagicZoom"><img height="42" width="42" src="page/img/11.gif" tsImgS="page/img/11.gif" /></li>
                                <li onclick="showPic(10)" rel="MagicZoom"><img height="42" width="42" src="page/img/11.gif" tsImgS="page/img/11.gif" /></li>
                            </ul>
                        </div>
                        <div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
                    </div>
                    <img class="MagicZoomLoading" width="16" height="16" src="page/img/loading.gif" alt="Loading..." />
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
        <h1>绿色生态水晶红富士苹果（10斤）</h1>
        <p class="pro-text">生态水晶富士苹果，采摘于海拔1000米高原，生态苹果不催红，不打蜡。接受到更多的太阳光，所以苹果口感脆甜，味浓汁多！</p>
        <div class="pro-price">
          <dl>
            <dt>促销价</dt>
            <dd class="low-price">￥65.80</dd>
          </dl>
          <dl>
            <dt>原价</dt>
            <dd>￥<del>169.00</del><span>16.90元/500g</span></dd>
          </dl>
        </div>
        <dl class="freight">
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
        </dl>
        <script>
		  $(".fre-target").click(function(){
			$(this).find("ul").toggle();
			$(this).find("li").click(function(){
			  $(".fre-target > a").text($(this).text());
			});
		  })
        </script>
        <ul class="count-total">
          <li>月销量<span>2413</span></li>
          <li>累计评价<span>2413</span></li>
          <li>送芙佳积分<span>32</span></li>
        </ul>
        <dl class="pro-stock">
          <dt>数量</dt>
          <dd>
            <input class="pro-number" type="text" value="1" />
            <span class="cho-number"> <span class="pro-add"><img src="page/img/detail/ico-add-number.gif" width="19" height="13" alt="" /></span> <span class="pro-red"><img src="page/img/detail/ico-red-number.gif" width="19" height="13" alt="" /></span> </span> 件 <span class="stock-total">库存1218件</span> </dd>
        </dl>
        <script>
		    $(document).ready(function(){
			  $(".pro-add").click(function(){
				var getVal = parseInt($(this).parent().prev().val());
				$(this).parent().prev().val(getVal + 1);
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
          <a class="buy" href="page/cart/settlement.html">立刻购买</a>
          <a class="cart" href="javascript:;">加入购物车</a> 
        </div>
        <script>
		  $(document).ready(function(){
			$(".cart").click(function(){
			  if($(".pro-simu-cart").length == 0){
				$(this).parent().before("<div class='pro-simu-cart'><span class='close-simu-cart'>X</span><p class='add-cart-success'>加入购物车成功!!</p><p class='add-cart-faild'>加入购物车失败!!</p><p class='operation-cart'><span class='continue-buy'>继续购物</span><a class='go-settlement' href='page/cart/settlement.html'>去结算</a></p></div>")
			    $(".close-simu-cart").click(function(){
			      $(this).parent().remove();
			    });
			    $(".continue-buy").click(function(){
			      $(this).parent().parent().remove();
			    });
			  }
			})
		  })
        </script>
      </div>
      <div style="clear: both;"></div>
    </div>
    <div class="goods-evaluation">
      <h1><a href=".goods-details" class="tab-detail active">商品详情</a><a href=".total-evaluation" class="tab-evaluation">累计评价2413</a></h1>
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
        <ul class="goods-para">
          <li title="生产许可证编号：330118010649">生产许可证编号：330118010649</li>
          <li title="配料表：纯天然绿色洛川红富士纯天然绿色洛川红富士纯天然绿色洛川红富士纯天然绿色洛川红富士">配料表：纯天然绿色洛川红富士纯天然绿色洛川红富士纯天然绿色洛川红富士纯天然绿色洛川红富士</li>
          <li title="储藏方法：冷藏">储藏方法：冷藏</li>
          <li title="保质期：30 天">保质期：30 天</li>
          <li title="食品添加剂：无">食品添加剂：无</li>
          <li title="包装方式: 包装">包装方式: 包装</li>
          <li title="重量(g): 5000">重量(g): 5000</li>
          <li title="热卖时间: 1月 2月 3月 4月 4月 4月 4月 4月 4月 ">热卖时间: 1月 2月 3月 4月 4月 4月 4月 4月 4月 </li>
          <li title="产地: 中国大陆">产地: 中国大陆</li>
          <li title="含量: 5kg及以上">含量: 5kg及以上</li>
          <li title="价格: 51-100元">价格: 51-100元</li>
          <li title="种类: 红富士">种类: 红富士</li>
        </ul>
        <p class="goods-img"><img src="page/img/detail/img-goods01.jpg" width="760" height="465" alt="苹果" /></p>
        <p class="goods-text">灵宝是亚洲最佳苹果适生区和西北黄土高原优势苹果产业带的发源地，连续3年居全国苹果产业品
          牌价值县级市第一位。灵宝苹果色泽鲜艳，清甜爽口，营养丰富，耐贮耐运，是通过国家质检总局“原
          产地标记注册”专家组审核认证的地方特产。</p>
        <p class="goods-img"><img src="page/img/detail/img-goods01.jpg" width="760" height="465" alt="苹果" /></p>
      </div>
      <div class="total-evaluation">
        <ul>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
          <li>
            <p class="eval-content">帮同事买的，非常好，包装也很好</p>
            <p class="eval-time">今天</p>
            <p class="eval-people">金***s</p>
          </li>
        </ul>
        <div class="page-list">
          <p> <span>&lt;上一页</span> <span class="page-active">1</span> <span>2</span> <span>3</span> <span>4</span> <span>5</span> <span>6</span> <span>7</span> <span>下一页&gt;</span> </p>
        </div>
      </div>
    </div>
    <div class="recommend">
      <h1 class="title">掌柜推荐</h1>
      <div class="rec-slider">
      <ul>
      <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span> </a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
        <li>
          <p class="recom-img"><a href="page/product/details.html"><img src="page/img/ico-recommend01.jpg" alt="猕猴桃" width="163" height="153" /> <span></span></a> </p>
          <p class="recom-name"><a href="page/product/details.html">猕猴桃（新品上市）</a></p>
          <p class="recom-price">￥5.60/斤</p>
        </li>
      </ul>
      </div>
      <p class="recommend-tab">
        <span class="recommend-prev">&lt;</span>
        <span class="recommend-next">&gt;</span>
      </p>
    </div>
  </div>
</div>
<!-- <div id="footer">
  <div class="footer-logo"> 芙佳 </div>
  <dl class="company-info">
    <dt>公司信息</dt>
    <dd>TEL. 02-3446-8622</dd>
    <dd>Fax. 02-541-7487</dd>
    <dd>mail: www.fujia@163.com</dd>
  </dl>
</div> -->
</body>
</html>
