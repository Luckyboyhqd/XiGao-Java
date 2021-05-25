package com.by.entity;

public class User {
	private int u_id;
	private String username;//用户名
	private String usercoding,department,projectname,company,phone;//用户编码，所属部门，所属项目，所属公司，手机号码
	private String password;	
	public User() {
		
	}
	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsercoding() {
		return usercoding;
	}

	public void setUsercoding(String usercoding) {
		this.usercoding = usercoding;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", username=" + username + ", usercoding=" + usercoding + ", department="
				+ department + ", projectname=" + projectname + ", company=" + company + ", phone=" + phone
				+ ", password=" + password + "]";
	}
	
}
