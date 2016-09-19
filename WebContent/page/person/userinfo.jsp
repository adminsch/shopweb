<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
</head>
<body>
 <div id="nav-side">
      <div class="person-container">
        <div class="person-message">
          <p class="person-photo"><img src="page/img/img-person.jpg" width="87" height="87" alt="张三丰" /></p>
          <p class="person-name">${sessionScope.name }，您好！</p>
         <!--  <p class="person-repair"><a href="data.html">[修改]</a></p> -->
        </div>
        <div class="my-message">
          <p class="my-address">
            <a href="${path }/address">我的地址</a>
          </p>
          <p class="my-intrgral">
            <a href="javascript:void(0);">我的积分：<span>${requestScope.user.integral }</span></a>
          </p>
        <!--   <p class="my-coupon">
            <a href="coupon.html">我的优惠券：<span>4张</span></a>
          </p> -->
          <p class="my-record">
            <a href="${path }/record">购买记录</a>
          </p>
        </div>
      </div>
    </div>
</body>
</html>