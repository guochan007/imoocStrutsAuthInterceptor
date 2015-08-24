package com.imooc.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/*
 * 判断权限，用户要是没登录，不跳转到manager.jsp
 */
public class AuthInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext actionContext=ActionContext.getContext();
		Map<String, Object> session=actionContext.getSession();
		if(session.get("loginInfo")!=null){
			String result=invocation.invoke();
			return result;
		}else{
			return "login";
		}
	}

}
