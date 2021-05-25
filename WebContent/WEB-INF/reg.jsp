<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<style type="text/css">
	.register{
		width:80%;
		/* margin:100px auto; */
		margin-left:40%;
		margin-top:10%
	}
	#reg{
		font-size:15px 
	}
	body {
	 background: url(images/login.jpg);
	}
</style>
</head>
<body>
<div class="register">
<h1>注册信息</h1>
	<s:form action="register" method="post" id="reg">
		<table>			
			<tr><td><s:textfield name="user.username" label="用户名"></s:textfield></td></tr>
			<tr><td><s:textfield name="user.usercoding" label="用户编码"></s:textfield></td></tr>	
			<tr><td><s:textfield name="user.dapartment" label="所属部门"></s:textfield></td></tr>	
			<tr><td><s:textfield name="user.projectname" label="所属项目"></s:textfield></td></tr>	
			<tr><td><s:textfield name="user.company" label="所属公司"></s:textfield></td></tr>			
			<tr><td><s:textfield name="user.phone" label="手机号码"></s:textfield></td></tr>	
			<tr><td><s:password name="user.password" label="初始密码"></s:password></td></tr>
			<tr><td><s:password name="user.confirm" label="确认密码"></s:password></td></tr>
			<tr><td><input type="button" value="返回上层" onclick="back()"></td>
				<td><input type="submit" value="提交注册"></input></td></tr>
		</table>
	</s:form>
</div>
</body>
<script>
	function back(){
		window.history.back();//返回上一层 携带信息
	}
</script>
</html>