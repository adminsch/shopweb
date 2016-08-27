package cn.service;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class CheckLoginInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String,Object> map=invocation.getInvocationContext().getSession();
		if("cc".equals(map.get("user"))){
			return invocation.invoke();
		}else{
			return "login";
		}
	}

}
