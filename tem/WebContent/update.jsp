<%@ page language="java" errorPage="error.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*,cn.com.Entity.*,cn.com.Dao.*" %>
<!DOCTYPE html >
<html>
	<head>
		<title>update</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css"
			href="css/style.css" />
			<link href="jquery-ui.min.css" rel="stylesheet" type="text/css">
			
  <link href="jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" type="text/css" href="css/main.css" />
  <script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
  <script type="text/javascript" src="js/jquery.cityselect.js"></script>
  <script type="text/javascript" src="jquery.ui.datepicker-zh-CN.js"></script>
   <script type="text/javascript" src="jquery.ui.datepicker.min.js"></script>
  


	</head>
<%
	MailsEntity mails = (MailsEntity) request.getAttribute("mails_entity");
%>
	<body>
		<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p>
								<a href="introduce.html"><font size="2">公司简介</font></a>
								<br />
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
						修改订单信息:
					</h1>
					<form action="mailsUpdate" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									订单号:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="orderno" readonly="true" value="<%=mails.getOrderno()%>"/>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									客户姓名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="customername" value="<%=mails.getCustomername()%>"/>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									物品类别:
								</td>
								</td>
								<td valign="middle" align="left">
								<input type=hidden value=<%=mails.getKindname()%> id="kindname1">
								
									<select name="kindname" >
								<option value="food">食品</option>
								<option value="cloth">衣物</option>
								<option value="letter">信件</option>
								<option value="sui">易碎品</option>
								<option value="electric">电子产品</option>
								<option value="necessary">日用品</option>
								</select>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									快递员姓名:
								</td>
								<td><input type="text" name="dname" value=<%=mails.getDname()%>></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									下单日期:
								</td>
								<td valign="middle" align="left">
								<script>
                                 $(function(){
                                 $("#date").datepicker();

                                 })
                                 </script>
								
 
									<input type="text" id="date" name="ordertime" value="<%=mails.getOrdertime()%>"/>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									发货日期:
								</td>
								<td valign="middle" align="left">
									<script>
                                 $(function(){
                                 $("#date1").datepicker();

                                 })
                                 </script>
								
 
									<input type="text" id="date1" name="delivertime" value="<%=mails.getDelivertime()%>"/>
								</td>
							</tr>
							
						<tr>
								<td valign="middle" align="right">
									发货地址:
								</td>
								<td valign="middle" align="left">
								
									<input type="text" class="inputgri" name="from" value="<%=mails.getFrom()%>" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									收货地址:
								</td>
								<td valign="middle" align="left">
								
	
	
    <input type="text" class="inputgri" name="to" value="<%=mails.getTo()%>"/>
    </div>

									
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									货运方式:
								</td>
								<td valign="middle" align="left">
								<input type="hidden" value=<%=mails.getWay() %> id="way1">
									<select name="way">
								<option value="0">海运</option>
								<option value="1">空运</option>
								<option value="2">金龙集装箱车</option>
								<option value="3">电动小三轮</option>
								</select>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									状态:
								</td>
								<td valign="middle" align="left">
								<input type="hidden" value=<%=mails.getState() %> id="state1">
									<select name="state">
								<option value="0">已签收</option>
								<option value="1">正在派送中</option>
								<option value="2">等待发单</option>
								<option value="3">邮件丢失</option>
								</select>
								</td>
							</tr>
						</table>
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden"  name="action" /><input type="button" class="button" value="修改" onclick="doSubmit()" />
							<input type="button" value="返回" class="button" onclick="location='mailslist.jsp'">
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					sunchenhu@126.comp
				</div>
			</div>
		</div>
		<script>
		var kindname=document.getElementById("kindname1").value;
		var kindnameform=document.forms[0].kindname;

		for(var i=0;i<kindnameform.length;i++)
{
			if (kindnameform[i].value==kindname){

				kindnameform[i].selected=true;
				
			}
			}	 
		var way=document.getElementById("way1").value;
		var wayform=document.forms[0].way;

		for(var i=0;i<wayform.length;i++)
{
			if (wayform[i].value==way){

				wayform[i].selected=true;
				
			}
			}	
		var state=document.getElementById("state1").value;
		var stateform=document.forms[0].state;

		for(var i=0;i<stateform.length;i++)
{
			if (stateform[i].value==state){

				stateform[i].selected=true;
				
			}
			}
		 function doSubmit() {
		    	document.forms[0].action.value="UPD";
		    	document.forms[0].submit();
		    }
			  
		</script>
	</body>
</html>
