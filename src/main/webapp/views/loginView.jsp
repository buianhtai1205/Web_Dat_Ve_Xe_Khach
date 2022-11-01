<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Customer"%>
<!DOCTYPE html>
<html>
<body>
	<section class="dangnhap">
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-xl">
				<div class="modal-content  login">
					<div class="modal-bodys">
						<div class="container ">
							<div class="log__content">
								<div class="left">
									<div class="logo">
										<img src="assets/user/images/icon_vxr_full.svg" alt="">

									</div>

									<div class="log">
										<img alt="" src="assets/user/images/buy_ticket_login.jpg"
											style="width: 300px; height: 300px;">
									</div>
								</div>

								<div class="right">

									<H2>Login to your account</H2>
									<!--  <p class="right__title">Don't have an account? <a href="">Sign up free</a></p> -->
									<div class="alert  d-flex align-items-center" role="alert">
										<!-- <svg class="bi flex-shrink-0 me-2" role="img"
											aria-label="Danger:">
											<use xlink:href="#exclamation-triangle-fill" /></svg> -->
										<div>${errorString}</div>
									</div>

									<form action="login" method="POST">
										<div class="form-group ">
											<input type="text" class="form-control top"
												id="exampleInputPhone" aria-describedby="phoneHelp"
												placeholder="Phone number" name="numberPhone"
												value="${user.numberPhone}" required>
											<div class="invalid-feedback">Please enter your number
												phone in the textarea.</div>
										</div>
										<div class="form-group ">
											<input type="password" class="form-control top"
												id="exampleInputPassword1" placeholder="Password" required
												name="password" value="${user.password}">

										</div>
										<div class="form-group form-check content">
											<input type="checkbox" class="form-check-input"
												id="exampleCheck1" name="rememberMe" value="Y"> <label
												class="form-check-label" for="exampleCheck1">Remember</label>
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
</body>
</html>