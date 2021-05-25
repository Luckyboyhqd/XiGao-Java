package com.by.service;
//业务层

import java.util.List;

import com.by.entity.User;

public interface UserService {
	//验证前端传来的用户名和密码
	public boolean verify(String name, String pwd);
	//注册的方法
	public boolean regist(String username, String usercoding, String department, String projectname, String company,
			String phone, String password);
	//查询所有的用户 
	public List<User> findUser();
}
