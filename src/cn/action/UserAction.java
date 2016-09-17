package cn.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.model.Commodity;
import cn.model.User;
import cn.service.CommodityServer;
import cn.service.UserService;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class UserAction extends ActionSupport {

	@Resource
	private UserService userService;
	@Resource
	private CommodityServer commodityServer;
	private User user;
	private int result;
	public void setResult(int result) {
		this.result = result;
	}
	public int getResult() {
		return result;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public User getUser() {
		return user;
	}
	
	

	public String login() {
		/*ServletActionContext.getRequest().getSession()
				.setAttribute("user", "cc");*/
		return SUCCESS;
	}
	
	public String registAction() {
		if(userService.checkUsername(user.getName())==0){
			userService.registService(user);
			return SUCCESS;
		}else{
			this.addFieldError("name", "用户已注册");
			return INPUT;
		}
	}
	
	public String loginAction() {
		User u=userService.loginService(user);
		if(u!=null&&!u.getName().isEmpty()){
			ServletActionContext.getRequest().getSession()
			.setAttribute("name",u.getName());
			ServletActionContext.getRequest().getSession()
			.setAttribute("uid",u.getUid());
			ServletActionContext.getRequest().getSession()
			.setAttribute("role",u.getRole());
			
			return SUCCESS;
		}else{
			this.addFieldError("msg", "用户名或密码错误");
			return INPUT;
		}
	}

	public String regist() {

		return SUCCESS;
	}

	public String exit() {
		HttpSession session=ServletActionContext.getRequest().getSession();
		if(session!=null&&session.getAttribute("name")!=null){
			session.removeAttribute("name");
			session.removeAttribute("uid");
			session.removeAttribute("role");
		}
		return SUCCESS;
	}
	
	
	public String pinfo() {
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("user",userService.getUser(Integer.parseInt(request.getSession().getAttribute("uid").toString())));
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}
	public String integral() {
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		request.setAttribute("user",userService.getUser(Integer.parseInt(session.getAttribute("uid").toString())));
		request.setAttribute("c",commodityServer.getHot());
		return SUCCESS;
	}
	
	public String delUser(){
		result=userService.delUser(user);
		return SUCCESS;
	}
	
	public String editUser(){
		userService.editUser(user);
		this.addFieldError("msg", "修改完成");
		return SUCCESS;
	}
	
	
	
	public void checkCode() throws IOException{
		String code=ServletActionContext.getRequest().getSession().getAttribute("code").toString();
		ServletActionContext.getResponse().getWriter().print(code);
	}
	

}
