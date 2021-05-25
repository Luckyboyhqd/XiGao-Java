<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<style type="text/css">
.login {
	width: 300px;
	margin: 200px auto;
	margin-left: 40%;
}

#form {
	font-size: 20px
}

body {
	background: url(images/login.jpg);
}
</style>
</head>
<body>
	<div class="login">
		<hr>
		<h1>锡膏与红胶管控系统</h1>
		<hr>
		<s:form action="login" method="post" id="form">
			<table>
				<tr>
					<td><s:textfield name="user.username" label="用户名"></s:textfield></td>
				</tr>
				<tr>
					<td><s:password name="user.password" label="密码"></s:password></td>
				</tr>
				<tr>
					<td><input type="button" value="登录" style="width: 60px"
						onclick="login()"></input></td>
					<td><input type="reset" value="重置" style="width: 60px"></td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
<!-- <input type="submit" value=""style="width:60px"></input> -->
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
<script type="text/javascript">
	function login() {
		var formdata = $("#form").serialize();
		console.log(formdata);
		$.ajax({
			url : "login",
			method : "post",
			data : formdata,
			dataType : "json",
			success : function(rdata) {
				console.log(rdata);
				alert(rdata.msg);
				if (rdata.msg == "登录成功，点击跳转到主页！") {
					window.location.href = "index.jsp";
				}else{
					/* 如何实现验证器的功能 在submit时能正常工作 */
					$("input[type=reset]").trigger("click");
					window.location.href="login.jsp";
					/* $("#form").reset(); */
				}
			},
			error : function(error) {
				console.log(error);
			}
		});
	}
</script>
</html>