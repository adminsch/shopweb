<%@ page language="java" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="java.util.*,java.io.*,cn.com.Dao.*" %>
    <%@ page import="java.util.*,java.io.*,cn.com.Entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>mailslist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						<form action="mailsList" name="ListForm" method="post">
						<p>
							订单号:<input type="text" name="mails" value="" />
   <input type="hidden" name="action" />
   <input type="hidden" name="currentpage" />
   <input type="button" value="SEARCH" onclick="doSearch();" />		
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
						欢迎使用！
					</h1>
					<table class="table">
						<tr class="table_header">
						<td>
								<input type="checkbox" name="checkAll" onclick="cheAll()" />
							</td>
							<td>
								订单号
							</td>
							<td>
								客户姓名
							</td>
							<td>
								物品类别
							</td>
							<td>
								快递员姓名
							</td>
							<td>
								下单日期
							</td>
							<td>
								发货日期
							</td>
							<td>
								发货地址
							</td>
							<td>
								收货地址
							</td>
							<td>
								货运方式
							</td>
							<td>
								状态
							</td>
							<td>
								操作
							</td>
							
						</tr>
						<%

	ArrayList list = (ArrayList) request.getAttribute("mails_list");
	if (list != null) {
  //  int currentpage=1;
  //int totalpage =(list.size()-1)/5+1;
  //int previouspage;
  //if(currentpage>1){
	//  previouspage=currentpage-1;
  //}else previouspage=1;
  //int nextpage;
  //if(currentpage<list.size()){
	//  nextpage=currentpage+1;
  //}else nextpage=list.size();
  //int firstpage=1;
  //int lastpage=list.size();
   
		
	for (int i = 0; i < list.size(); i++) {
		MailsEntity mails = (MailsEntity) list.get(i);
			String way=null;
			if(mails.getWay()==0){
				way="海运";
				}else if(mails.getWay()==1){
					way="空运";
					}else if(mails.getWay()==2){
						way="金龙集装箱车";
					}else {
						way="电动小三轮";
					}
			String state=null;
			if(mails.getState()==0){
				state="已签收";
				}else if(mails.getState()==1){
					state="正在派送中";
					}else if (mails.getState()==2){
						state="等待发单";
					}else {state="邮件丢失";}
			String kindname=null;
			if(mails.getKindname().equals("food")){
				kindname="食品";
			}else if(mails.getKindname().equals("cloth")){
				kindname="衣物";
			}else if(mails.getKindname().equals("letter")){
				kindname="信件";
			}else if(mails.getKindname().equals("sui")){
				kindname="易碎品";
			}else if(mails.getKindname().equals("electric")){
				kindname="电子产品";
			}else {kindname="日用品";}
	%>
		

						<tr class="row1">
							<td>
<input type="checkbox" name="delid" value="<%=mails.getOrderno()%>"/>
							</td>
							<td>
								<%=mails.getOrderno()%>
							</td>
							<td>
								<%=mails.getCustomername()%>
							</td>
							<td>
								<%=kindname%>
							</td>
							
							<td>
							<%=mails.getDname()%>
							</td>
							<td>
							<%=mails.getOrdertime()%>
							</td>
							<td>
							<%=mails.getDelivertime()%>
							</td>
							<td>
								<%=mails.getFrom()%>
							</td>
							<td>
								<%=mails.getTo()%>
							</td>
							<td>
								<%=way%>
							</td>
							<td>
							   <%=state%>
							</td>
                            <td>
							<a href="mailsUpdate?orderno=<%=mails.getOrderno()%>">修改</a>
							</td>
						</tr>
						
							<%
		}}
%>
					</table>
					<p>
    <input type="button"  class="button" value="删除" onclick="doDelete()"/>&nbsp;
	<input type="button" class="button" value="新增" onclick="location='add.jsp'"/></p>
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
		document.forms[0].submit();
	}
	
</script>
</form>
	</body>
</html>
