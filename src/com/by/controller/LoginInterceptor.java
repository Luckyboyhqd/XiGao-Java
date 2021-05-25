package com.by.controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		//具体拦截方法 配置了该拦截器的action 被请求时执行
		System.out.println("...拦截器执行了...");
		Map<String, Object> sessionMap = ActionContext.getContext().getSession();
		if(sessionMap.get("user") != null) {
		//登录过 放行 invoke调用下一个拦截器 如果拦截器全部通过 最终调用的就是Action
		//返回的就是Action的返回值
			String result = arg0.invoke();
		}
		//这里的return 对应action的result
		return "noUser";
	}

}
