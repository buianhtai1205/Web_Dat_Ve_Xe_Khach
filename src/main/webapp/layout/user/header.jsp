<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header -->

<!doctype html>
<html lang="en">

<head>
<title>HomePage</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="assets/user/css/index.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- owlCousel -->
<link rel="stylesheet" href="assets/lib/owl.carousel.min.css">
<link rel="stylesheet" href="assets/lib/owl.theme.default.min.css">

<!-- slick -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css"
	integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A=="
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css"
	integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
	crossorigin="anonymous" />

</head>

<body>

	<header class="container-fluid myNavBar">
		<nav class="navbar navbar-expand-md navbar-light">
			<div class="col-md-8 col-xl-7 col-lg-9 col-sm-6 d-flex">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">
					<img src="assets/user/images/logo4.png" alt="logo">
				</a>
				<!--  <div class="Categories">
          <i class="fa fa-th"></i>
          Categories
        </div> -->
				<div class="input-search">
					<form action="abc.com">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for anything">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-search"></i>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-4 col-xl-5 col-lg-3 col-sm-4">
				<div class="collapse navbar-collapse" id="collapsibleNavId">
					<ul class="navbar-nav">
						<li class="nav-item business"><a class="nav-link" href="#">Thuê
								xe</a></li>
						<li class="nav-item teach"><a class="nav-link" href="#">Quản
								lý Chuyến đi</a></li>
						<li class="nav-item">
							<!--   <div class="drop">
                <div class="dropdown">
                  <button class="dropdown__btn d-flex">
                    <i class="fas fa-user"></i>
                  </button>
                  <div class="dropdown__list">
                    <a href="#" class="dropdown__item"><i class="fas mr-2 fa-user-alt"></i></i>Thông tin tài khoản</a>
                    <a href="#" class="dropdown__item"><i class="fas mr-2 fa-bus-alt"></i>Quản lý chuyến đi</a>
                    <a href="#" class="dropdown__item"><i class="fas mr-2 fa-charging-station"></i>Quản lý trạm</a>
                    <a href="#" class="dropdown__item"><i class="fas mr-2 fa-sign-out-alt"></i>Đăng xuất</a>
                  </div>
                </div>
              </div> -->
						</li>
						<li class="nav-item item4 ">
							<div class="d-flex">


								<button type="button" class="btn btn--white mr-2"
									data-toggle="modal" data-target="#exampleModal">Login</button>
							</div>
						</li>
					</ul>
				</div>
			</div>

			<button class="navbar-toggler d-lg-none col-sm-2" type="button"
				data-toggle="collapse" data-target="#collapsibleNavId"
				aria-controls="collapsibleNavId" aria-expanded="false"
				aria-label="Toggle navigation ">
				<span class="navbar-toggler-icon"></span>
			</button>
		</nav>
	</header>
	<!-- đăng nhập -->
	<%@ include file="/views/loginView.jsp"%>
</body>

</html>



