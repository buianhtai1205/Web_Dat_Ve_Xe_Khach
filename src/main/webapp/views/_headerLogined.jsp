<%@page import="utils.Router"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header -->
<header class="container-fluid myNavBar">
	<nav class="navbar navbar-expand-md navbar-light">
		<div class="col-md-8 col-xl-7 col-lg-9 col-sm-6 d-flex">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">
				<img src="assets/user/images/logo4.png" alt="">
			</a>
			<!-- 	<div class="Categories">
				<i class="fa fa-th"></i> Categories
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
					<li class="nav-item business"><a class="nav-link"
						href="${pageContext.request.contextPath}/<%= Router.INFO_TICKET%>">
							<i class="fas mr-2 fa-bus-alt"> </i>Quản lý vé
					</a></li>
					<li class="nav-item teach"><a class="nav-link" href="#"></a></li>
					<li class="nav-item">
						<div class="drop">
							<div class="dropdown">
								<button class="dropdown__btn d-flex">
									<i class="fas fa-user"></i>
								</button>
								<div class="dropdown__list">
									<a
										href="${pageContext.request.contextPath}/<%= Router.USER_INFO_VIEW%>"
										class="dropdown__item"><i class="fas mr-2 fa-user-alt"></i></i>Thông
										tin tài khoản</a> <a href="${pageContext.request.contextPath}/"
										class="dropdown__item"><i class="fas mr-2 fa-sign-out-alt"></i>Đăng
										xuất</a>
								</div>
							</div>
						</div>
					</li>

				</ul>
			</div>
		</div>


	</nav>
</header>
