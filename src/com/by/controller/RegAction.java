package com.by.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.by.entity.User;
import com.by.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class RegAction extends ActionSupport {
	@Autowired
	private UserService userService;

	private User user;
	private String msg;
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String register() {
		//获取注册参数
		String username = user.getUsername();
		String usercoding = user.getUsercoding();
		String department = user.getDepartment();
		String projectname = user.getProjectname();
		String company = user.getCompany();
		String phone = user.getPhone();
		String password = user.getPassword();
		
		boolean result = false;
		result = userService.regist(username, usercoding, department, projectname, company, phone, password);
		
		//使用struts管理请求
		if(!result){
			msg = "注册失败，请重新注册！";
		}else{
			msg = "注册成功，点击继续注册！";
		}
		System.out.println("用户名为" + user.getUsername());
		System.out.println("密码为" + user.getPassword());
		System.out.println(msg);
		return "register";
	}
}
