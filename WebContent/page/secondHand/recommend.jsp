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
<div class="recommend">
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
    </div>
</body>
</html>