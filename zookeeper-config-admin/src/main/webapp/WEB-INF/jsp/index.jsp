<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8" />
		<title>后台管理系统 - 立阳产业</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<link href="res/sunshine/webadmin/web/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="res/sunshine/webadmin/web/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link href="res/sunshine/webadmin/web/assets/css/font-awesome.min.css" rel="stylesheet"/>
		<link href="res/sunshine/webadmin/web/assets/css/ace.min.css" rel="stylesheet"/>
		<link href="res/sunshine/webadmin/web/assets/css/ace-responsive.min.css" rel="stylesheet"/>
		<link href="res/sunshine/webadmin/web/assets/css/ace-skins.min.css" rel="stylesheet"/>

	
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

	<body>
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a href="#" class="brand">
						<small>
							<i class="icon-leaf"></i>
							立阳产业
						</small>
					</a><!--/.brand-->

					<ul class="nav ace-nav pull-right">
						
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎,</small>
									管理员
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
	

								<li>
									<a href="#">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!--/.ace-nav-->
				</div><!--/.container-fluid-->
			</div><!--/.navbar-inner-->
		</div>

		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-small btn-success">
							<i class="icon-signal"></i>
						</button>

						<button class="btn btn-small btn-info">
							<i class="icon-pencil"></i>
						</button>

						<button class="btn btn-small btn-warning">
							<i class="icon-group"></i>
						</button>

						<button class="btn btn-small btn-danger">
							<i class="icon-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!--#sidebar-shortcuts-->

				<ul class="nav nav-list">
				    <!-- 菜单拉取 -->
				    <c:forEach var="item" items="${menus}">
				      <!-- 是否为显示项 -->
				      <c:if test="${item.active }"><li class="active"></c:if>
				      <c:if test="${!item.active }"><li></c:if>	
				      
				      <!-- 没有子菜单 -->
				      <c:if test="${!item.dropdown }">
				         <a href="${item.href}">
							<i class="${item.icon }"></i>
							<span class="menu-text">${item.name }</span>
						 </a>
				      </c:if>	
				      
				      <!-- 拥有子菜单 -->
				      <c:if test="${item.dropdown }">
				        <a href="#" class="dropdown-toggle">
							<i class="${item.icon }"></i>
							<span class="menu-text">${item.name }</span>
							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
						    <c:forEach var="submenu" items="${item.submenu}">
							    <li>
									<a href="${submenu.href}">
										<i class="icon-double-angle-right"></i>
										${submenu.name }
									</a>
								</li>
						    </c:forEach>
							
						</ul>
				      </c:if>			 
						
					  
		  			 </c:forEach>
				    
				    
					
					<li>
						<a href="typography.html">
							<i class="icon-text-width"></i>
							<span class="menu-text"> Typography </span>
						</a>
					</li>

					<li>
						<a href="#" class="dropdown-toggle">
							<i class="icon-desktop"></i>
							<span class="menu-text"> UI Elements </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a href="elements.html">
									<i class="icon-double-angle-right"></i>
									Elements
								</a>
							</li>

							<li>
								<a href="buttons.html">
									<i class="icon-double-angle-right"></i>
									Buttons &amp; Icons
								</a>
							</li>

							<li>
								<a href="treeview.html">
									<i class="icon-double-angle-right"></i>
									Treeview
								</a>
							</li>

							<li>
								<a href="#" class="dropdown-toggle">
									<i class="icon-double-angle-right"></i>

									Three Level Menu
									<b class="arrow icon-angle-down"></b>
								</a>

								<ul class="submenu">
									<li>
										<a href="#">
											<i class="icon-leaf"></i>
											Item #1
										</a>
									</li>

									<li>
										<a href="#" class="dropdown-toggle">
											<i class="icon-pencil"></i>

											4th level
											<b class="arrow icon-angle-down"></b>
										</a>

										<ul class="submenu">
											<li>
												<a href="#">
													<i class="icon-plus"></i>
													Add Product
												</a>
											</li>

											<li>
												<a href="#">
													<i class="icon-eye-open"></i>
													View Products
												</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>

					<li>
						<a href="tables.html">
							<i class="icon-list"></i>
							<span class="menu-text"> Tables </span>
						</a>
					</li>

					<li>
						<a href="#" class="dropdown-toggle">
							<i class="icon-edit"></i>
							<span class="menu-text"> Forms </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a href="form-elements.html">
									<i class="icon-double-angle-right"></i>
									Form Elements
								</a>
							</li>

							<li>
								<a href="form-wizard.html">
									<i class="icon-double-angle-right"></i>
									Wizard &amp; Validation
								</a>
							</li>

							<li>
								<a href="wysiwyg.html">
									<i class="icon-double-angle-right"></i>
									Wysiwyg &amp; Markdown
								</a>
							</li>
						</ul>
					</li>

					<li>
						<a href="widgets.html">
							<i class="icon-list-alt"></i>
							<span class="menu-text"> Widgets </span>
						</a>
					</li>

					<li>
						<a href="calendar.html">
							<i class="icon-calendar"></i>

							<span class="menu-text">
								Calendar
								<span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">
									<i class="icon-warning-sign red bigger-130"></i>
								</span>
							</span>
						</a>
					</li>

					<li>
						<a href="gallery.html">
							<i class="icon-picture"></i>
							<span class="menu-text"> Gallery </span>
						</a>
					</li>

					<li>
						<a href="#" class="dropdown-toggle">
							<i class="icon-tag"></i>
							<span class="menu-text"> More Pages </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a href="profile.html">
									<i class="icon-double-angle-right"></i>
									User Profile
								</a>
							</li>

							<li>
								<a href="pricing.html">
									<i class="icon-double-angle-right"></i>
									Pricing Tables
								</a>
							</li>

							<li>
								<a href="invoice.html">
									<i class="icon-double-angle-right"></i>
									Invoice
								</a>
							</li>

							<li>
								<a href="login.html">
									<i class="icon-double-angle-right"></i>
									Login &amp; Register
								</a>
							</li>
						</ul>
					</li>

					<li>
						<a href="#" class="dropdown-toggle">
							<i class="icon-file-alt"></i>

							<span class="menu-text">
								Other Pages
								<span class="badge badge-primary ">4</span>
							</span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a href="error-404.html">
									<i class="icon-double-angle-right"></i>
									Error 404
								</a>
							</li>

							<li>
								<a href="error-500.html">
									<i class="icon-double-angle-right"></i>
									Error 500
								</a>
							</li>

							<li>
								<a href="grid.html">
									<i class="icon-double-angle-right"></i>
									Grid
								</a>
							</li>

							<li>
								<a href="blank.html">
									<i class="icon-double-angle-right"></i>
									Blank Page
								</a>
							</li>
						</ul>
					</li>
				</ul><!--/.nav-list-->

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="icon-home home-icon"></i>
							<a href="#">Home</a>

							<span class="divider">
								<i class="icon-angle-right arrow-icon"></i>
							</span>
						</li>
						<li class="active">Dashboard</li>
					</ul><!--.breadcrumb-->

					
				</div>

				<div class="page-content">
					
                        this is content
				</div><!--/.page-content-->

			</div><!--/.main-content-->
		</div><!--/.main-container-->

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only bigger-110"></i>
		</a>

		


		
		<script src="res/sunshine/webadmin/web/assets/js/jquery-2.0.3.min.js"></script>
		<script src="res/sunshine/webadmin/web/assets/js/bootstrap.min.js"></script>
		<script src="res/sunshine/webadmin/web/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="res/sunshine/webadmin/web/assets/js/jquery.ui.touch-punch.min.js"></script>

		<script src="res/sunshine/webadmin/web/assets/js/ace-elements.min.js"></script>
		<script src="res/sunshine/webadmin/web/assets/js/ace.min.js"></script>


		<script type="text/javascript">
			$(function() {
				
			
		
			
			});
		</script>
	</body>
</html>
