package cn.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.model.Commodity;
import cn.model.Message;
import cn.model.SecondHand;
import cn.service.AddressServer;
import cn.service.CommodityServer;
import cn.service.SecondHandService;
import cn.service.UserService;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class SecondHandAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	private SecondHandService secondHandService;
	@Resource
	private UserService userService;
	@Resource
	private AddressServer addressServer;
	
	private SecondHand secondHand;
	private int result;
	public void setResult(int result) {
		this.result = result;
	}
	public int getResult() {
		return result;
	}
	public void setSecondHand(SecondHand secondHand) {
		this.secondHand = secondHand;
	}
	public SecondHand getSecondHand() {
		return secondHand;
	}

	public String index() throws UnsupportedEncodingException {
		HttpServletRequest request=	ServletActionContext.getRequest();
		String text=request.getParameter("secondHand.sname");
		String searchtext=null;
		if(text!=null){
			searchtext=new String(text.getBytes("iso-8859-1"),"utf-8");
		}
		request.setAttribute("secondHands",secondHandService.getSecondHands(searchtext));
		return SUCCESS;
	}	
	
	public String settlement() {
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("addrs", addressServer.getAddrs());
		return SUCCESS;
	}
	public String detail() {
		HttpServletRequest request=ServletActionContext.getRequest();
		secondHand.setSid(Integer.parseInt(request.getParameter("secondHand.sid")));
		request.setAttribute("secondHand",secondHandService.getSecondHand(secondHand));
		return SUCCESS;
	}
	
	public String manager() {
		ServletActionContext.getRequest().setAttribute("secondHands", secondHandService.getSecondHands(null));
		ServletActionContext.getRequest().setAttribute("users", userService.getUsers());
		return SUCCESS;
	}
	
	public String addSecondHand(){
		secondHandService.addSecondHand(secondHand);
		return SUCCESS;
	}
	
	public String delSecondHand() throws IOException{
		result=secondHandService.delSecondHand(secondHand);
		return SUCCESS;
	}
	
}
