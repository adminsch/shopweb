<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人资料</title>
<link rel="stylesheet" href="page/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" href="page/css/data.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="page/css/datepicker.css"/>
<script type="text/javascript" src="page/js/jquery.js"></script>
<script type="text/javascript" src="page/js/common.js"></script>
<script type="text/javascript" src="page/js/slider.js"></script>
<script type="text/javascript" src="page/js/bootstrap-datepicker.js"></script>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
</head>

<body bgcolor="#e0d6df">
   <%@include file="/page/product/nav.jsp" %>
  <div id="container">
  <%@include file="/page/person/userinfo.jsp" %>
    <div id="content">
      <h1 class="title">个人资料</h1>
      <div class="data-real">
        <h2>亲爱的${requestScope.user.name }，填写真实的资料，有助于好友找到你哦。</h2>
        <div style="margin-left:100px; ">
        <form action="${path }/editu" id="editform" method="post">
          <ul class="data-input">
           <!--  <li>
              <dl class="photo">
                <dt>当前头像：</dt>
                <dd><img src="page/img/data/img-data01.jpg" width="80" height="80" alt="头像" /></dd>
              </dl>
            </li> -->
            <li>
              <dl>
                <dt>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</dt>
                <dd><input type="text" name="user.name" value="${requestScope.user.name }" readonly="readonly" />
                <input  type="hidden" name="user.uid" value="${requestScope.user.uid }"/>
                <input type="hidden" id="msg" value="${fieldErrors.msg}"/>
                </dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>真实姓名：</dt>
                <dd><input type="text" id="relname" name="user.relname" value="${requestScope.user.relname }"/></dd>
              </dl>
            </li>
             <li>
              <dl>
                <dt>手&nbsp;&nbsp;机&nbsp;&nbsp;号：</dt>
                <dd><input type="text" id="phone" name="user.phone" value="${requestScope.user.phone }"/></dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</dt>
                <dd><input type="text" id="password" placeholder="密码不写则不修改密码" name="user.password" onfocus="$(this).attr('type','password').css('color','#000').css('width','145px').css('height','23px');"/></dd>
              </dl>
            </li>
             <li>
              <dl>
                <dt>确认密码：</dt>
                <dd><input type="text" id="password1" placeholder="密码不写则不修改密码" name="password1" onfocus="$(this).attr('type','password').css('color','#000').css('width','145px').css('height','23px');"/></dd>
              </dl>
            </li>
            
           <!--  <li>
              <dl>
                <dt>生日：</dt>
                <dd>
                  <div class="date date-picker" data-date-format="dd/mm/yyyy">
  <input type="text" class="btn" />
</div><script>
        jQuery(document).ready(function() {   
        $('.date-picker').datepicker({
            autoclose: true//值为true时，选择日期之后，选择日期的面板会自动隐藏
        });
        });
    </script>
                </dd>
              </dl>
            </li> -->
           <!--  <li>
              <dl>
                <dt>居住地：</dt>
                <dd>
                  <select>
                    
                  </select>
                  <select></select>
                  <select></select>
                </dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>家乡：</dt>
                <dd>
                  <select></select>
                  <select></select>
                  <select></select>
                </dd>
              </dl>
            </li> -->
            <li>
              <dl>
                <dt> </dt>
                <dd><img src="page/img/data/btn-save.gif" style="margin-left: -70px;" id="editbtn" width="223" height="30" alt="保存" /></dd>
              </dl>
            </li>
          </ul>
        </form>
         </div>
      </div>
       <%@include file="/page/product/recommend.jsp" %>
    </div>
  </div>
  <s:debug></s:debug> 
<script type="text/javascript">
$(function() {
	if($("#msg").val()!=''&&$("#msg").val()!=null){
		alert($("#msg").val().substring(1,5));
		$("#msg").val('');
	}
	var regname=/^[a-zA-Z]{1}[0-9a-zA-Z_]{5,}$/
	$("#editbtn").click(function() {
		var phone=/^1\d{10}$/;
		if($("#relname").val()==null||$("#relname").val()==''){
			alert("真实姓名不合法");
			return false;
		}else if($("#password").val()!=null&&$("#password").val()!=''){
			if(!regname.test($("#password").val())){
				alert("密码不合法");
				return false;
			}else if($("#password").val()!=$("#password1").val()){
				alert("密码不一致");
				return false;
			}else{
				return true;
			}
		}else if(!phone.test($("#phone").val())){
			alert("手机号不合法");
			return false;
		}else{
			$("#editform").submit();
		}
		
	})
})
</script>
 
</body>
</html>
