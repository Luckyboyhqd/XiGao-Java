package com.by.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.by.dao.UserDao;
import com.by.entity.User;
import com.by.service.UserService;

//接口实现类
@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userdao;

	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}

	// 验证用户名密码
	@Override
	public boolean verify(String name, String pwd) {
		return userdao.verify(name, pwd);
	}

	// 注册的方法
	@Override
	public boolean regist(String username, String usercoding, String department, String projectname, String company,
			String phone, String password) {
		return userdao.regist(username, usercoding, department, projectname, company, phone, password);
	}

	// 查询所有用户
	@Override
	public List<User> findUser() {
		return userdao.selectUser();
	}

}
