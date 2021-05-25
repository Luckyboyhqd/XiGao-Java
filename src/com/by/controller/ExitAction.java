package com.by.controller;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Controller
public class ExitAction extends ActionSupport{

	private String msg;
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String exit() {		
		//session中的user清除		
		try {
			ActionContext.getContext().getSession().remove("user");
			msg = "退出成功，点击跳转到退出页面！";
		} catch (Exception e) {
			msg = "退出失败，请重新退出！";
		}		
		return "exit";
	}
}
