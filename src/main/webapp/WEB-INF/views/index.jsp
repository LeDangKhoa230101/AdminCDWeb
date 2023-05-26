<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/index.css" rel="stylesheet" type="text/css" />

<!-- Bao gồm Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Bao gồm Ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!-- Bao gồm jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bao gồm Bootstrap 5 JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<title>Insert title here</title>

</head>
<body>

	<div id="admin">
		<!-- Sidebar -->
		<div class="sidebar">
			<div class="sidedbar-header">
				<img alt="logo-admin" src="/images/AdminLTELogo.png"> <span>Admin</span>
			</div>
			<div class="user-admin">
				<img alt="logo-admin" src="/images/user2-160x160.jpg"> <span>Alex</span>
			</div>

			<!-- Tab items -->
			<div class="tabs">
				<a href="/" style="text-decoration: none;color: #f5f5f5;" class="tab-item active">
					Main Dashboard
				</a>
				<a href="/products" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
					Quản lý sản phẩm
				</a>
				<a href="/orders" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
					Quản lý hóa đơn
				</a>
				<a href="/login" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
					Đăng nhập
				</a>
				<a href="/register" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
					Đăng ký
				</a>
			</div>
		</div> 

		<!-- Content -->
		<div class="content">
			<!-- Tab content -->
			<div class="tab-content">
				<div class="tab-pane active">
					<h2>Dashboard</h2>
					
					<div class="container">
						<div class="row">
							<div class="col-3 px-2">
								<div class="dashboard-box" style="background-color: #17a2b8;">
									<div>
										<span>140</span>
										<p>Đơn hàng</p>
									</div>
									<i class="bi bi-bag"></i>
								</div>
							</div>
							<div class="col-3 px-2">
								<div class="dashboard-box" style="background-color: #28a745;">
									<div>
										<span>56%</span>
										<p>Tỷ lệ mua</p>
									</div>
									<i class="bi bi-bar-chart"></i>
								</div>
							</div>
							<div class="col-3 px-2">
								<div class="dashboard-box" style="background-color: #ffc107;">
									<div>
										<span>34</span>
										<p>Người đăng ký</p>
									</div>
									<i class="bi bi-person-plus-fill"></i>
								</div>
							</div>
							<div class="col-3 px-2">
								<div class="dashboard-box" style="background-color: #dc3545;">
									<div>
										<span>58</span>
										<p>Khách truy cập</p>
									</div>
									<i class="bi bi-pie-chart-fill"></i>
								</div>
							</div>
						</div>
					</div>
					
					<jsp:include page="charts.jsp"></jsp:include>
				</div>
				<div class="tab-pane"></div>
				<div class="tab-pane"></div>
			</div>
		</div>

	</div>

</body>
</html>