<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8" />
		<title>登录_配置管理系统_立阳产业</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!--basic styles-->

		<link href="res/sunshine/webadmin/web/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="res/sunshine/webadmin/web/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link href="res/sunshine/webadmin/web/assets/css/font-awesome.min.css" rel="stylesheet" />
		<link href="res/sunshine/webadmin/web/assets/css/ace.min.css" rel="stylesheet" />
		<link href="res/sunshine/webadmin/web/assets/css/ace-responsive.min.css" rel="stylesheet" />
		<link href="res/sunshine/webadmin/web/assets/css/ace-skins.min.css" rel="stylesheet" />



		<!--inline styles related to this page-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	

	<body class="login-layout">
	
		<div class="main-container container-fluid">
			<div class="main-content">
				<div class="row-fluid">
					<div class="span12">
						<div class="login-container">
						
						    <div class="space-6"></div>
						
							<div class="row-fluid">
								<div class="center">
									<h1>
										<i class="icon-leaf green"></i>
										<span class="red">Ace</span>
										<span class="white">配置管理系统</span>
									</h1>
									<h4 class="blue">&copy; 立阳产业</h4>
								</div>
							</div>

							<div class="space-6"></div>

							<div class="row-fluid">
								<div class="position-relative">
									<div id="login-box" class="login-box visible widget-box no-border">
										<div class="widget-body">
											<div class="widget-main">
												<h4 class="header blue lighter bigger">
													<i class="icon-coffee green"></i>
													请输入你的信息
												</h4>

												<div class="space-6"></div>

												<form id="login">
													<fieldset>
														<label>
															<span class="block input-icon input-icon-right">
																<input type="text" name="username" class="span12" placeholder="账号" />
																<i class="icon-user"></i>
															</span>
														</label>

														<label>
															<span class="block input-icon input-icon-right">
																<input type="password" class="span12" placeholder="密码" />
																<i class="icon-lock"></i>
															</span>
														</label>

														<div class="space"></div>

														<div class="clearfix">
															<label class="inline">
																<input type="checkbox" />
																<span class="lbl"> 下一次自动登录</span>
															</label>

															<button type="button" onclick="login();" class="width-35 pull-right btn btn-small btn-primary">
																<i class="icon-key"></i>
																登录
															</button>
														</div>

														<div class="space-4"></div>
													</fieldset>
												</form>

											
											</div><!--/widget-main-->

										</div><!--/widget-body-->
									</div><!--/login-box-->

								</div><!--/position-relative-->
							</div>
						</div>
					</div><!--/.span-->
				</div><!--/.row-fluid-->
			</div>
		</div><!--/.main-container-->

		<!--basic scripts-->

		

		
		<script src="res/sunshine/webadmin/web/assets/js/jquery-2.0.3.min.js"></script>
		<script src="res/sunshine/webadmin/web/assets/js/bootstrap.min.js"></script>
		<script src="res/sunshine/webadmin/web/assets/js/ace-elements.min.js"></script>
		<script src="res/sunshine/webadmin/web/assets/js/ace.min.js"></script>

		<!--inline scripts related to this page-->

		<script type="text/javascript">
			function show_box(id) {
			 $('.widget-box.visible').removeClass('visible');
			 $('#'+id).addClass('visible');
			}
			
			//登录
			function login() {
				location = 'login.do';
			}
		</script>
	</body>
</html>
