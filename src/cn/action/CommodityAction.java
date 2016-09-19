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
import cn.service.AddressServer;
import cn.service.CommodityServer;
import cn.service.UserService;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class CommodityAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	private CommodityServer commodityServer;
	@Resource
	private UserService userService;
	@Resource
	private AddressServer addressServer;
	
	private Commodity commodity;
	private int result;
	public void setResult(int result) {
		this.result = result;
	}
	public int getResult() {
		return result;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
	public Commodity getCommodity() {
		return commodity;
	}

	public String index() throws UnsupportedEncodingException {
		HttpServletRequest request=	ServletActionContext.getRequest();
		String text=request.getParameter("commodity.cname");
		String searchtext=null;
		if(text!=null){
			searchtext=new String(text.getBytes("iso-8859-1"),"utf-8");
		}
		request.setAttribute("commoditys",commodityServer.getCommoditys(searchtext));
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}

	
	public String order() {
		HttpSession session=ServletActionContext.getRequest().getSession();
		ServletActionContext.getRequest().setAttribute("user",userService.getUser(Integer.parseInt(session.getAttribute("uid").toString())));
		return SUCCESS;
	}

	
	
	public String settlement() {
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("addrs", addressServer.getAddrs());
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}
	public String detail() {
		HttpServletRequest request=ServletActionContext.getRequest();
		commodity.setCid(Integer.parseInt(request.getParameter("commodity.cid")));
		request.setAttribute("commodity",commodityServer.getCommodity(commodity));
		List<Message> list=commodityServer.getMessage(commodity);
		request.setAttribute("messages",list);
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}
	
	public String manager() {
		ServletActionContext.getRequest().setAttribute("commoditys", commodityServer.getCommoditys(null));
		ServletActionContext.getRequest().setAttribute("users", userService.getUsers());
		return SUCCESS;
	}
	
	public String addCommodity(){
		commodityServer.addCommodity(commodity);
		return SUCCESS;
	}
	
	public String delCommodity() throws IOException{
		result=commodityServer.delCommodity(commodity);
		return SUCCESS;
	}
	
}
