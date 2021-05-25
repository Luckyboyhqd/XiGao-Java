package com.by.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.by.dao.UserDao;

public class HibernateTest {
	@Test
	public void test1(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("application.xml");
		UserDao dao = (UserDao) ac.getBean("userDao");
		System.out.println(dao.verify("123", "123"));
	}
	
}
