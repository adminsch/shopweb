package cn.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.model.Message;
import cn.service.MessageServer;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class MessageAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	@Resource
	private MessageServer messageServer;
	private Message message;
	public void setMessage(Message message) {
		this.message = message;
	}
	public Message getMessage() {
		return message;
	}
	public String addPj(){
		int uid=Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("uid").toString());
		message.getUser().setUid(uid);
		messageServer.addPj(message);
		return SUCCESS;
	}
	
	public String getMsg(){
		HttpServletRequest request=ServletActionContext.getRequest();
		int uid=Integer.parseInt(request.getSession().getAttribute("uid").toString());
		request.setAttribute("messages",messageServer.getMsg(uid));
		return SUCCESS;
	}
}
