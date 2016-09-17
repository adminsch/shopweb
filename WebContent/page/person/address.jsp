<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理收货地址</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/address.css" type="text/css" media="all" />
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/common.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
</head>

<body bgcolor="#e0d6df">
  <%@include file="/page/product/nav.jsp" %>
  <div id="container">
    <%@include file="/page/person/userinfo.jsp" %>
    <div id="content">
      <h1 class="title">管理收货地址</h1>
      <div class="new-address">
              <h2 class="add-address">新增收货地址</h2>
              <div class="input-address">
                <form action="${path }/addaddr" id="addaddrform" method="post">
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
            </div>
      <div class="address-list">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="text-align: center;">
        <thead>
          <tr>
    <td width="75">收货人</td>
    <td width="250">地址</td>
    <td width="65">邮编</td>
    <td width="100">手机</td>
    <td width="70">操作</td>
  </tr>
        </thead>
        <tbody>
        <c:forEach items="${addrs }" var="addr">
         <tr>
		   <td>${addr.aname }</td>
		   <td>${addr.addr }</td>
		   <td>${addr.postal }</td>
		   <td>${addr.phone }</td>
		   <td><a href="javascript:;" value="${addr.aid }" class="dela">删除</a></td>
		 </tr>
        </c:forEach>
  </tbody>
</table>
      </div>
    </div>
  </div>
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
	
	
	$(function() {
		$(".dela").click(function() {
			var tr=$(this);
			$.post("${path}/deladdr",{'address.aid':$(tr).attr("value")},function(result){
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
