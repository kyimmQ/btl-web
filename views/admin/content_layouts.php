</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Navbar-->
		<nav class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links-->
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" data-widget="pushmenu" href="#" role="button">
						<i class="fas fa-bars"></i>
					</a>
				</li>
				<li class="nav-item d-none d-sm-inline-block">
					<a class="nav-link" href="index.php?page=admin&controller=layouts&action=index">Home</a>
				</li>
			</ul>
			<!-- Right navbar links-->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search-->
				<li class="nav-item">
					<a class="nav-link" data-widget="fullscreen" href="#" role="button">
						<i class="fas fa-expand-arrows-alt"></i>
					</a>
				</li>
				<li class="nav-item d-none d-sm-inline-block">
					<a class="nav-link" href="index.php?page=admin&controller=login&action=logout">Logout</a>
				</li>
			</ul>
		</nav>
		<!-- /.navbar-->
		<!-- Main Sidebar Container-->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo-->
			<!-- <a class="brand-link" href="index.php?page=admin&controller=layouts&action=index" style="margin-left:20px;">
				<h3>KMS<span style="color: #00BFFF;"> TECHNOLOGY</span>
			</a></h3> -->

			<a href="index.php?page=admin&controller=layouts&action=index" class="brand-link" >
				<img class="brand-image img-circle elevation-3" src="https://kms-technology.com/wp-content/uploads/2018/10/favicon.png" alt="KMS Logo" style="opacity: .8">
				<span class="brand-text font-weight-light" style="margin-left: 5px;"><strong>KMS</strong></span>
				<span class="brand-text font-weight-light" style="color: #00BFFF;"><strong>Technology</strong></span>
			</a>
			<!-- Sidebar-->
			<div class="sidebar">
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<?php
					echo ('
							<div class="info" style="margin:auto;">
								<a href="#" class="d-block style="color:#000000;">
									Xin chào 
						'
						. $_SESSION["user"] .
						' </a>
							</div>
						');

					?>
					
				</div>

				<!-- Sidebar Menu-->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
						<!--Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
						<?php
							if($_SESSION['init']==1){
								echo '
									<li class="nav-item">
										<a class="nav-link" href="index.php?page=admin&controller=admin&action=index">
											<i class="nav-icon fas fa-user-graduate"> </i>
											<p>Danh sách Admin</p>
										</a>
									</li>
								';
							}
						
						?>
						<li class="nav-item">
							<a class="nav-link" href="index.php?page=admin&controller=comments&action=index">
								<i class="nav-icon fas fa-comments"></i>
								<p>Bình luận đánh giá</p>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="index.php?page=admin&controller=user&action=index">
								<i class="nav-icon fas fa-users-cog"></i>
								<p>Liên hệ khách hàng</p>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="index.php?page=admin&controller=products&action=index">
								<i class="nav-icon fas fa-cube"></i>
								<p>Quản lý Sản phẩm</p>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="index.php?page=admin&controller=news&action=index">
								<i class="nav-icon fa fa-file" aria-hidden="true"></i>
								<p>Quản lý tin tức</p>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="index.php?page=admin&controller=company&action=index">
								<i class="nav-icon fa fa-newspaper" aria-hidden="true"></i>
								<p>Danh sách chi nhánh</p>
							</a>
						</li>
					</ul>
					<!-- Content Wrapper. Contains page content-->
				</nav>
			</div>
		</aside>