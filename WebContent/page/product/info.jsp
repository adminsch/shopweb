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
<c:choose>
    <c:when test="${empty sessionScope.name }">
    <div class="login-container">
        <p class="login-title"><img src="page/img/title-login.gif" alt="会员登入" width="147" height="23" /></p>
        <form action="${path }/loginaction" id="loginform" method="post">
          <ul class="login-input">
            <li>
              <label>账号：</label>
              <input type="text" placeholder="用户名" onfocus="$(this).css('color','#000');" name="user.name" id="name" />
               <input type="hidden" id="msg" value="${fieldErrors.msg }"/>
            </li>
            <li>
              <label>密码：</label>
              <input type="password" placeholder="密码" id="password" name="user.password" />
            </li>
          </ul>
         <!--  <p class="f-password"><a href="javascript:;">忘记密码？</a></p> -->
          <p class="login-btn">
            <a href="javascript:;"><img src="page/img/btn-login.gif" width="61" id="loginbtn" height="19" alt="登入" /></a>
            <a href="${path }/regedit"><img src="page/img/btn-regist.gif" width="61" height="19" alt="注册" /></a>
          </p>
        </form>
      </div>
    </c:when>
    <c:otherwise>
    <div class="login-container" style="height: 130px;">
        <dl class="login-suc">
          <dt><img src="page/img/img-photo.jpg" width="70" height="70" style="margin-left: 30px;" /></dt>
        </dl>
        <p class="my-fujia" style="background-color: #E9773D;">
        	${sessionScope.name }&nbsp;&nbsp;&nbsp;&nbsp;<a href="${path }/exit">退出</a>
        </p>
      </div>
    </c:otherwise>
    </c:choose>
    <script type="text/javascript">
    function reloadcode() {//点击图片换验证图片
    	var verify = document.getElementById('code');
    	verify.setAttribute('src', '${path}/code.jpg?it=' + Math.random());
    }

    $(function() {
    	if($("#msg").val()!=''){
    		alert($("#msg").val().substr(1,8));
    	}
    	$("#loginbtn").click(function() {
    		var regname=/^[a-zA-Z]{1}[0-9a-zA-Z_]{5,}$/
    				if(!regname.test($("#name").val())){
    					alert("用户名不合法");
    					return false;
    				}else if(!regname.test($("#password").val())){
    					alert("密码不合法");
    					return false;
    				}else{
    					$("#loginform").submit();
    				}
    	})
    })
    </script>
</body>
</html>