package cn.action;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.model.Orders;
import cn.service.AddressServer;
import cn.service.CommodityServer;
import cn.service.OrderServer;
import cn.service.UserService;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class OrderAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	@Resource
	private OrderServer orderServer;
	@Resource
	private AddressServer addressServer;
	@Resource
	private UserService userService;
	@Resource
	private CommodityServer commodityServer;
	private Orders order;
	private String result;
	public void setResult(String result) {
		this.result = result;
	}
	public String getResult() {
		return result;
	}
	public void setOrder(Orders order) {
		this.order = order;
	}
	public Orders getOrder() {
		return order;
	}
	public String addOrder(){
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("addrs", addressServer.getAddrs());
		order.getUser().setUid(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("uid").toString()));
		String batchno=UUID.randomUUID().toString();
		order.setBatchno(batchno);
		orderServer.addOrder(order);
		request.setAttribute("order", orderServer.getOrders(batchno)); 
		return SUCCESS;
	}
	public String addGw(){
		order.getUser().setUid(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("uid").toString()));
		if(order.getBatchno()==null||order.getBatchno().isEmpty()){
			String batchno=UUID.randomUUID().toString();
			order.setBatchno(batchno);
		}
		orderServer.addGw(order);
		result=order.getBatchno();
		return SUCCESS;
	}
	
	public String pay() {
		HttpServletRequest request=ServletActionContext.getRequest();
		orderServer.update(order);
		Orders o=orderServer.getOrders(order.getBatchno());
		if(order.getIscheck()==1){
			int uid=Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("uid").toString());
			//使用积分
			orderServer.delIntegral(uid);
		}
		//o.setBatchtotle(o.getCprice()*o.getCnum());
		o.setBatchtotle(order.getBatchtotle());
		request.setAttribute("order", o); 
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}
	public String cart() {
		String paramer=ServletActionContext.getRequest().getParameter("order.batchno");
		if(paramer==null||paramer.isEmpty()){
			return SUCCESS;
		}
		order.setBatchno(ServletActionContext.getRequest().getParameter("order.batchno"));
		order.getUser().setUid(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("uid").toString()));
		HttpServletRequest request=ServletActionContext.getRequest();
		List<Orders> list=orderServer.getGw(order);
		if(list!=null&&list.size()!=0){
			request.setAttribute("orders",list);
			request.setAttribute("totle", list.get(list.size()-1));
		}
		request.setAttribute("addrs", addressServer.getAddrs());
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}
	public String updateGw(){
		orderServer.updateGw(order);
		return SUCCESS;
	}
	public String delShop(){
		orderServer.delShop(order);
		return SUCCESS;
	}
	public String payGw(){
		HttpServletRequest request=ServletActionContext.getRequest();
		orderServer.payGw(order);
		if(order.getIscheck()==1){
			int uid=Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("uid").toString());
			//使用积分
			orderServer.delIntegral(uid);
		}
		request.setAttribute("order", order); 
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}
	public String discuss() {
		
		return SUCCESS;
	}
	public String record() {
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		int uid=Integer.parseInt(session.getAttribute("uid").toString());
		request.setAttribute("user",userService.getUser(uid));
		request.setAttribute("orders", orderServer.getOrders(uid));
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}
	public String delOrder() {
		result=orderServer.delOrder(order.getOid())+"";
		return SUCCESS;
	}
}
