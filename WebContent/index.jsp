<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>主操作界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- basic styles -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->

<!-- fonts -->

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

<!-- ace styles -->

<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->

<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>

<body>

	<!-- 必须登录才能访问此页 -->
	<c:if test="${empty user }">
		<jsp:forward page="login.jsp"></jsp:forward>
	</c:if>

	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> 锡膏与红胶管理系统
				</small>

				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->

			<!-- 当前用户 -->
			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<!-- 可选择purple grey light-blue 后面加open 下面框为不点就弹出 把open干掉直接进页面就不会直接弹出退出按钮  -->
					<li class="green"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/head.jpg" alt="Jason's Photo"> <!-- 获取用户名 -->
							<span class="user-info"> <small>欢迎管理员,</small> ${user}
						</span> <i class="icon-caret-down"></i>
					</a>

						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<!-- <li>
									<a href="#">
										<i class="icon-cog"></i>
										设置
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li> -->

							<li class="divider"></li>

							<li>
								<!-- 点击退出页面 直接退出页面 --> 
								<!-- <a href="exit.jsp"> <i
									class="icon-off"></i> 退出
								</a> --> 
								<button name="exit" class="icon-off" onclick="exit()">--点击退出登录--</button>
							</li>
						</ul></li>
				</ul>
				<!-- /.ace-nav -->
			</div>

			<ul>
				<li class="light-blue"><a data-toggle="dropdown" href="#"
					class="dropdown-toggle"> <i class="icon-caret-down"></i>
				</a></li>
			</ul>
			<!-- /.ace-nav -->
		</div>
		<!-- /.navbar-header -->
	</div>
	<!-- /.container -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<!-- <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div> -->
				</div>
				<!-- #sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li class="active"><a href="index.jsp"> <i
							class="icon-dashboard"></i> <span class="menu-text">
								基本信息维护 </span>
					</a></li>

					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-file-alt"></i> <span class="menu-text"> 产品维护 </span>

							<b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="addProject.jsp"> <i class="icon-file-alt"></i>
									新增产品
							</a></li>

							<li><a href="projectQuery.jsp"> <i class="icon-file-alt"></i>
									产品查询
							</a></li>
						</ul></li>

					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-file-alt"></i> <span class="menu-text"> 用户维护 </span>

							<b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="register.jsp"> <i class="icon-file-alt"></i>
									新增用户
							</a></li>

							<li><a href="selectUser.jsp"> <i class="icon-file-alt"></i>
									用户查询
							</a></li>
						</ul></li>


				</ul>
				<!-- /.nav-list -->

				<ul class="nav nav-list">
					<li class="active"><a href="index.jsp"> <i
							class="icon-dashboard"></i> <span class="menu-text">
								存入取出工作 </span>
					</a></li>
					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-file-alt"></i> <span class="menu-text"> 锡膏作业 </span>

							<b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="saveXG.jsp"> <i
									class="icon-double-angle-right"></i> 锡膏存入冰箱
							</a></li>

							<li><a href="fetchXG.jsp"> <i class="icon-file-alt"></i>
									锡膏取出冰箱
							</a></li>

							<li><a href="useXG.jsp"> <i class="icon-file-alt"></i>
									锡膏开封作业
							</a></li>

							<li><a href="endUseXG.jsp"> <i class="icon-file-alt"></i>
									锡膏使用完成
							</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-file-alt"></i> <span class="menu-text"> 红胶作业 </span>

							<b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="saveHJ.jsp"> <i
									class="icon-double-angle-right"></i> 红胶存入冰箱
							</a></li>

							<li><a href="fetchHJ.jsp"> <i class="icon-file-alt"></i>
									红胶取出冰箱
							</a></li>

							<li><a href="useHJ.jsp"> <i class="icon-file-alt"></i>
									红胶开封作业
							</a></li>

							<li><a href="endUseHJ.jsp"> <i class="icon-file-alt"></i>
									红胶使用完成
							</a></li>
						</ul></li>
				</ul>
				<!-- /.nav-list -->

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>
				</div>

				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active">控制台</li>
					</ul>
					<!-- .breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="icon-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- #nav-search -->
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1>
							控制台 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="alert alert-block alert-success">
								<button type="button" class="close" data-dismiss="alert">
									<i class="icon-remove"></i>
								</button>

								<i class="icon-ok green"></i> 欢迎使用 <strong class="green">
									锡膏与红胶管理系统 <small>(v1.2)</small>
								</strong> ,轻量级好用的管理系统...
							</div>


							<div class="row">
								<div class="col-sm-5">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-flat">
											<h4 class="lighter">
												<i class="icon-star orange"></i> 具体操作
											</h4>

										</div>
									</div>
									<!-- /widget-box -->
								</div>

								<div class="col-sm-7">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-flat">
											<h4 class="lighter">
												<i class="icon-signal"></i> Database
											</h4>
										</div>
										<div class="widget-body">
											<div class="widget-main padding-4">
												<div id="sales-charts"></div>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
									<!-- /widget-box -->
								</div>
							</div>
							<h4>希望使用本系统愉快！请在左边导航栏选择你的操作...</h4>
							<div class="hr hr32 hr-dotted"></div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->

			<div class="ace-settings-container" id="ace-settings-container">
				<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
					id="ace-settings-btn">
					<i class="icon-cog bigger-150"></i>
				</div>

				<div class="ace-settings-box" id="ace-settings-box">
					<div>
						<div class="pull-left">
							<select id="skin-colorpicker" class="hide">
								<option data-skin="default" value="#438EB9">#438EB9</option>
								<option data-skin="skin-1" value="#222A2D">#222A2D</option>
								<option data-skin="skin-2" value="#C6487E">#C6487E</option>
								<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
							</select>
						</div>
						<span>&nbsp; 选择皮肤</span>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-navbar" /> <label class="lbl"
							for="ace-settings-navbar"> 固定导航条</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-sidebar" /> <label class="lbl"
							for="ace-settings-sidebar"> 固定滑动条</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-breadcrumbs" /> <label class="lbl"
							for="ace-settings-breadcrumbs">固定面包屑</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-rtl" /> <label class="lbl"
							for="ace-settings-rtl">切换到左边</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-add-container" /> <label class="lbl"
							for="ace-settings-add-container"> 切换窄屏 <b></b>
						</label>
					</div>
				</div>
			</div>
			<!-- /#ace-settings-container -->
		</div>
		<!-- /.main-container-inner -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

	<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/jquery.slimscroll.min.js"></script>
	<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
	<script src="assets/js/jquery.sparkline.min.js"></script>
	<script src="assets/js/flot/jquery.flot.min.js"></script>
	<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
	<script src="assets/js/flot/jquery.flot.resize.min.js"></script>

	<!-- ace scripts -->

	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- exit -->
	<script type="text/javascript">
	function exit(){
		$.ajax({
			url : "exit",
			dataType : "json",
			success:function(rdata){
				alert(rdata.msg);
				if(rdata.msg == "退出成功，点击跳转到退出页面！"){
					window.location.href="exit.jsp";
				}				
			}		
		});
		
	}	
	</script> 
	<!-- inline scripts related to this page -->
	Learn - More -
	<a href="#" title="管理系统" target="_blank">锡膏红胶系统</a>
</body>
</html>

