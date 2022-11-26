<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Customer"%>
<!DOCTYPE html>
<html>
<style>
.invalid {
	border-color: red !important;
}

#error {
	color: red
}

#error2 {
	color: red
}
</style>
<head>
<link rel="stylesheet" href="../assets/user/css/index.css">
<script src="/assets/lib/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="/assets/lib/dist/sweetalert2.min.css">
<link rel="stylesheet" href="/assets/lib/dist/sweetalert2.css">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>


	<section class="dangnhap">
		<div class="modal" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true"
			>
			<div class="modal-dialog modal-dialog-centered modal-xl">
				<div class="modal-content  login">
					<div class="modal-bodys">
						<div class="container ">
							<div class="log__content">
								<div class="left">
									<div class="logo">
										<img src="assets/user/images/logo4.png" alt="">

									</div>

									<div class="log">
										<img alt="" src="assets/user/images/buy_ticket_login.jpg"
											style="width: 300px; height: 300px;">
									</div>
								</div>

								<div class="right">
									<div class=""
										style="display: flex; justify-content: flex-end; margin: -25px 15px 0 0; height: auto">

										<a class="" href="${pageContext.request.contextPath}/">
											<button type="button"
												class="btn btn-outline-danger btn-sm btn-close"
												data-bs-dismiss="modal" aria-label="Close">X</button>
										</a>
									</div>
									<H2>Login to your account</H2>
									<!--  <p class="right__title">Don't have an account? <a href="">Sign up free</a></p> -->
									<div class="alert  d-flex align-items-center" role="alert">
										<!-- <svg class="bi flex-shrink-0 me-2" role="img"
											aria-label="Danger:">
											<use xlink:href="#exclamation-triangle-fill" /></svg> -->
										<div>${errorString}</div>
									</div>

									<form action="${pageContext.request.contextPath}/login"
										method="POST">
										<div class="form-group ">
											<input type="text" class="form-control top" id="input"
												aria-describedby="phoneHelp" placeholder="Phone number"
												name="numberPhone" value="${user.phone_number}" required>
											<div>
												<p id="error"></p>
											</div>
										</div>


										<div class="form-group ">
											<input type="password" class="form-control top" id="password"
												placeholder="Password" required name="password"
												value="${user.password}">
											<div>
												<p id="error2"></p>
											</div>
										</div>

										<div class="form-group form-check content">
											<a class="forgot" href="login" style="text-decoration: none;">Forgot
												password</a>
										</div>
										<button class="button3" type="submit">Login</button>
									</form>


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<script type="text/javascript">
		function validatePhoneNumber(input_str) {
			var re = /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;

			return re.test(input_str);
		}

		var input = document.getElementById("input");
		var password = document.getElementById("password");
		input.onblur = function() {
			if (!validatePhoneNumber(input.value)) {
				input.classList.add('invalid');
				error.innerHTML = 'Please enter a correct number phone.'
			}
		};

		input.onfocus = function() {
			if (this.classList.contains('invalid')) {

				this.classList.remove('invalid');
				error.innerHTML = "";
			}
		};

		password.onblur = function() {
			if (password.value.length === 0) {
				password.classList.add('invalid');
				error2.innerHTML = 'Please enter a correct password.'

			}
		};

		password.onfocus = function() {
			if (this.classList.contains('invalid')) {

				this.classList.remove('invalid');
				error2.innerHTML = "";
			}
		};

		function sweetAlert() {
			Swal.fire({
				title : 'Error!',
				text : 'Do you want to continue',
				icon : 'error',
				confirmButtonText : 'Cool'
			})
		}
		sweetAlert();
	</script>
</body>
</html>