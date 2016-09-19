package cn.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.model.Address;
import cn.service.AddressServer;
import cn.service.UserService;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class AddressAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	private AddressServer addressServer;
	@Resource
	private UserService userService;
	private Address address;
	private int result;
	public void setAddress(Address address) {
		this.address = address;
	}
	public Address getAddress() {
		return address;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public int getResult() {
		return result;
	}
	
	public String address() {
		HttpSession session=ServletActionContext.getRequest().getSession();
		HttpServletRequest request=ServletActionContext.getRequest();
		//设置user信息
		request.setAttribute("user",userService.getUser(Integer.parseInt(session.getAttribute("uid").toString())));
		request.setAttribute("addrs", addressServer.getAddrs());
		return SUCCESS;
	}
	
	public String addAddrNoSingle() {
		int uid=Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("uid").toString());
		address.getUser().setUid(uid);
		addressServer.addAddr(address);
		return SUCCESS;
	}
	public String addAddr(){
		int uid=Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("uid").toString());
		address.getUser().setUid(uid);
		addressServer.addAddr(address);
		return SUCCESS;
	}
	public String delAddress(){
		result=addressServer.delAddress(address);
		return SUCCESS;
	}
	
}
