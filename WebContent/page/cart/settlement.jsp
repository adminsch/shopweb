<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>结算</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/settlement.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
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
            <dl class="address-content">
              <dt><span><input type="radio" name="address" /></span>李磊</dt>
              <dd>辽宁省大连市西岗区 新开路68号 中投大厦17楼 116000, 李磊<span class="telephone">18000000000</span></dd>
            </dl>
            <dl class="address-content">
              <dt><span><input type="radio" name="address" /></span>李磊</dt>
              <dd>辽宁省大连市西岗区 新开路68号 中投大厦17楼 116000, 李磊<span class="telephone">18000000000</span></dd>
            </dl>
            <div class="new-address">
              <p class="add-address">+使用新地址</p>
              <div class="input-address" style="display:;">
                <form>
                  <ul>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>收货人：</dt>
                        <dd><input type="text" /></dd>
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>手机号码：</dt>
                        <dd><input type="text" /></dd>
                        <dt>固定电话：</dt>
                        <dd><input type="text" class="area-code" />-<input type="text" /><span class="prompt">两者至少填写一项</span></dd>
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require"></span>邮编：</dt>
                        <dd><input type="text" /></dd>
                      </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><span class="require">*</span>地址：</dt>
                        <dd>
                          <select name="province" class="choice">
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
                          </select>
                          <input type="text" class="address-text" value="新开路68号 中投大厦17层" />
                        </dd>
                      </dl>
                    </li>
                  </ul>
                  <p class="submit-address"><a href="javascript:;"><img src="page/img/cart/btn-save.gif" width="64" height="22" alt="保存" /></a></p>
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
            <li class="name"><a href="page/product/details.html"><img src="page/img/cart/img-confirm01.jpg" width="80" height="80" alt="蚕豆" /><span>【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g</span></a></li>
            <li class="price">199.00</li>
            <li class="count">1</li>
            <li class="total">199.00</li>
          </ul>
          <ul class="confirm-content">
            <li class="name"><a href="page/product/details.html"><img src="page/img/cart/img-confirm01.jpg" width="80" height="80" alt="蚕豆" /><span>【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g</span></a></li>
            <li class="price">199.00</li>
            <li class="count">1</li>
            <li class="total">199.00</li>
          </ul>
          <p class="form-price">
            <span>2件商品</span>
            <span>总计：￥398.00</span>
          </p>
          <div class="use-integral">
            <div class="use-inner">
            <p>
              <span><span class="checkbox"><input type="checkbox" /></span>使用芙佳积分<span class="use-count"><input type="text" value="150" /></span>个</span>
              <span class="discount">优惠：<span>￥1.50</span></span>
            </p>
            <p class="all-integral">(你有150个积分，可用积分150个)</p>
            </div>
          </div>
          <p class="need-pay">
            实付：<span>￥396.50</span>
          </p>
          <p class="cart-pay">
            <a href="cart.html" class="re-cart">返回购物车</a>
            <a href="pay.html" class="go-pay">去支付</a>
          </p>
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
 <!--  <div id="footer">
    <div class="footer-logo">
      芙佳
    </div>
    <dl class="company-info">
      <dt>公司信息</dt>
      <dd>TEL. 02-3446-8622</dd>
      <dd>Fax. 02-541-7487</dd>
      <dd>mail: www.fujia@163.com</dd>
    </dl>
  </div> -->
</body>
</html>
