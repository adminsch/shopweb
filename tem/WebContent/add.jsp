<%@ page language="java" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>add</title>
		<style>
span{
color:red; font-size:12px;
}</style>
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
	<script>
	function checkorderno(){
		var orderno=document.getElementById("orderno").value;
		if(orderno==""||orderno==null){
			document.getElementById("orderno1").innerHTML="订单号不能为空!";
		}else if(!/^\d{6}$/.test(orderno)){
			document.getElementById("orderno1").innerHTML="订单号由6位数字组成！";
	}else{document.getElementById("orderno1").innerHTML="";}
		}
	function checkcustomer(){
		var customer=document.getElementById("customer").value;
		if(customer==""||customer==null){
			document.getElementById("customer1").innerHTML="客户姓名不能为空!";
		}else{
			document.getElementById("customer1").innerHTML="";
		}
	}
	function checkdname(){
		var dname=document.getElementById("dname").value;
		if(dname==""||dname==null){
			document.getElementById("dname1").innerHTML="快递员姓名不能为空!";
		}else{document.getElementById("dname1").innerHTML="";}
	}
// 	function checkdate(){
// 		var date=document.getElementById("date").value;
// 		if(date==""||date==null){
// 			document.getElementById("datere").innerHTML="下单日期不能为空！";
// 		}else{document.getElementById("datere").innerHTML="";}
// 	}
// 	function checkdate1(){
// 		var date1=document.getElementById("date1").value;
// 		if(date1==""||date1==null){
// 			document.getElementById("date1re").innerHTML="发货日期不能为空！";
// 		}else{document.getElementById("date1re").innerHTML="";}
// 	}
// 	function checkfrom4(){
// 		var from4=document.getElementById("from4").value;
// 		if(from4==""||from4==null){
// 			document.getElementById("from41").innerHTML="请填完整发货地址!";
// 		}else{document.getElementById("from41").innerrHTML="";}
// 	}
// 	function checkto4(){
// 		var to4=document.getElementById("to4").value;
// 		if(to4==""||to4==null){
// 			document.getElementById("to41").innerHTML="请填写完整收货地址！";
// 		}else{document.getElementById("to41").innerHTML="";}
// 	}
	function docheck(){
		var orderno=document.getElementById("orderno").value;
		var customer=document.getElementById("customer").value;
		var dname=document.getElementById("dname").value;
		var date=document.getElementById("date").value;
		var date1=document.getElementById("date1").value;
		var from4=document.getElementById("from4").value;
		var to4=document.getElementById("to4").value;
		if(orderno==""||orderno==null){
			return false;
		}else if(!/^\d{6}$/.test(orderno)){
			return false;
		}else if(customer==""||customer==null){
			return false;
		}else if(dname==""||dname==null){
			return false;
// 		}else if(date==""||date==null){
// 			return false;
// 		}else if(date1==""||date1==null){
// 			return false;
// 		}else if(from4==""||from4==null){
// 			return false;
// 		}else if(to4==""||to4==null){
// 			return false;
 		}else{
			return true;
		}
	}
	</script>
	</head>
	

	<body>
		<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p>
								<a href="introduce.html"><font size="2">公司简介</font>
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
						增加订单信息:
					</h1>
					<form action="Add" method="post" onSubmit="return docheck()">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									订单号:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="orderno" id="orderno" onblur="checkorderno()"/>
								</td>
								<td><span id="orderno1"></span> </td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									客户姓名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="customername" id="customer" onblur="checkcustomer()">
								</td>
								<td><span id="customer1"></span></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									物品类别:
								</td>
								<td valign="middle" align="left">
									<select name="kindname">
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
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="dname" id="dname" onblur="checkdname()" />
								</td>
								<td><span id="dname1"></span></td>
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
								
 
									<input type="text" id="date" name="ordertime" onblur="checkdate()"/>
								</td>
								<td><span id="datere"></span></td>
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
								
 
									<input type="text" id="date1" name="delivertime" onblur="checkdate1(0)"/>
								</td>
								<td><span id="date1re"></span></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									发货地址:
								</td>
								<td valign="middle" align="left">
								 <select id="s_province" name="s_province"></select>&nbsp;&nbsp;
                                <select id="s_city" name="s_city" ></select>&nbsp;&nbsp;
                                <select id="s_county" name="s_county"></select>
                                <script class="resources library" src="js/area.js" type="text/javascript"></script>
	                            <script type="text/javascript">_init_area();</script>
	                            <script type="text/javascript">
                                var Gid  = document.getElementById ;
                                var showArea = function(){
	                            Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
	                            Gid('s_city').value + " - 县/区" + 
	                            Gid('s_county').value + "</h3>"
							    }
                                Gid('s_county').setAttribute('onchange','showArea()');
                                </script>
									<input type="text" class="inputgri" name="from4" id="from4" onblur="checkfrom4()"/>
								</td>
								<td><span id="from41"></span></td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									收货地址:
								</td>
								<td valign="middle" align="left">
								
	
	 <script>
			$(function() {
				$("#div1").citySelect({
					url: "js/city.min.js",  
					nodata: "none",
					required: true
				});
			});
		</script>

		<div id="div1">
	<select id="province" class="prov" name="to1"></select>&nbsp;&nbsp;
    <select id="city" class="city" disabled="disabled" name="to2"></select>&nbsp;&nbsp;
    <select id="county" class="dist" disabled="disabled" name="to3"></select>
    <input type="text" class="inputgri" name="to4" id="to4" onblur="checkto4()"/>
    </div>
    <td><span id="to41"></span></td>
									
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									货运方式:
								</td>
								<td valign="middle" align="left">
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
									<select name="state">
								<option value="0">已签收</option>
								<option value="1">正在派送中</option>
			                    <option value="2">等待发单</option>
								<option value="3">邮件丢失</option>
								
							</tr>
							
						</table>
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="button" value="提交" />
							<input type="reset" class="button" value="取消" />
							<input type="button" class="button" value="返回" onclick="location='mailslist.jsp'"/>
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					sunchenhu@126.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</div>
		</div>
	</body>
</html>
