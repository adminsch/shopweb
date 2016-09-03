<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="page/css/modal.css" media="all" />
<link rel="stylesheet" href="page/css/cart.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<script type="text/javascript" src="page/js/modal.js"></script>
</head>

<body bgcolor="#e0d6df">
  <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <div id="content">
      <div class="cart-message">
        <h1 class="title">购物车</h1>
        <ul class="cart-nav">
          <li class="checked"><span><input type="checkbox" /></span>全选</li>
          <li class="name">商品</li>
          <li class="message">商品信息</li>
          <li class="price">单价</li>
          <li class="count">数量</li>
          <li class="operation">操作</li>
        </ul>
        <ul class="shopping-message">
          <li class="checked"><span><input type="checkbox" /></span><img src="page/img/cart/img-cart01.jpg" width="80" height="80" alt="蚕豆" /></li>
          <li class="name"><a href="page/product/details.html">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g</a></li>
          <li class="message">休闲坚果零食炒货小吃豆制品蚕豆205g</li>
          <li class="price">199.00</li>
          <li class="count">
            <span>-</span>
            <span class="count-number"><input type="text" value="1" /></span>
            <span>+</span>
          </li>
          <li class="operation"><a href="javascript:;" class="del-operation" data-title="删除">删除</a></li>
          <script>
    $(".del-operation").createModal({
        background: "#000",//设定弹窗之后的覆盖层的颜色
        width: "600px",//设定弹窗的宽度
        height: "146px",//设定弹窗的高度
        resizable: true,//设定弹窗是否可以拖动改变大小
		move: false,//规定弹窗是否可以拖动
        bgClose: false,//规定点击背景是否可以关闭
		html: "<div class='modal-promot-mess'>确认要删除该产品吗？</div>" +
                "<p class='insure-btn-con'><span class='sure-btn'>确定</span><span class='cancel-btn modal-close'>取消</span></p>",
        addFunction: function(){
            $(".modal-promot-mess").click(function(){alert("addFunction");})
        }
	},function(){
        $(".insure-btn-con").click(function(){alert("callback")});
	});
	/*$(".insure-btn-con").delegate(".sure-btn","click",function(){
    alert("fdsafs");
    var data={};
    data.ids=new Array();
    $(".removeRow").each(function(){
        ids.push($(this).parents(".shopping-message").find("input[type='checkbox']").attr("id"));
    });
    data.siteId=$("#siteId").attr("siteId");
    data._method="delete";
    if(data.ids&&data.ids.length>0){
        removeGoods(data);
    }
});*/
		</script>
        </ul>
        <ul class="shopping-message">
          <li class="checked"><span><input type="checkbox" /></span><img src="page/img/cart/img-cart01.jpg" width="80" height="80" alt="蚕豆" /></li>
          <li class="name"><a href="page/product/details.html">【三只松鼠_蟹黄蚕豆】休闲坚果零食炒货小吃豆制品蚕豆205g</a></li>
          <li class="message">休闲坚果零食炒货小吃豆制品蚕豆205g</li>
          <li class="price">199.00</li>
          <li class="count">
            <span>-</span>
            <span class="count-number"><input type="text" value="1" /></span>
            <span>+</span>
          </li>
          <li class="operation"><a href="javascript:;">删除</a></li>
        </ul>
        <div class="cart-operation">
          <div class="del-clear">
            <span class="delete">删除选中的商品</span>
            <span class="clear">清空购物车</span>
          </div>
          <div class="cart-total">
            <span><span>2</span>件商品</span>
            <span>总计：￥398.00</span>
          </div>
        </div>
        <div class="cart-all">
          <span>总计（不含运费）：</span>
          <span class="cash-total">￥398.00</span>
        </div>
        <div class="contiue-pay">
          <a href="page/product/product.html" class="contiue">继续购物</a>
          <a href="settlement.html" class="pay">结 算</a>
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
