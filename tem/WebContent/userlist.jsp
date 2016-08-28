<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,java.io.*,cn.com.Dao.*" %>
    <%@ page import="java.util.*,java.io.*,cn.com.Entity.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>userlist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body >
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
					<form action="List" name="ListForm" method="post">
						<p>
							 用户名:<input type="text" name="user" value=""/>
   <input type="hidden" name="action" />
   <input type="hidden" name="currentpage" />
   <input type="button" value="SEARCH" onclick="doSearch();" />

<br>
						</p>
					</div>
					<div id="topheader">
						<h1 id="title">
							<a href="#">邮件分派系统</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						欢迎使用！
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>
								<input type="checkbox" name="checkAll" onclick="cheAll()" />
							</td>
							<td>
								用户名
							</td>
							<td>
								密码
							</td>
							<td>
								身份
							</td>
							<td>
								性别
							</td>
							<td>
							             地址
							</td>
							<td>
								手机号
							</td>
							
							<td>
								操作
							</td>
							
						</tr>
						<%

	ArrayList list = (ArrayList) request.getAttribute("USER_LIST");
	if (list != null) {
	for (int i = 0; i < list.size(); i++) {
		UsersEntity user = (UsersEntity) list.get(i);
		String role=null;
		if(user.getRole()==0){
			role="员工";
			}else{
				role="管理员";}
		String sex=null;
		if(user.getSex()==0){
			sex="女";
			}else{
				sex="男";}
%>
						<tr class="row1">
							<td>
								<input type="checkbox" name="delid" value="<%=user.getUsername()%>"/>
							</td>
							<td name="aaa">
								<%=user.getUsername()%>
							</td>
							<td>
								<%=user.getPassword()%>
							</td>
							<td>
								<%=role%>
								</td>
							<td>
								<%=sex%>
							</td>
							<td>
							<%=user.getAddress()%>
							</td>
							<td>
							<%=user.getTel()%>
							</td>
                            <td>								
								<a href="Update?username=<%=user.getUsername()%>">修改</a>								
							</td>
						</tr>
						<%
		}}
%>
					</table>
					<p>
					<input type="button"  class="button" value="删除" onclick="doDelete()"/>&nbsp;
						<input type="button" class="button" value="新增" onclick="location='regist.jsp'"/>
						<input type="button" class="button" value="返回" onclick="location='main.jsp'"/>
					</p>
						<input type="button" class="button" value="上传文件" onclick="location='Fileupload.jsp'"/>
				
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				sunchenhu@126.com
				</div>
			</div>
		</div>
		<script>
	function cheAll() {
		var checkboxdelid = document.forms[0].delid;
		if (checkboxdelid != null) {
			if (checkboxdelid.length > 0) {
				for (var i = 0; i < checkboxdelid.length; i++) {
					checkboxdelid[i].checked = document.forms[0].checkAll.checked;
				}	
			} else {
				document.forms[0].delid.checked = document.forms[0].checkAll.checked;
			}		
		}
	}
	function doSearch() {
	    document.forms[0].action.value="SRH";
		document.forms[0].submit();
	}
	function doDelete() {
	    document.forms[0].action.value="DEL";
	   
	    var name=document.getElementsByName("delid");
	    for(var i=0;i<name.length;i++){
	    	if(name[i].checked==true&&name[i].value=="sunchenhui"){
	    		alert("管理员账户不支持删除");
	    		return false;
	    	}
	    }
	    
		document.forms[0].submit();
	}
	
</script>


</form>
</center>
	</body>
</html>
