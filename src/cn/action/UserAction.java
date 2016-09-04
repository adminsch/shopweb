package cn.action;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.model.User;
import cn.service.UserService;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	@Resource
	private UserService userService;
	
	private User user;
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
			.setAttribute("name",user.getName());
			ServletActionContext.getRequest().getSession()
			.setAttribute("uid",user.getUid());
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
		}
		return SUCCESS;
	}
	
	public String address() {

		return SUCCESS;
	}
	public String pinfo() {

		return SUCCESS;
	}
	public String integral() {

		return SUCCESS;
	}
	
	public void checkCode() throws IOException{
		String code=ServletActionContext.getRequest().getSession().getAttribute("code").toString();
		ServletActionContext.getResponse().getWriter().print(code);
	}
	

}
