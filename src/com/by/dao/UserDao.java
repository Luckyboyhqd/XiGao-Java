package com.by.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.by.entity.User;

@Repository
public class UserDao {
	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * 1.登录 验证 username password 在数据库中查找是否有 无返回false 有返回true 2.注册 username
	 * password usercoding,department,projectname,company 进行插入库中 成功true 失败false
	 * 3.查询用户(可查询全字段 只展示所需展示字段) 查询如下字段
	 * u_id,usercoding,department,projectname,company 返回list集合 3.1用户操作 增删改查 传回字段
	 * u_id 针对字段 usercoding,department,projectname,company 用户编码，所属部门，所属项目，所属公司
	 */

	// u_id用户id username用户名 usercoding用户编码 department所属部门
	// projectname所属项目 company所属公司 phone手机号码 password密码
	
	// 连接数据库 进行查询
	// 验证用户 登录功能 boolean
	@Transactional(readOnly = false)
	public boolean verify(String name, String pwd) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from User where username = :username and password = :password";
		Query query = session.createQuery(hql);
		query.setString("username", name).setString("password", pwd);
		User user = (User) query.uniqueResult();
		if (user != null) {
			return true;
		}
		return false;
	}

	// 查询 集合类型
	@Transactional
	public List<User> selectUser() {
		List<User> list = null;
		Session session = sessionFactory.getCurrentSession();
		String hql = "from User";
		Query query = session.createQuery(hql);
		list = query.list();
		return list;
	}

	// 注册用户?如何判断条件
	@Transactional
	public boolean regist(String username, String usercoding, String department, String projectname, String company,
			String phone, String password) {
		User user = new User();
		int count = 0;
		user.setUsername(username);
		user.setUsercoding(usercoding);
		user.setDepartment(department);
		user.setProjectname(projectname);
		user.setCompany(company);
		user.setPhone(phone);
		user.setPassword(password);
		Session session = sessionFactory.getCurrentSession();
		count = (int) session.save(user);
		if(count == 0){
			return false;
		}
		return true;
	}

	// 修改用户 ？
	@Transactional
	public boolean update(int u_id, String usercoding, String department, String projectname, String company) {
		try {
			Session session = sessionFactory.getCurrentSession();
			User user = (User) session.get(User.class, u_id);
			user.setUsercoding(usercoding);
			user.setDepartment(department);
			user.setProjectname(projectname);
			user.setCompany(company);
			session.saveOrUpdate(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	// 删除用户
	@Transactional
	public boolean delete(int u_id) {
		try {
			Session session = sessionFactory.getCurrentSession();
			// User user = (User) session.get(User.class, u_id);
			User user = new User();
			user.setU_id(u_id);
			;
			session.delete(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
