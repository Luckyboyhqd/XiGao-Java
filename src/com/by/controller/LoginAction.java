package com.by.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.by.entity.User;
import com.by.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Controller
public class LoginAction extends ActionSupport{
	@Autowired
	private UserService userService;
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	//繁琐的方法 自己管理返回 使用struts管理
//	public void login() {
//		//获取前端登录用户密码
//		String name = user.getUsername();
//		String pwd = user.getPassword();
//		
//		//获取response
//		HttpServletResponse response = ServletActionContext.getResponse();
//		response.setCharacterEncoding("utf8");
//		String json = null;
//		String msg = "";
//		boolean result = false;		
//		result = userService.verify(name, pwd);
//		System.out.println(result);
//		//如果登录失败
//		if(!result) {
//			//当前只能一次登录 会失败！
////			addFieldError("user.username", "登录失败，请重新登录！");
//			msg="登录失败，请重新登录！";
//			json = "{\"errcode\":0,\"msg\":\""+msg+"\"}";			
//		}else{
//			msg="登录成功，点击跳转到主页！";
//			json = "{\"errcode\":0,\"msg\":\""+msg+"\"}";
//			//存储用户名到session
//			ActionContext.getContext().getSession().put("user", user.getUsername());
//			System.out.println("登录成功...");
//			System.out.println("用户名为：" + user.getUsername());
//			System.out.println("密码为：" + user.getPassword());
//		}		
//		try {
//			System.out.println(json);
//			response.getWriter().append(json);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		//登录成功 前端跳出弹出框 ？
//		return msg.equals("成功")? "login" : "input";
//	}
	
	private String msg;
	//需要get方法 方便struts
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	//使用struts管理请求
	public String login() {
		//获取前端登录用户密码
		String name = user.getUsername();
		String pwd = user.getPassword();

		boolean result = false;		
		result = userService.verify(name, pwd);
		System.out.println(result);
		if(!result){
			msg = "登录失败，请重新登录！";
		}else{
			msg = "登录成功，点击跳转到主页！";
			//登录成功 将用户名存储到session
			ActionContext.getContext().getSession().put("user", user.getUsername());
		}
		System.out.println(msg);
		System.out.println("用户名为：" + user.getUsername());
		System.out.println("密码为：" + user.getPassword());
		return "login";
	}
}
