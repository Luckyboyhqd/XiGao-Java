<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>产品维护-用户查询</title>
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
			<!-- <ul>
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">					
								<i class="icon-caret-down"></i>
							</a>

						</li>
					</ul>/.ace-nav -->
		</div>
		<!-- /.navbar-header -->
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
							<!-- 点击退出页面 直接退出页面 --> <!-- <a href="exit.jsp"> <i
								class="icon-off"></i> 退出
							</a> -->
							<button name="exit" class="icon-off" onclick="exit()">--点击退出登录--</button>
						</li>
					</ul></li>
			</ul>
			<!-- /.ace-nav -->
		</div>
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

							<li class="active"><a href="projectQuery.jsp"> <i
									class="icon-file-alt"></i> 产品查询
							</a></li>
						</ul></li>

					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-file-alt"></i> <span class="menu-text">
								用户维护 </span> <b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="register.jsp"> <i class="icon-file-alt"></i>
									新增用户
							</a></li>

							<li class="active"><a href="selectUser.jsp"> <i
									class="icon-file-alt"></i> 用户查询
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
						<div class="hr hr-18 dotted hr-double"></div>
						<h1>
							<i class="icon-hand-right icon-animated-hand-pointer blue"></i>
							用户查询 <small> <i class="icon-double-angle-right"></i>
								Static &amp; Dynamic Tables
							</small>
						</h1>
						<!-- <h3 class="header smaller lighter blue">
								<i class="icon-hand-right icon-animated-hand-pointer blue"></i>
									Sort table
								<small>
									<i class="icon-double-angle-right"></i>
									Static &amp; Dynamic Tables
								</small>
							</h3> -->
						<!-- <h1>
								<i class="icon-hand-right icon-animated-hand-pointer blue"></i>
									产品维护
									<small>
										<i class="icon-double-angle-right"></i>
										Static &amp; Dynamic Tables
									</small>
								</h1> -->
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<!-- 添加列表 此处为查询 -->
							<!-- <div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table id="sample-table-1" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>产品编号</th>
														<th>产品名称</th>												
														<th>
															<i class="icon-time bigger-110 hidden-480"></i>
															回温时间
														</th>
														<th class="hidden-480">作废时间</th>
														<th class="hidden-480">Status</th>
													</tr>
												</thead>
										
												<tbody>
												此处可以做循环
													<tr>
														<td>
														存放查询出的数据
														</td>
														<td></td>
														<td class="hidden-480"></td>
														<td></td>			
														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
																
																<button class="btn btn-xs btn-info" onclick="amend()">
																	<i class="icon-edit bigger-120"></i>
																</button>

																<button class="btn btn-xs btn-danger" onclick="delete()">
																	<i class="icon-trash bigger-120"></i>
																</button>

													
															</div>

															<div class="visible-xs visible-sm hidden-md hidden-lg">
																<div class="inline position-relative">
																	<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
																		<i class="icon-cog icon-only bigger-110"></i>
																	</button>

																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																		<li>
																			<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
																			</a>
																		</li>

																		<li>
																			<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
																			</a>
																		</li>

																		<li>
																			<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</td>
													</tr>													
												</tbody>
											</table>
										</div>/.table-responsive
									</div>/span
								</div>/row -->
							<!-- 有序排序表 -->
							<!-- <div class="hr hr-18 dotted hr-double"></div> 划界限 -->

							<div class="row">
								<div class="col-xs-12">

									<div class="table-header">Results for "Latest Project
										Domains"</div>

									<div class="table-responsive">
										<table id="sample-table-2"
											class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center"><label> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></th>
													<th>#</th>
													<th>用户编码</th>
													<th class="hidden-480">所属部门</th>
													<th>所属项目</th>
													<th class="hidden-480">所属公司</th>
													<th>操作</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td class="center"><label> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">1</a></td>

													<td class="hidden-480">USER</td>
													<td>部门经理</td>
													<td>XIGAO系统</td>
													<td class="hidden-480">
														<!-- <span class="label label-sm label-warning">？</span> -->
														江苏BAT分公司
													</td>

													
													<td>
														<div
															class="visible-md visible-lg hidden-sm hidden-xs btn-group">
															<button type="button" class="btn btn-xs btn-success"
																data-toggle="modal" data-target="#exampleModal"
																data-whatever="@getbootstrap">
																<i class="icon-ok bigger-120"></i>
															</button>															
															<button type="button" class="btn btn-xs btn-info"
																data-toggle="modal" data-target="#exampleModal"
																data-whatever="@getbootstrap">				
																<i class="icon-edit bigger-120"></i>
															</button>

															<button type="button" class="btn btn-xs btn-danger"
																data-toggle="modal" data-target="#exampleModal"
																data-whatever="@getbootstrap">
																<i class="icon-trash bigger-120"></i>
															</button>

															<button type="button" class="btn btn-xs btn-warning"
																data-toggle="modal" data-target="#exampleModal"
																data-whatever="@getbootstrap">
																<i class="icon-flag bigger-120"></i>
															</button>
														</div> 
														<div class="modal fade" id="exampleModal" tabindex="-1"
															role="dialog" aria-labelledby="exampleModalLabel">
															<div class="modal-dialog" role="document">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">&times;</span>
																		</button>
																		<h4 class="modal-title" id="exampleModalLabel"> Change Information Or View Information</h4>
																	</div>
																	<div class="modal-body">
																		<form>
																			<div class="form-group">
																				<label for="recipient-name" class="control-label">#:</label>
																				<input type="text" class="form-control"
																					id="pro1" value="1">
																			</div>
																			<div class="form-group">
																				<label for="recipient-name" class="control-label">Usercoding:</label>
																				<input type="text" class="form-control"
																					id="pro2" value="USER">
																			</div>
																			<div class="form-group">
																				<label for="recipient-name" class="control-label">Department:</label>
																				<input type="text" class="form-control"
																					id="pro3" value="部门经理">								
																			</div>
																			<div class="form-group">
																				<label for="recipient-name" class="control-label">Projectname:</label>
																				<input type="text" class="form-control"
																					id="pro4" value="XIGAO系统">
																					
																			</div><div class="form-group">
																				<label for="recipient-name" class="control-label">Company:</label>
																				<input type="text" class="form-control"
																					id="pro5" value="江苏BAT分公司">
																					
																			</div>
																			
																		</form>
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-default"
																			data-dismiss="modal">Close</button>
																		<button type="button" class="btn btn-primary">Save/Submit</button>
																	</div>
																</div>
															</div>
														</div>

														<div class="visible-xs visible-sm hidden-md hidden-lg">
															<div class="inline position-relative">
																<button
																	class="btn btn-minier btn-primary dropdown-toggle"
																	data-toggle="dropdown">
																	<i class="icon-cog icon-only bigger-110"></i>
																</button>

																<ul
																	class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																	<li><a href="#" class="tooltip-info"
																		data-rel="tooltip" title="View"> <span
																			class="blue"> <i
																				class="icon-zoom-in bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-success"
																		data-rel="tooltip" title="Edit"> <span
																			class="green"> <i class="icon-edit bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-error"
																		data-rel="tooltip" title="Delete"> <span
																			class="red"> <i class="icon-trash bigger-120"></i>
																		</span>
																	</a></li>
																</ul>
															</div>
														</div>
													</td>
											</tbody>
										</table>
									</div>
								</div>
							</div>
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
						<span>&nbsp; Choose Skin</span>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-navbar" /> <label class="lbl"
							for="ace-settings-navbar"> Fixed Navbar</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-sidebar" /> <label class="lbl"
							for="ace-settings-sidebar"> Fixed Sidebar</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-breadcrumbs" /> <label class="lbl"
							for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-rtl" /> <label class="lbl"
							for="ace-settings-rtl"> Right To Left (rtl)</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-add-container" /> <label class="lbl"
							for="ace-settings-add-container"> Inside <b>.container</b>
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
								+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<script src="assets/js/jquery.dataTables.min.js"></script>
	<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

	<!-- ace scripts -->

	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript">
		jQuery(function($) {
			var oTable1 = $('#sample-table-2').dataTable({
				"aoColumns" : [ {
					"bSortable" : false
				}, null, null, null, null, null, {
					"bSortable" : false
				} ]
			});

			$('table th input:checkbox').on(
					'click',
					function() {
						var that = this;
						$(this).closest('table').find(
								'tr > td:first-child input:checkbox').each(
								function() {
									this.checked = that.checked;
									$(this).closest('tr').toggleClass(
											'selected');
								});

					});

			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}
		})
	</script>
	<!-- exit -->
	<script type="text/javascript">
		/* 进入页面就加载数据 */
		window.onload = function() {
			$.ajax({
				url : "select",
				dataType : "json",
				success : function(rdata) {
					console.log(rdata);
					/* if(rdata.msg == "查询成功"){
						 
					}	 */
				},
				error : function(error) {
					console.log(error);
				}
			});
		}

		function exit() {
			$.ajax({
				url : "exit",
				dataType : "json",
				success : function(rdata) {
					alert(rdata.msg);
					if (rdata.msg == "退出成功，点击跳转到退出页面！") {
						window.location.href = "exit.jsp";
					}
				}
			});

		}
	</script>

</body>
</html>
