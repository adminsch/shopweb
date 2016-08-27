package cn.action;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.service.UserService;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	@Resource
	private UserService userService;

	public String login() {
		ServletActionContext.getRequest().getSession()
				.setAttribute("user", "cc");
		return SUCCESS;
	}

	public String shop() {

		return SUCCESS;
	}

	public String exit() {

		return SUCCESS;
	}

}
