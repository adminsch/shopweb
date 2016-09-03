package cn.action;

import javax.annotation.Resource;

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

	public String regist() {

		return SUCCESS;
	}

	public String exit() {

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
	

}
