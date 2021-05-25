package com.by.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.by.entity.User;
import com.by.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Controller
public class SelectUserAction extends ActionSupport{
	@Autowired
	private UserService userService;
	private User user;
	private List<User> users;
	
	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	private String msg;
	//需要get方法 方便struts
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	//使用struts管理请求
	public String select() {			
		users = userService.findUser();
		System.out.println(users);
		if(users != null){
			msg = "查询成功";
			
		}else{
			msg = "查询失败";
		}	
		return "select";
	}
}
