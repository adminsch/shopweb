<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
 <div class="hot-sale">
        <h1 class="hot-tit">热卖商品</h1>
        <div class="hot-cont">
        <c:forEach items="${requestScope.c }" var="commodity">
          <ul class="hot-list">
            <li>
              <p><a href="${path }/detail?commodity.cid=${commodity.cid}"><img src="../../${commodity.pictureFileName }" width="136" height="112"/></a></p>
              <p class="hot-name"><a href="product/details.html">${commodity.cname }<span>RMB:${commodity.price }</span></a></p>
            </li>
          </ul>
          </c:forEach>
        </div>
      </div>
</body>
</html>