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
				<div class="tab-item active">
					Main Dashboard
				</div>
				<div class="tab-item">
					Quản lý sản phẩm
				</div>
				<div class="tab-item">
					Quản lý hóa đơn
				</div>
				<div class="tab-item">
					Đăng nhập
				</div>
				<div class="tab-item">
					Đăng ký
				</div>
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
				<div class="tab-pane">
					<h2>Quản lý sản phẩm</h2>
					
					<jsp:include page="product-manage.jsp"></jsp:include>
					
					<jsp:include page="product-edit.jsp"></jsp:include>
					
					<jsp:include page="product-add.jsp"></jsp:include> 
					
				</div>
				<div class="tab-pane">
					<h2>Quản lý hóa đơn</h2>
					
					<jsp:include page="order-list.jsp"></jsp:include>

					<jsp:include page="order-detail.jsp"></jsp:include>	
				</div>
				<div class="tab-pane">
					<div class="modal-form">
						<form action="" class="login-form">
							<h3>Đăng nhập</h3>
							<div class="form-body">
								<label for="email" class="form-label">Email:</label> 
								<input id="email-login" type="email" class="form-control form-input" placeholder="name@example.com">
							</div> 
							<div class="form-body">
								<label for="password" class="form-label">Mật khẩu:</label> 
								<input id="pass-login" type="password" class="form-control form-input">
							</div>
							<button type="submit" class="btn-login">Đăng nhập</button>
						</form>
					</div>
				</div>
				<div class="tab-pane">
					<div class="modal-form">
						<form action="" class="signup-form">
							<h3>Đăng ký</h3>
							<div class="form-body">
								<label for="email" class="form-label">Email:</label> 
								<input id="email-signup" type="email" class="form-control form-input" placeholder="name@example.com">
							</div>
							<div class="form-body">
								<label for="lastName" class="form-label">Họ:</label> 
								<input id="lastName-signup" type="text" class="form-control form-input">
							</div>
							<div class="form-body">
								<label for="firstName" class="form-label">Tên:</label> 
								<input id="firstName-signup" type="text" class="form-control form-input">
							</div>
							<div class="form-body">
								<label for="password" class="form-label">Mật khẩu:</label> 
								<input id="pass-signup" type="password" class="form-control form-input password">
							</div>
							<div class="form-body">
								<label for="confim-password" class="form-label">Nhập lại mật khẩu:</label> 
								<input id="confirm-pass" type="password" class="form-control form-input confim-password">
							</div>
							<button type="submit" class="btn-signup">Đăng ký</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

<script type="text/javascript">
	// tab ui
	const tabs = document.querySelectorAll(".tab-item");
	const panes = document.querySelectorAll(".tab-pane");

	tabs.forEach((tab, index) => {
		const pane = panes[index];
		
		tab.onclick = function() {
			$('.tab-item.active').removeClass('active');
			$('.tab-pane.active').removeClass('active');
			
			this.classList.add('active');
			pane.classList.add('active');
		}
	})
	
	// choose file image edit
	const imageInput = document.getElementById("avatar-input");
	const image = document.getElementById("avatar");
	
	function chooseFile() {
		imageInput.click();
	}
	
	imageInput.addEventListener("change", function() {
		var reader = new FileReader();
		
		reader.onload = function(e) {
			image.src = e.target.result;
		}
		reader.readAsDataURL(this.files[0]);
	});
	

	// choose file image add
	const imageAddInput = document.getElementById("image-add-input");
	const imageAdd = document.getElementById("image-add");
	
	function chooseFileAdd() {
		imageAddInput.click();
	}
	
	imageAddInput.addEventListener("change", function() {
		var reader = new FileReader();
		
		reader.onload = function(e) {
			imageAdd.src = e.target.result;
		}
		reader.readAsDataURL(this.files[0]);
	});
	
	// hiển thị trang edit và add product
	const productManage = $(".product-manage");
	const productEdit = $(".product-edit");
	const productAdd = $(".product-add");
	const editBackBtn = $(".product-edit-back--btn");
	const addBackBtn = $(".product-add-back--btn");
	
	$(document).ready(function() {
		$(".table-btn-edit").click(function() {
			productManage.css("display", "none");
			productEdit.css("display", "block");
		})
		
		editBackBtn.click(function() {
			productManage.css("display", "block");
			productEdit.css("display", "none");
		})
		
		$(".add-product-btn").click(function() {
			productManage.css("display", "none");
			productAdd.css("display", "block");
		})
		
		addBackBtn.click(function() {
			productManage.css("display", "block");
			productAdd.css("display", "none");
		})
	})
	
	// display order detail
	$(document).ready(function() {
		$(".table-btn-eye").click(function() {
			$(".order-manage").css("display", "none");
			$(".order-detail").css("display", "block");
		})
		
		$(".order-back-btn").click(function() {
			$(".order-manage").css("display", "block");
			$(".order-detail").css("display", "none");
		})
	})
	
</script>

</body>
</html>