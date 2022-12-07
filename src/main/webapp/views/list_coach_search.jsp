<%@page import="java.util.ArrayList"%>
<%@page import="connect_db.SQLServerConnUtils_SQLJDBC"%>
<%@page import="DAO.TripDAO"%>
<%@page import="utils.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Trip"%>
<%@page import="model.Seat"%>
<%@page import="java.util.List"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="utils.Router"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List Coach</title>

<!-- font awesome -->

<link rel="stylesheet" type="text/css" href="../assets/user/css/index.css">
<link rel="stylesheet" type="text/css"
	href="../assets/user/css/xe16.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<!-- owlCousel -->
<link rel="stylesheet" href="../assets/lib/owl.carousel.min.css">
<link rel="stylesheet" href="../assets/lib/owl.theme.default.min.css">

<!-- slick -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet" href="../assets/user/css/listCoachSearch.css">
<link rel="stylesheet" type="text/css" href="/assets/user/css/timve.css">
<link rel="stylesheet" type="text/css" href="/assets/user/css/util.css">

<link rel="stylesheet" type="text/css"
	href="/assets/user/css/sweet-alert.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript"
	src="/Web_Dat_Ve_Xe_Khach/js/sweet-alert.min.js"></script>
<script type="text/javascript"
	src="/Web_Dat_Ve_Xe_Khach/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="/Web_Dat_Ve_Xe_Khach/js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="/Web_Dat_Ve_Xe_Khach/js/util.js"></script>
<script type="text/javascript" src="/Web_Dat_Ve_Xe_Khach/js/xe.js"></script>
<style type="text/css">
.invalid ,.invalid2{
	border-color: red !important;
}

#error1,#error2,#error3,#errorPhone{
	color: red
}

</style>


<script type="text/javascript">
function chonXe(scrollid,time, chuyenDiOrVe, chuyen, id) {
/* 		console.log(id); */
		console.log(chuyen)
}

  
function choose1(id) {
	const div1 = document.getElementsByClassName('ghe')[0];
	var idGhe = div1.getAttribute('id');
	
	const input = document.getElementById('inputGheDangChon');

	
	input.setAttribute('value',id);
	console.log(input.getAttribute('value'))

}
</script>
</head>

<body>

	<%@ include file="../layout/user/header.jsp"%>
	<!-- body -->
	<section class="mid" style="padding: 40px 135px;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-4">
					<div
						class="boloc animate__animated animate__fadeInLeft animate__delay-1s"
						style="font-size: 16px;">
						<p>Bộ lọc tìm kiếm</p>
						<p class="clear">Xóa lọc</p>

					</div>

					<div
						class="mid__left animate__animated animate__fadeInLeft animate__delay-1s"
						style="width: fix-content; font-size: 16px;">

						<div class="giodi" style="font-size: 16px;">
							<div class="giodi_test">
								<p>Sáng sớm</p>
								<p>00:00-06:00</p>
							</div>
							<div class="giodi_test">
								<p>Sáng sớm</p>
								<p>00:00-06:00</p>
							</div>
							<div class="giodi_test">
								<p>Sáng sớm</p>
								<p>00:00-06:00</p>
							</div>
							<div class="giodi_test">
								<p>Sáng sớm</p>
								<p>00:00-06:00</p>
							</div>
						</div>


						<div class="giave" style="font-size: 16px;">
							<form>
								<div class="form-group">
									<label for="formControlRange">Giá vé</label> <input
										type="range" class="form-control-range" id="formControlRange">
									<div class="info">
										<p>0</p>
										<p>20000</p>
									</div>
								</div>
							</form>
						</div>

						<div class="vitrighe" style="font-size: 16px;">
							<p>Chọn Vị Trí Ghế</p>
							<div class="hangghe">
								<span class="chair">Hàng ghế Trống</span>
								<div class="add">
									<button class="add__ve" id="button1">
										<i class="fa fa-plus"></i>
									</button>
									<p>1</p>
									<button class="add__ve" id="button2">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="border"></div>
							<div class="hangghe">
								<span class="chair">Hàng ghế Đầu</span> <input type="checkbox"
									name="check" id="hangghe">
							</div>
							<div class="border"></div>
							<div class="hangghe">
								<span class="chair">Hàng ghế Giữa</span> <input type="checkbox"
									name="check" id="hangghe">
							</div>
							<div class="border"></div>
							<div class="hangghe">
								<span class="chair">Hàng ghế Cuối</span> <input type="checkbox"
									name="check" id="hangghe">
							</div>
							<div class="border"></div>
						</div>

						<div class="nhaxe">
							<p>Nhà xe</p>
							<input type="text" class="nhaxe__nav" placeholder="Tìm Nhà Xe">
							<div class="scroll">
								<div class="nhaxe_scroll" id="list1" type="checkbox">
									<input type="checkbox" name="check"> <span>Anh
										thư</span>
								</div>
								<div class="nhaxe_scroll" id="list2" type="checkbox">
									<input type="checkbox" name="check"> <span>Anh
										Đạt</span>
								</div>
								<div class="nhaxe_scroll" id="list3" type="checkbox">
									<input type="checkbox" name="check"> <span>Tân
										Phát</span>
								</div>
								<div class="nhaxe_scroll" id="list4" type="checkbox">
									<input type="checkbox" name="check"> <span>Anh
										ba</span>
								</div>
								<div class="nhaxe_scroll" id="list5" type="checkbox">
									<input type="checkbox" name="check"> <span>Chú
										Tư</span>
								</div>
								<div class="nhaxe_scroll" id="list6" type="checkbox">
									<input type="checkbox" name="check"> <span>Anh
										long</span>
								</div>
								<div class="nhaxe_scroll" id="list7" type="checkbox">
									<input type="checkbox" name="check"> <span>Anh
										bảnh</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Chú
										Dần</span>
								</div>

							</div>
						</div>

						<div class="nhaxe">
							<p>Điểm Đón</p>
							<input type="text" class="nhaxe__nav" placeholder="Tìm Nhà Xe">
							<div class="scroll">
								<div class="nhaxe_scroll" id="list1" type="checkbox">
									<input type="checkbox" name="check"> <span>Thủ
										Đức</span>
								</div>
								<div class="nhaxe_scroll" id="list2" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										12</span>
								</div>
								<div class="nhaxe_scroll" id="list3" type="checkbox">
									<input type="checkbox" name="check"> <span>Bình
										Thạnh</span>
								</div>
								<div class="nhaxe_scroll" id="list4" type="checkbox">
									<input type="checkbox" name="check"> <span>Gò
										Vấp</span>
								</div>
								<div class="nhaxe_scroll" id="list5" type="checkbox">
									<input type="checkbox" name="check"> <span>Tân
										Bình</span>
								</div>
								<div class="nhaxe_scroll" id="list6" type="checkbox">
									<input type="checkbox" name="check"> <span>Thuận
										An</span>
								</div>
								<div class="nhaxe_scroll" id="list7" type="checkbox">
									<input type="checkbox" name="check"> <span>Tân
										Phú</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>An
										Phú</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Phú
										Nhuận</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										9</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										10</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										3</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>QUận
										1</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Thủ
										Dầu 1</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										2 </span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										4</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										6</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Hóc
										Môn</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										7</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Quận
										8</span>
								</div>
							</div>
						</div>

						<div class="nhaxe">
							<p>Điểm Trả</p>
							<input type="text" class="nhaxe__nav" placeholder="Tìm Nhà Xe">
							<div class="scroll">
								<div class="nhaxe_scroll" id="list1" type="checkbox">
									<input type="checkbox" name="check"> <span>Buôn
										Mê Thuật</span>
								</div>
								<div class="nhaxe_scroll" id="list2" type="checkbox">
									<input type="checkbox" name="check"> <span>krong
										Pak</span>
								</div>
								<div class="nhaxe_scroll" id="list3" type="checkbox">
									<input type="checkbox" name="check"> <span>Buôn
										Hồ</span>
								</div>
								<div class="nhaxe_scroll" id="list4" type="checkbox">
									<input type="checkbox" name="check"> <span>Gia
										Nghĩa</span>
								</div>
								<div class="nhaxe_scroll" id="list5" type="checkbox">
									<input type="checkbox" name="check"> <span>Dak
										milk</span>
								</div>
								<div class="nhaxe_scroll" id="list6" type="checkbox">
									<input type="checkbox" name="check"> <span>Buôn
										Đôn</span>
								</div>
								<div class="nhaxe_scroll" id="list7" type="checkbox">
									<input type="checkbox" name="check"> <span>krong
										Ana</span>
								</div>
								<div class="nhaxe_scroll" id="list8" type="checkbox">
									<input type="checkbox" name="check"> <span>Cư
										M'gar</span>
								</div>

							</div>
						</div>

						<div class="giuong">
							<p>Loại ghế / giường</p>
							<div class="bed__chair">
								<div class="bed">
									<input type="checkbox" name="check" id="hangghe"> <span
										class="bed__">Ghế Ngồi</span>

								</div>

								<div class="bed">
									<input type="checkbox" name="check" id="hangghe"> <span
										class="chair">Giường Nằm Đôi</span>

								</div>
							</div>
						</div>

						<div class="cmt">
							<p>Đánh Giá</p>
							<div class="top">
								<div class="start">
									<i class="fa fa-star sta"></i> <i class="fa fa-star sta"></i> <i
										class="fa fa-star sta"></i> <i class="fa fa-star sta"></i> <i
										class="fa fa-star"></i>
								</div>
								<p>trở lên</p>
							</div>
							<div class="top">
								<div class="start">
									<i class="fa fa-star sta"></i> <i class="fa fa-star sta"></i> <i
										class="fa fa-star sta"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<p>trở lên</p>
							</div>
							<div class="top">
								<div class="start">
									<i class="fa fa-star sta"></i> <i class="fa fa-star sta"></i> <i
										class="fa fa-star "></i> <i class="fa fa-star "></i> <i
										class="fa fa-star"></i>
								</div>
								<p>trở lên</p>
							</div>
							<div class="top">
								<div class="start">
									<i class="fa fa-star sta"></i> <i class="fa fa-star "></i> <i
										class="fa fa-star "></i> <i class="fa fa-star "></i> <i
										class="fa fa-star"></i>
								</div>
								<p>trở lên</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-8">
					<div
						class="mid__right animate__animated animate__fadeInRight animate__delay-1s">
						<!-- <h2>Đặt mua vé xe đi Đắk Lắk từ Sài Gòn chất lượng cao và giá vé ưu đãi nhất: 296 chuyến</h2>
                        <div class="flash__sale">
                            <img class="animate__animated animate__fadeInRight animate__delay-1s"
                                src="assets/user/images/img2.jpg" alt="">
                            <img class="img1 animate__animated animate__fadeInRight animate__delay-2s"
                                src="assets/user/images/img5.jpg" alt="">
                            <img class="img1 animate__animated animate__fadeInRight animate__delay-3s"
                                src="assets/user/images/img1.jpg" alt="">
                            <img class="img1 animate__animated animate__fadeInRight animate__delay-3.5s"
                                src="assets/user/images/img4.jpg" alt="">
                        </div> -->



						<div class="project__content">
							<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist"
								style="font-size: 16px;">
								<span>Sắp xếp theo:</span>
								<li class="nav-item" role="presentation"><a
									class="nav-link active" id="pills-home-tab" data-toggle="pill"
									href="#all" role="tab" aria-controls="pills-home"
									aria-selected="true">Giờ sớm nhất</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="pills-profile-tab" data-toggle="pill"
									href="#pills-profile" role="tab" aria-controls="pills-profile"
									aria-selected="false">Giờ muộn nhất</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="pills-contact-tab" data-toggle="pill"
									href="#pills-contact" role="tab" aria-controls="pills-contact"
									aria-selected="false">Giá thấp nhất</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="pills-website-tab" data-toggle="pill"
									href="#pills-website" role="tab" aria-controls="pills-website"
									aria-selected="false">Giá cao nhất</a></li>
							</ul>

							<div class="tab-content" id="pills-tabContent">
								<form action="${pageContext.request.contextPath}/dat_ve"
									method="POST">
									<div class="tab-pane fade show active" id="all" role="tabpanel"
										aria-labelledby="pills-home-tab"
										aria-labelledby="pills-home-tab">
										<div class="vexe">
											<div class="card__top" style="font-size: small">
												<div class="card__right">
													<img src="../assets/user/images/xe2.jpg" alt="">

													<div class="div">
														<div class="div__content" style="font-size: 16px">
															<h3 style="font-size: 20px">Trang Hòa</h3>
															<!-- 	<i class="fa fa-star">3.9</i> -->
															<p class="content__1">300.000đ</p>
														</div>
														<p>Giường nằm 44 chỗ</p>
														<i class="fa fa-map-pin">6h30P</i><br> <i
															class="fa fa-map-marker-alt">18h30P</i>
													</div>

												</div>
												<div class="collasp">
													<div class="card__link">
														<a data-toggle="collapse" href="#collapseExample"
															role="button" aria-expanded="false"
															aria-controls="collapseExample"> Thông tin chi tiết <i
															class="fa fa-angle-down"></i>
														</a>
													</div>
													<div class="button">
														<button data-toggle="collapse"
															onclick="chonXe('#scroll1<%=1%>',800,'chuyendi',3,<%=3%>)"
															data-target="#collapseChonChuyen" aria-expanded="false"
															aria-controls="collapseChonChuyen" name="idChuyenXe"
															value="3" type="button">Chọn chuyến</button>
														<input class="form-check-input" type="hidden"
															value="<%session.setAttribute("idChuyen", "3");%>"
															name="inputIdChuyenXe" id="inputIdChuyenXe">
														<input class="form-check-input" type="hidden"
															value="3"
															name="inputIdChuyenXe" id="inputIdChuyenXe">
													</div>
												</div>

											</div>
											<!-- cardbottom1 -->
											<div class="card__bottom">
												<div class="collapse" id="collapseExample">
													<div class="card card-body">
														<div class="project">
															<ul class="nav nav-pills mb-3" id="pills-tab"
																role="tablist">
																<li class="nav-item" role="presentation"><a
																	class="nav-link active" id="pills-img-tab"
																	data-toggle="pill" href="#img" role="tab"
																	aria-controls="pills-img" aria-selected="true">Hình
																		ảnh</a></li>
																<li class="nav-item" role="presentation"><a
																	class="nav-link" id="pills-cmt-tab" data-toggle="pill"
																	href="#pills-cmt" role="tab" aria-controls="pills-cmt"
																	aria-selected="false">Tiện ích </a></li>
																<li class="nav-item" role="presentation"><a
																	class="nav-link" id="pills-travel-tab"
																	data-toggle="pill" href="#pills-travel" role="tab"
																	aria-controls="pills-travel" aria-selected="false">Điểm
																		Đón Trả</a></li>

															</ul>

															<div class="tab-content" id="pills-tabContent">
																<div class="tab-pane fade show active" id="img"
																	role="tabpanel" aria-labelledby="pills-img-tab"></div>

																<div class="tab-pane fade" id="pills-cmt"
																	role="tabpanel" aria-labelledby="pills-cmt-tab">
																	<div class="row">
																		<div class="col-12">
																			<div class="card animate__animated animate__zoomIn">
																				<div class="card-body cmt1">
																					<p>
																						<i class="fa fa-capsules">Gối Ôm</i> <span>Nhà
																							xe có trang bị gối ôm cho hành khách</span>
																					</p>

																					<p>
																						<i class="fa fa-hammer">búa thoát hiểm</i> <span>Dùng
																							để phá kính ô tô thoát hiểm trong trường hợp khẩn
																							cấp.</span>
																					</p>

																					<p>
																						<i class="fa fa-wifi">wifi</i> <span>Nhà xe
																							có trang bị wifi cho hành khách</span>
																					</p>

																					<p>
																						<i class="fa fa-hamburger">Trạm nghỉ</i> <span>Nhà
																							xe cung cấp chỗ dừng chân cho hành khách</span>
																					</p>

																					<p>
																						<i class="fa fa-mug-hot">Nước</i> <span>Nhà
																							xe có trang bị Nước cho hành khách</span>
																					</p>

																					<p>
																						<i class="fa fa-bed">Chăn</i> <span>Nhà xe
																							có trang bị chăn cho hành khách</span>
																					</p>

																					<p>
																						<i class="fa fa-hand-holding">Nước rửa tay</i> <span>Nhà
																							xe có trang bị nước rửa tay cho hành khách</span>
																					</p>

																				</div>
																			</div>
																		</div>
																	</div>
																</div>

																<div class="tab-pane fade" id="pills-travel"
																	role="tabpanel" aria-labelledby="pills-travel-tab">
																	<div class="row">
																		<div class="col-12">
																			<div class="card animate__animated animate__zoomIn">
																				<div class="card-body">

																					<p class="card-text">Lưu ý Các mốc thời gian
																						đón, trả bên dưới là thời gian dự kiến. Lịch này
																						có thể thay đổi tùy tình hình thưc tế.</p>
																					<div class="card__2">
																						<div class="card__right1">
																							<h4>Điểm đón</h4>
																							<ul>
																								<li>06:30 • Bãi Xe Thành Thái</li>
																								<li>06:40 • Lý Thường Kiệt</li>
																								<li>06:50 • Cây xăng mũi tàu Trường Chinh</li>
																								<li>07:00 • Tây Thạnh</li>
																								<li>07:00 • Cầu Tham Lương</li>
																								<li>07:02 • Ngã Tư An Sương</li>
																								<li>07:03 • Cầu vượt Ngã Tư Ga</li>
																								<li>07:05 • Lê Trọng Tấn</li>
																								<li>07:15 • Bến xe Miền Đông</li>
																								<li>07:20 • Ngã Tư Thủ Đức</li>
																								<li>07:25 • Trường Đại học Sư phạm Kỹ thuật
																									Tp. Hồ Chí Minh (cổng Võ Văn Ngân)</li>
																								<li>07:30 • Cầu Ông Bố</li>
																								<li>07:50 • Cổng Chào Bình Dương, Km số 1,
																									QL13, Thuận AN, Bình Dương</li>
																								<li>08:00 • Có trung chuyển Đại lộ Bình
																									Dương</li>
																							</ul>
																						</div>

																						<div class="card__left2">
																							<h4>Điểm trả</h4>
																							<p>17:50 • Văn Phòng Đắk Lắk</p>
																						</div>

																					</div>

																				</div>
																			</div>
																		</div>


																	</div>
																</div>

															</div>


														</div>
													</div>
												</div>

												<!-- 			//tab2 -->




											</div>
										</div>
									</div>

									<!-- div class="tab-pane fade" id="pills-profile" role="tabpanel"
										aria-labelledby="pills-profile-tab"
										aria-labelledby="pills-home-tab"
										aria-labelledby="pills-home-tab">
										<div class="card__top">
											<div class="card__right">
												<img src="assets/user/images/xe1.jpg" alt="">

												<div class="div">
													<div class="div__content">
														<h3>Anh ba</h3>
														<i class="fa fa-star">3.9</i>
														<p class="content__1">300.000đ</p>
													</div>
													<p>Giường nằm 44 chỗ</p>
													<i class="fa fa-map-pin">6h30P</i><br> <i
														class="fa fa-map-marker-alt">18h30P</i>
												</div>

											</div>
											<div class="collasp">
												<div class="card__link">
													<a data-toggle="collapse" href="#collapseExample"
														role="button" aria-expanded="false"
														aria-controls="collapseExample"> thông tin chi tiết <i
														class="fa fa-angle-down"></i>
													</a>
												</div>
												<div class="button">
													<button data-toggle="collapse"
														data-target=".multi-collapse" aria-expanded="false"
														aria-controls="multiCollapseExample1">chọn chuyến</button>
												</div>
											</div>

										</div>


										<div class="card__bottom">
											<div class="collapse" id="collapseExample">
												<div class="card card-body">
													<div class="project">
														<ul class="nav nav-pills mb-3" id="pills-tab"
															role="tablist">
															<li class="nav-item" role="presentation"><a
																class="nav-link active" id="pills-home-tab"
																data-toggle="pill" href="#all" role="tab"
																aria-controls="pills-img" aria-selected="true">Hình
																	ảnh</a></li>
															<li class="nav-item" role="presentation"><a
																class="nav-link" id="pills-cmt-tab" data-toggle="pill"
																href="#pills-cmt" role="tab" aria-controls="pills-cmt"
																aria-selected="false">Tiện ích </a></li>
															<li class="nav-item" role="presentation"><a
																class="nav-link" id="pills-travel-tab"
																data-toggle="pill" href="#pills-travel" role="tab"
																aria-controls="pills-travel" aria-selected="false">Điểm
																	Đón Trả</a></li>

														</ul>

														<div class="tab-content" id="pills-tabContent">
															<div class="tab-pane fade show active" id="all"
																role="tabpanel" aria-labelledby="pills-home-tab"></div>

															<div class="tab-pane fade" id="pills-cmt" role="tabpanel"
																aria-labelledby="pills-cmt-tab">
																<div class="row">
																	<div class="col-12">
																		<div class="card animate__animated animate__zoomIn">
																			<div class="card-body cmt1">
																				<p>
																					<i class="fa fa-capsules">Gối Ôm</i> <span>Nhà
																						xe có trang bị gối ôm cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hammer">búa thoát hiểm</i> <span>Dùng
																						để phá kính ô tô thoát hiểm trong trường hợp khẩn
																						cấp.</span>
																				</p>

																				<p>
																					<i class="fa fa-wifi">wifi</i> <span>Nhà xe
																						có trang bị wifi cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hamburger">Trạm nghỉ</i> <span>Nhà
																						xe cung cấp chỗ dừng chân cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-mug-hot">Nước</i> <span>Nhà
																						xe có trang bị Nước cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-bed">Chăn</i> <span>Nhà xe
																						có trang bị chăn cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hand-holding">Nước rửa tay</i> <span>Nhà
																						xe có trang bị nước rửa tay cho hành khách</span>
																				</p>

																			</div>
																		</div>
																	</div>
																</div>
															</div>

															<div class="tab-pane fade" id="pills-travel"
																role="tabpanel" aria-labelledby="pills-travel-tab">
																<div class="row">
																	<div class="col-12">
																		<div class="card animate__animated animate__zoomIn">
																			<div class="card-body">

																				<p class="card-text">Lưu ý Các mốc thời gian
																					đón, trả bên dưới là thời gian dự kiến. Lịch này có
																					thể thay đổi tùy tình hình thưc tế.</p>
																				<div class="card__2">
																					<div class="card__right1">
																						<h4>Điểm đón</h4>
																						<ul>
																							<li>06:30 • Bãi Xe Thành Thái</li>
																							<li>06:40 • Lý Thường Kiệt</li>
																							<li>06:50 • Cây xăng mũi tàu Trường Chinh</li>
																							<li>07:00 • Tây Thạnh</li>
																							<li>07:00 • Cầu Tham Lương</li>
																							<li>07:02 • Ngã Tư An Sương</li>
																							<li>07:03 • Cầu vượt Ngã Tư Ga</li>
																							<li>07:05 • Lê Trọng Tấn</li>
																							<li>07:15 • Bến xe Miền Đông</li>
																							<li>07:20 • Ngã Tư Thủ Đức</li>
																							<li>07:25 • Trường Đại học Sư phạm Kỹ thuật
																								Tp. Hồ Chí Minh (cổng Võ Văn Ngân)</li>
																							<li>07:30 • Cầu Ông Bố</li>
																							<li>07:50 • Cổng Chào Bình Dương, Km số 1,
																								QL13, Thuận AN, Bình Dương</li>
																							<li>08:00 • Có trung chuyển Đại lộ Bình
																								Dương</li>
																						</ul>
																					</div>

																					<div class="card__left2">
																						<h4>Điểm trả</h4>
																						<p>17:50 • Văn Phòng Đắk Lắk</p>
																					</div>

																				</div>

																			</div>
																		</div>
																	</div>


																</div>
															</div>

														</div>


													</div>
												</div>
											</div> -->

									<!-- cardbottom2 -->
									<div class="card__bottom">
										<div class="collapse" id="collapseChonChuyen">
											<div class="card card-body">
												<div class="project">
													<ul class="nav nav-pills mb-3 nav-tabs" id="pills-tab2"
														role="tablist">

														<li class="nav-item " role="presentation"><a
															class="nav-link active nav-link_1" id="pills-img-tab2"
															data-toggle="pill" href="#img2" role="tab"
															aria-controls="pills-img" aria-selected="true"><input
																class="form-check-input" type="hidden"
																name="inlineRadioOptions" id="inlineRadio1"
																value="option1" checked> <label
																class="form-check-label line-connect" for="inlineRadio1">1.Chỗ
																	mong muốn -></label></a></li>

														<li class="nav-item" role="presentation"><a
															class="nav-link nav-link_2" id="pills-cmt-tab2"
															data-toggle="pill" href="#pills-cmt2" role="tab"
															aria-controls="pills-cmt" aria-selected="false"><input
																class="form-check-input" type="hidden"
																name="inlineRadioOptions" id="inlineRadio2"
																value="option2"> <label class="form-check-label"
																for="inlineRadio2">2.Điểm đón trả -></label> </a></li>
														<li class="nav-item " role="presentation"><a
															class="nav-link nav-link_3" id="pills-travel-tab3"
															data-toggle="pill" href="#pills-travel3" role="tab"
															aria-controls="pills-travel" aria-selected="false"><input
																class="form-check-input" type="hidden"
																name="inlineRadioOptions" id="inlineRadio3"
																value="option3"> <label class="form-check-label"
																for="inlineRadio3">3.Nhập thông tin </label></a></li>

													</ul>

													<div class="tab-content" id="pills-tabContent">
														<div class="tab-pane fade show active" id="img2"
															role="tabpanel" aria-labelledby="pills-img-tab2">
															<div>
																<img id="img-16" style="float: left; clear: right;"
																	alt="Chu Thich" src="../assets/user/images/ghes.png">
																<div id="xe16cho" style="position: relative;">

																	<%
																	//Trip chuyen = null;
																	Connection con = SQLServerConnUtils_SQLJDBC.getSQLServerConnection_SQLJDBC();
																	//List<Seat> danhSachghe = (List<Seat>)session.getAttribute("listSeatOfTrip"); 
																	List<Seat> list = null;
																	List<Integer> listStatus = new ArrayList<>();
																	String errorString = null;
																	TripDAO tr = new TripDAO();
																	String idChuyen = (String) session.getAttribute("idChuyen");
																	Object[] arr = null;
																	try {
																		list = tr.getAllGheOnTrip(con, Integer.parseInt(idChuyen));

																		for (int i = 0; i <= 15; i++) {
																			listStatus.add(Integer.parseInt(list.get(i).getStatus()));
																		}
																		arr = listStatus.toArray();
																		System.out.println("arr" + arr);

																	} catch (Exception e) {
																		e.printStackTrace();
																		errorString = e.getMessage();

																	}
																	%>

																	<input type="hidden" value="<%=idChuyen%>"
																		id="idChuyen" /> <img alt="dauxe"
																		src="../assets/user/images/p.png" width="260px"
																		height="150px">

																	<%
																	for (int i = 0; i <= 15; i++) {
																		int hang = 0;
																		int cot = 0;

																		switch (i) {
																			case 0 :
																			case 1 :
																		hang = 0;
																		break;
																			case 2 :
																			case 3 :
																			case 4 :
																		hang = 1;
																		break;
																			case 5 :
																			case 6 :
																			case 7 :
																		hang = 2;
																		break;
																			case 8 :
																			case 9 :
																			case 10 :
																		hang = 3;
																		break;
																			case 11 :
																			case 12 :
																			case 13 :
																			case 14 :
																			case 15 :
																		hang = 4;
																		break;
																			default :
																		break;
																		}
																		switch (i) {
																			case 2 :
																			case 5 :
																			case 8 :
																			case 11 :

																		cot = 0;
																		break;
																			case 0 :
																			case 3 :
																			case 6 :
																			case 9 :
																			case 12 :
																			case 15 :
																		cot = 1;
																		break;
																			case 1 :
																			case 4 :
																			case 7 :
																			case 10 :
																			case 13 :
																		cot = 2;
																		break;
																			default :
																		cot = 3;
																		break;
																		}

																		if (Integer.parseInt(arr[i].toString()) == 1) {
																	%>
																	<img alt="ghe<%=i%>"
																		src="../assets/user/images/ghe3.png" id="<%=i%>"
																		class="ghe hang<%=hang%> cot<%=cot%>" style="margin: 3px;position:initial !important;"><%=i %></img>
																		
																	<%
																	} else {
																	%>


																	<img alt="ghe<%=i%>"
																		src="../assets/user/images/ghe1.png" id="<%=i%>"
																		class="ghe chuadat hang<%=hang%> cot<%=cot%> "
																		onclick="choose1(<%=i%>)"
																		name="<%=i%> inputGheChuaDat" style="margin: 3px;position:initial !important;">
																	
																		<input class="form-check-input inputGheDangChon"
																		type="checkbox" value="2" name="gheDangChon"
																		id="inputGheDangChon" onclick="choose1(<%=i%>)"> 
																		<%=i %>
																		</img>


																	<%
																	}
																	/* else */ {
																	%>


																	<%
																	}

																	}
																	%>
																	<!-- <input class="form-check-input inputGheDangChon"
																		type="text" value="1" name="gheDangChon"
																		id="inputGheDangChon"> -->
																</div>
															</div>
															<div style="border-top: 1px solid;">

																<div class="line"
																	style="display: block; border-bottom: 10px;"></div>
																<div
																	style="display: flex; justify-content: flex-end; margin-top: 10px;">
																	<p
																		style="margin-right: 16px; margin-bottom: 0; margin-top: 5px;">Tổng
																		cộng: 0đ</p>
																	<button type="button" class="btn btn-primary btnNext">Tiếp
																		tục</button>
																</div>
															</div>
														</div>

														<div class="tab-pane fade" id="pills-cmt2" role="tabpanel"
															aria-labelledby="pills-cmt-tab2">
															<div class="row">
																<div class="row">
																	<div class="col-12">
																		<div class="card animate__animated animate__zoomIn">
																			<div class="card-body">
																				<p class="card-text">Lưu ý Các mốc thời gian
																					đón, trả bên dưới là thời gian dự kiến. Lịch này có
																					thể thay đổi tùy tình hình thưc tế.</p>
																				<div class="card__2">
																					<div class="card__right1">
																						<h6>Điểm đón</h6>
																						<ul>
																							<li class="form-check" style="display: flex">
																								<input class="form-check-input" type="radio"
																								name="checkbox1" id="checkbox1" value="1"
																								checked> <label class="form-check-label"
																								for="exampleRadios1" style="font-size: 16px">
																									06:30 • Bãi Xe Thành Thái </label>
																							</li>
																							<li class="form-check" style="display: flex">
																								<input class="form-check-input" type="radio"
																								name="checkbox1" id="checkbox1" value="2"
																								checked> <label class="form-check-label"
																								for="exampleRadios1" style="font-size: 16px">
																									06:40 • Lý Thường Kiệt </label>
																							</li>
																							<li class="form-check" style="display: flex">
																								<input class="form-check-input" type="radio"
																								name="checkbox1" id="checkbox1" value="3"
																								checked> <label class="form-check-label"
																								for="exampleRadios1" style="font-size: 16px">
																									06:50 • Cây xăng mũi tàu Trường Chinh</label>
																							</li>
																							<!-- <li>06:30 • Bãi Xe Thành Thái</li>
																						<li>06:40 • Lý Thường Kiệt</li>
																						<li>06:50 • Cây xăng mũi tàu Trường Chinh</li>
																						<li>07:00 • Tây Thạnh</li>
																						<li>07:00 • Cầu Tham Lương</li>
																						<li>07:02 • Ngã Tư An Sương</li>
																						<li>07:03 • Cầu vượt Ngã Tư Ga</li>
																						<li>07:05 • Lê Trọng Tấn</li>
																						<li>07:15 • Bến xe Miền Đông</li>
																						<li>07:20 • Ngã Tư Thủ Đức</li>
																						<li>07:25 • Trường Đại học Sư phạm Kỹ thuật
																							Tp. Hồ Chí Minh (cổng Võ Văn Ngân)</li>
																						<li>07:30 • Cầu Ông Bố</li>
																						<li>07:50 • Cổng Chào Bình Dương, Km số 1,
																							QL13, Thuận AN, Bình Dương</li>
																						<li>08:00 • Có trung chuyển Đại lộ Bình Dương</li> -->
																						</ul>
																					</div>

																					<div class="card__left2">
																						<h6>Điểm trả</h6>

																						<ul>
																							<li class="form-check" style="display: flex">
																								<input class="form-check-input" type="radio"
																								name="checkbox4" id="checkbox4" value="4"
																								checked> <label class="form-check-label"
																								style="font-size: 16px" for="exampleRadios2">
																									06:30 • Bãi Xe Thành Thái </label>
																							</li>
																							<li class="form-check" style="display: flex">
																								<input class="form-check-input" type="radio"
																								name="checkbox4" id="checkbox4" value="5"
																								checked> <label class="form-check-label"
																								for="exampleRadios2" style="font-size: 16px">
																									06:40 • Lý Thường Kiệt </label>
																							</li>
																							<li class="form-check" style="display: flex">
																								<input class="form-check-input" type="radio"
																								name="checkbox4" id="checkbox4" value="6"
																								checked> <label class="form-check-label"
																								for="exampleRadios2" style="font-size: 16px">
																									06:50 • Cây xăng mũi tàu Trường Chinh</label>
																							</li>
																						</ul>
																					</div>

																				</div>

																			</div>
																		</div>

																		<div style="border-top: 1px solid;">

																			<div
																				style="display: flex; align-items: center; justify-content: space-between; margin-top: 20px;">
																				<button type="button"
																					class="btn btn-secondary btnPrevious">Quay
																					lại</button>
																				<div style="display: flex;">
																					<p
																						style="margin-right: 16px; margin-bottom: 0; margin-top: 10px;">Tổng
																						cộng: 0đ</p>
																					<button type="button"
																						class="btn btn-primary btnNext" style="">Tiếp
																						tục</button>
																				</div>
																			</div>
																		</div>
																	</div>

																</div>
															</div>
														</div>

														<div class="tab-pane fade" id="pills-travel3"
															role="tabpanel" aria-labelledby="pills-travel-tab3">
															<div class="row">
																<div class="col-12">
																	<div class="card animate__animated animate__zoomIn">
																		<div class="card-body">
																			<p>Chúng tôi chỉ dùng thông tin của bạn trong
																				việc ghi nhận vé.</p>

																			<div>
																				<div class="form-group ">
																					<input type="text" class="form-control top"
																						id="inputName" placeholder="First and Last name "
																						name="nameUser" value="" required="required">
																					<div>
																						<p id="error1"></p>
																					</div>
																				</div>

																				<div class="form-group ">
																					<input type="tel"
																						class="form-control top inputPhone1"
																						id="inputPhone" placeholder="Number phone "
																						name="phoneUser" value="" required="required"  pattern="[0-9]{10}">

																					<p id="errorPhone"></p>

																				</div>

																				<div class="form-group ">
																					<input type="email" class="form-control top"
																						id="inputEmail"
																						placeholder="Email (abc@gmail.com)"
																						name="emailUser" value="" required="required">
																					<div>
																						<p id="error3"></p>
																					</div>
																				</div>
																				<div class="form-group ">
																					<input type="text" class="form-control top"
																						id="inputOther" aria-describedby="otherHelp"
																						placeholder="Note" name="noteUser" value="">
																					<!-- <div>
																					<p id="error4"></p>
																				</div> -->
																				</div>
																				<p>Bằng việc nhấn nút Tiếp Tục, bạn đồng ý với
																					Chính sách bảo mật thông tin và Quy chế</p>
																				<!-- <div class="form-group form-check content">
																				<input type="checkbox" class="form-check-input"
																					id="exampleCheck1" name="rememberMe" value="Y">
																				<label class="form-check-label" for="exampleCheck1">Remember</label>
																				<a class="forgot" href="login"
																					style="text-decoration: none;">Forgot password</a>
																			</div>
																			<button class="button3" type="submit">Login</button> -->
																			</div>
																		</div>
																		<div style="border-top: 1px solid;">

																			<div class="line"
																				style="display: block; border-bottom: 10px;"></div>
																			<div
																				style="display: flex; align-items: center; justify-content: space-between;">
																				<button type="button"
																					class="btn btn-secondary btnPrevious"
																					style="margin-top: 20px">Quay lại</button>
																				<div style="display: flex; margin-top: 10px;">
																					<p
																						style="margin-right: 16px; margin-bottom: 0; margin-top: 5px;">Tổng
																						cộng: 0đ</p>
																					<button type="submit" class="btn btn-primary">Xác
																						nhận</button>
																				</div>

																			</div>
																		</div>
																	</div>
																</div>
															</div>


														</div>
													</div>

												</div>


											</div>
										</div>
								</form>

							</div>

							<!-- 				//tinh tien -->
							<!-- 	<div class="collapse multi-collapse"
												id="multiCollapseExample1">
												<div class="card card-body">
													<form>
														<p>Tổng tiền thanh toán:</p>
														<div class="form-group">
															<input type="text" class="form-control" id="inputTotal"
																placeholder="Tổng tiền">
														</div>
														<div class="form-group">
															<label for="">Bạn muốn chọn chuyến nào ?</label> <select
																class="form-control" id="selectPercent">
																<option>--Chọn chuyến--</option>
																<option value="Bãi Xe Thành Thái">06:30 •option
																	Bãi Xe Thành Thái</option>
																<option value="  Lý Thường Kiệt">06:40 • Lý
																	Thường Kiệt</option>
																<option value=" Cây xăng mũi tàu Trường Chinh">06:50
																	• Cây xăng mũi tàu Trường Chinh</option>
																<option value="Tây Thạnh">07:00 • Tây Thạnh</option>
																<option value="Cầu Tham Lương">07:00 • Cầu Tham
																	Lương</option>
																<option value="Ngã Tư An Sương">07:02 • Ngã Tư
																	An Sương</option>
																<option value="Cầu vượt Ngã Tư Ga">07:03 • Cầu
																	vượt Ngã Tư Ga</option>
																<option value="Lê Trọng Tấn">07:05 • Lê Trọng
																	Tấn</option>
																<option value="Bến xe Miền Đông">07:15 • Bến xe
																	Miền Đông</option>
																<option value="Ngã Tư Thủ Đức">07:20 • Ngã Tư
																	Thủ Đức</option>
																<option
																	value=" Trường Đại học Sư phạm Kỹ thuật
                                                    Tp. Hồ Chí Minh (cổng Võ Văn
                                                    Ngân)">07:25
																	• Trường Đại học Sư phạm Kỹ thuật Tp. Hồ Chí Minh (cổng
																	Võ Văn Ngân)</option>
																<option value=" Cầu Ông Bố">07:30 • Cầu Ông Bố</option>
																<option
																	value="Cổng Chào Bình Dương, Km số 1,
                                                    QL13, Thuận AN, Bình Dương">07:50
																	• Cổng Chào Bình Dương, Km số 1, QL13, Thuận AN, Bình
																	Dương</option>
																<option value=" Đại lộ Bình Dương">08:00 • Có
																	trung chuyển Đại lộ Bình Dương</option>
															</select>
														</div>
														<div class="form-group">
															<p>Số ghế của bạn</p>
															<input type="number" class="form-control"
																id="inputPeople" placeholder="Nhập số ghế của bạn">
														</div>
														<button type="button" class="btn btn-danger" id="btnCalc">Hoàn
															Tất</button>
														<p id="txtResult"></p>
													</form>
												</div>
											</div> -->
						</div>



					</div>

					<!-- <div class="tab-pane fade" id="pills-contact" role="tabpanel"
										aria-labelledby="pills-contact-tab"
										aria-labelledby="pills-home-tab"
										aria-labelledby="pills-home-tab">
										<div class="card__top">
											<div class="card__right">
												<img src="assets/user/images/xe2.jpg" alt="">

												<div class="div">
													<div class="div__content">
														<h3>Chú Tư</h3>
														<i class="fa fa-star">3.9</i>
														<p class="content__1">300.000đ</p>
													</div>
													<p>Giường nằm 44 chỗ</p>
													<i class="fa fa-map-pin">6h30P</i><br> <i
														class="fa fa-map-marker-alt">18h30P</i>
												</div>

											</div>
											<div class="collasp">
												<div class="card__link">
													<a data-toggle="collapse" href="#collapseExample"
														role="button" aria-expanded="false"
														aria-controls="collapseExample"> thông tin chi tiết <i
														class="fa fa-angle-down"></i>
													</a>
												</div>
												<div class="button">
													<button data-toggle="collapse"
														data-target=".multi-collapse" aria-expanded="false"
														aria-controls="multiCollapseExample1">chọn chuyến</button>
												</div>
											</div>

										</div>


										<div class="card__bottom">
											<div class="collapse" id="collapseExample">
												<div class="card card-body">
													<div class="project">
														<ul class="nav nav-pills mb-3" id="pills-tab"
															role="tablist">
															<li class="nav-item" role="presentation"><a
																class="nav-link active" id="pills-home-tab"
																data-toggle="pill" href="#all" role="tab"
																aria-controls="pills-img" aria-selected="true">Hình
																	ảnh</a></li>
															<li class="nav-item" role="presentation"><a
																class="nav-link" id="pills-cmt-tab" data-toggle="pill"
																href="#pills-cmt" role="tab" aria-controls="pills-cmt"
																aria-selected="false">Tiện ích </a></li>
															<li class="nav-item" role="presentation"><a
																class="nav-link" id="pills-travel-tab"
																data-toggle="pill" href="#pills-travel" role="tab"
																aria-controls="pills-travel" aria-selected="false">Điểm
																	Đón Trả</a></li>

														</ul>

														<div class="tab-content" id="pills-tabContent">
															<div class="tab-pane fade show active" id="all"
																role="tabpanel" aria-labelledby="pills-home-tab"></div>

															<div class="tab-pane fade" id="pills-cmt" role="tabpanel"
																aria-labelledby="pills-cmt-tab">
																<div class="row">
																	<div class="col-12">
																		<div class="card animate__animated animate__zoomIn">
																			<div class="card-body cmt1">
																				<p>
																					<i class="fa fa-capsules">Gối Ôm</i> <span>Nhà
																						xe có trang bị gối ôm cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hammer">búa thoát hiểm</i> <span>Dùng
																						để phá kính ô tô thoát hiểm trong trường hợp khẩn
																						cấp.</span>
																				</p>

																				<p>
																					<i class="fa fa-wifi">wifi</i> <span>Nhà xe
																						có trang bị wifi cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hamburger">Trạm nghỉ</i> <span>Nhà
																						xe cung cấp chỗ dừng chân cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-mug-hot">Nước</i> <span>Nhà
																						xe có trang bị Nước cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-bed">Chăn</i> <span>Nhà xe
																						có trang bị chăn cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hand-holding">Nước rửa tay</i> <span>Nhà
																						xe có trang bị nước rửa tay cho hành khách</span>
																				</p>

																			</div>
																		</div>
																	</div>
																</div>
															</div>

															<div class="tab-pane fade" id="pills-travel"
																role="tabpanel" aria-labelledby="pills-travel-tab">
																<div class="row">
																	<div class="col-12">
																		<div class="card animate__animated animate__zoomIn">
																			<div class="card-body">

																				<p class="card-text">Lưu ý Các mốc thời gian
																					đón, trả bên dưới là thời gian dự kiến. Lịch này có
																					thể thay đổi tùy tình hình thưc tế.</p>
																				<div class="card__2">
																					<div class="card__right1">
																						<h4>Điểm đón</h4>
																						<ul>
																							<li>06:30 • Bãi Xe Thành Thái</li>
																							<li>06:40 • Lý Thường Kiệt</li>
																							<li>06:50 • Cây xăng mũi tàu Trường Chinh</li>
																							<li>07:00 • Tây Thạnh</li>
																							<li>07:00 • Cầu Tham Lương</li>
																							<li>07:02 • Ngã Tư An Sương</li>
																							<li>07:03 • Cầu vượt Ngã Tư Ga</li>
																							<li>07:05 • Lê Trọng Tấn</li>
																							<li>07:15 • Bến xe Miền Đông</li>
																							<li>07:20 • Ngã Tư Thủ Đức</li>
																							<li>07:25 • Trường Đại học Sư phạm Kỹ thuật
																								Tp. Hồ Chí Minh (cổng Võ Văn Ngân)</li>
																							<li>07:30 • Cầu Ông Bố</li>
																							<li>07:50 • Cổng Chào Bình Dương, Km số 1,
																								QL13, Thuận AN, Bình Dương</li>
																							<li>08:00 • Có trung chuyển Đại lộ Bình
																								Dương</li>
																						</ul>
																					</div>

																					<div class="card__left2">
																						<h4>Điểm trả</h4>
																						<p>17:50 • Văn Phòng Đắk Lắk</p>
																					</div>

																				</div>

																			</div>
																		</div>
																	</div>


																</div>
															</div>

														</div>


													</div>
												</div>
											</div>

											<div class="collapse multi-collapse"
												id="multiCollapseExample1">
												<div class="card card-body">
													<form>
														<p>Tổng tiền thanh toán:</p>
														<div class="form-group">
															<input type="text" class="form-control" id="inputTotal"
																placeholder="Tổng tiền">
														</div>
														<div class="form-group">
															<label for="">Bạn muốn chọn chuyến nào ?</label> <select
																class="form-control" id="selectPercent">
																<option>--Chọn chuyến--</option>
																<option value="Bãi Xe Thành Thái">06:30 •option
																	Bãi Xe Thành Thái</option>
																<option value="  Lý Thường Kiệt">06:40 • Lý
																	Thường Kiệt</option>
																<option value=" Cây xăng mũi tàu Trường Chinh">06:50
																	• Cây xăng mũi tàu Trường Chinh</option>
																<option value="Tây Thạnh">07:00 • Tây Thạnh</option>
																<option value="Cầu Tham Lương">07:00 • Cầu Tham
																	Lương</option>
																<option value="Ngã Tư An Sương">07:02 • Ngã Tư
																	An Sương</option>
																<option value="Cầu vượt Ngã Tư Ga">07:03 • Cầu
																	vượt Ngã Tư Ga</option>
																<option value="Lê Trọng Tấn">07:05 • Lê Trọng
																	Tấn</option>
																<option value="Bến xe Miền Đông">07:15 • Bến xe
																	Miền Đông</option>
																<option value="Ngã Tư Thủ Đức">07:20 • Ngã Tư
																	Thủ Đức</option>
																<option
																	value=" Trường Đại học Sư phạm Kỹ thuật
                                                    Tp. Hồ Chí Minh (cổng Võ Văn
                                                    Ngân)">07:25
																	• Trường Đại học Sư phạm Kỹ thuật Tp. Hồ Chí Minh (cổng
																	Võ Văn Ngân)</option>
																<option value=" Cầu Ông Bố">07:30 • Cầu Ông Bố</option>
																<option
																	value="Cổng Chào Bình Dương, Km số 1,
                                                    QL13, Thuận AN, Bình Dương">07:50
																	• Cổng Chào Bình Dương, Km số 1, QL13, Thuận AN, Bình
																	Dương</option>
																<option value=" Đại lộ Bình Dương">08:00 • Có
																	trung chuyển Đại lộ Bình Dương</option>
															</select>
														</div>
														<div class="form-group">
															<p>Số ghế của bạn</p>
															<input type="number" class="form-control"
																id="inputPeople" placeholder="Nhập số ghế của bạn">
														</div>
														<button type="button" class="btn btn-danger" id="btnCalc">Hoàn
															Tất</button>
														<p id="txtResult"></p>
													</form>
												</div>
											</div>
										</div>




									</div>

									<div class="tab-pane fade" id="pills-website" role="tabpanel"
										aria-labelledby="pills-website-tab"
										aria-labelledby="pills-home-tab"
										aria-labelledby="pills-home-tab">
										<div class="card__top">
											<div class="card__right">
												<img src="assets/user/images/xe5.jpg" alt="">

												<div class="div">
													<div class="div__content">
														<h3>Man Đần</h3>
														<i class="fa fa-star">3.9</i>
														<p class="content__1">300.000đ</p>
													</div>
													<p>Giường nằm 44 chỗ</p>
													<i class="fa fa-map-pin">6h30P</i><br> <i
														class="fa fa-map-marker-alt">18h30P</i>
												</div>

											</div>
											<div class="collasp">
												<div class="card__link">
													<a data-toggle="collapse" href="#collapseExample"
														role="button" aria-expanded="false"
														aria-controls="collapseExample"> thông tin chi tiết <i
														class="fa fa-angle-down"></i>
													</a>
												</div>
												<div class="button">
													<button data-toggle="collapse"
														data-target=".multi-collapse" aria-expanded="false"
														aria-controls="multiCollapseExample1">chọn chuyến</button>
												</div>
											</div>

										</div>


										<div class="card__bottom">
											<div class="collapse" id="collapseExample">
												<div class="card card-body">
													<div class="project">
														<ul class="nav nav-pills mb-3" id="pills-tab"
															role="tablist">
															<li class="nav-item" role="presentation"><a
																class="nav-link active" id="pills-home-tab"
																data-toggle="pill" href="#all" role="tab"
																aria-controls="pills-img" aria-selected="true">Hình
																	ảnh</a></li>
															<li class="nav-item" role="presentation"><a
																class="nav-link" id="pills-cmt-tab" data-toggle="pill"
																href="#pills-cmt" role="tab" aria-controls="pills-cmt"
																aria-selected="false">Tiện ích </a></li>
															<li class="nav-item" role="presentation"><a
																class="nav-link" id="pills-travel-tab"
																data-toggle="pill" href="#pills-travel" role="tab"
																aria-controls="pills-travel" aria-selected="false">Điểm
																	Đón Trả</a></li>

														</ul>

														<div class="tab-content" id="pills-tabContent">
															<div class="tab-pane fade show active" id="all"
																role="tabpanel" aria-labelledby="pills-home-tab"></div>

															<div class="tab-pane fade" id="pills-cmt" role="tabpanel"
																aria-labelledby="pills-cmt-tab">
																<div class="row">
																	<div class="col-12">
																		<div class="card animate__animated animate__zoomIn">
																			<div class="card-body cmt1">
																				<p>
																					<i class="fa fa-capsules">Gối Ôm</i> <span>Nhà
																						xe có trang bị gối ôm cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hammer">búa thoát hiểm</i> <span>Dùng
																						để phá kính ô tô thoát hiểm trong trường hợp khẩn
																						cấp.</span>
																				</p>

																				<p>
																					<i class="fa fa-wifi">wifi</i> <span>Nhà xe
																						có trang bị wifi cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hamburger">Trạm nghỉ</i> <span>Nhà
																						xe cung cấp chỗ dừng chân cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-mug-hot">Nước</i> <span>Nhà
																						xe có trang bị Nước cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-bed">Chăn</i> <span>Nhà xe
																						có trang bị chăn cho hành khách</span>
																				</p>

																				<p>
																					<i class="fa fa-hand-holding">Nước rửa tay</i> <span>Nhà
																						xe có trang bị nước rửa tay cho hành khách</span>
																				</p>

																			</div>
																		</div>
																	</div>
																</div>
															</div>

															<div class="tab-pane fade" id="pills-travel"
																role="tabpanel" aria-labelledby="pills-travel-tab">
																<div class="row">
																	<div class="col-12">
																		<div class="card animate__animated animate__zoomIn">
																			<div class="card-body">

																				<p class="card-text">Lưu ý Các mốc thời gian
																					đón, trả bên dưới là thời gian dự kiến. Lịch này có
																					thể thay đổi tùy tình hình thưc tế.</p>
																				<div class="card__2">
																					<div class="card__right1">
																						<h4>Điểm đón</h4>
																						<ul>
																							<li>06:30 • Bãi Xe Thành Thái</li>
																							<li>06:40 • Lý Thường Kiệt</li>
																							<li>06:50 • Cây xăng mũi tàu Trường Chinh</li>
																							<li>07:00 • Tây Thạnh</li>
																							<li>07:00 • Cầu Tham Lương</li>
																							<li>07:02 • Ngã Tư An Sương</li>
																							<li>07:03 • Cầu vượt Ngã Tư Ga</li>
																							<li>07:05 • Lê Trọng Tấn</li>
																							<li>07:15 • Bến xe Miền Đông</li>
																							<li>07:20 • Ngã Tư Thủ Đức</li>
																							<li>07:25 • Trường Đại học Sư phạm Kỹ thuật
																								Tp. Hồ Chí Minh (cổng Võ Văn Ngân)</li>
																							<li>07:30 • Cầu Ông Bố</li>
																							<li>07:50 • Cổng Chào Bình Dương, Km số 1,
																								QL13, Thuận AN, Bình Dương</li>
																							<li>08:00 • Có trung chuyển Đại lộ Bình
																								Dương</li>
																						</ul>
																					</div>

																					<div class="card__left2">
																						<h4>Điểm trả</h4>
																						<p>17:50 • Văn Phòng Đắk Lắk</p>
																					</div>

																				</div>

																			</div>
																		</div>
																	</div>


																</div>
															</div>

														</div>


													</div>
												</div>
											</div>

											<div class="collapse multi-collapse"
												id="multiCollapseExample1">
												<div class="card card-body">
													<form>
														<p>Tổng tiền thanh toán:</p>
														<div class="form-group">
															<input type="text" class="form-control" id="inputTotal"
																placeholder="Tổng tiền">
														</div>
														<div class="form-group">
															<label for="">Bạn muốn chọn chuyến nào ?</label> <select
																class="form-control" id="selectPercent">
																<option>--Chọn chuyến--</option>
																<option value="Bãi Xe Thành Thái">06:30 •option
																	Bãi Xe Thành Thái</option>
																<option value="  Lý Thường Kiệt">06:40 • Lý
																	Thường Kiệt</option>
																<option value=" Cây xăng mũi tàu Trường Chinh">06:50
																	• Cây xăng mũi tàu Trường Chinh</option>
																<option value="Tây Thạnh">07:00 • Tây Thạnh</option>
																<option value="Cầu Tham Lương">07:00 • Cầu Tham
																	Lương</option>
																<option value="Ngã Tư An Sương">07:02 • Ngã Tư
																	An Sương</option>
																<option value="Cầu vượt Ngã Tư Ga">07:03 • Cầu
																	vượt Ngã Tư Ga</option>
																<option value="Lê Trọng Tấn">07:05 • Lê Trọng
																	Tấn</option>
																<option value="Bến xe Miền Đông">07:15 • Bến xe
																	Miền Đông</option>
																<option value="Ngã Tư Thủ Đức">07:20 • Ngã Tư
																	Thủ Đức</option>
																<option
																	value=" Trường Đại học Sư phạm Kỹ thuật
                                                      Tp. Hồ Chí Minh (cổng Võ Văn
                                                      Ngân)">07:25
																	• Trường Đại học Sư phạm Kỹ thuật Tp. Hồ Chí Minh (cổng
																	Võ Văn Ngân)</option>
																<option value=" Cầu Ông Bố">07:30 • Cầu Ông Bố</option>
																<option
																	value="Cổng Chào Bình Dương, Km số 1,
                                                      QL13, Thuận AN, Bình Dương">07:50
																	• Cổng Chào Bình Dương, Km số 1, QL13, Thuận AN, Bình
																	Dương</option>
																<option value=" Đại lộ Bình Dương">08:00 • Có
																	trung chuyển Đại lộ Bình Dương</option>
															</select>
														</div>
														<div class="form-group">
															<p>Số ghế của bạn</p>
															<input type="number" class="form-control"
																id="inputPeople" placeholder="Nhập số ghế của bạn">
														</div>
														<button type="button" class="btn btn-danger" id="btnCalc">Hoàn
															Tất</button>
														<p id="txtResult"></p>
													</form>
												</div>
											</div>
										</div> -->



				</div>
			</div>

		</div>
		</div>
		</div>

	</section>

	<%@ include file="/layout/user/footer.jsp"%>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>

	<!-- owlCousel -->
	<script src="assets/lib/owl.carousel.min.js"></script>
	<script type="text/javascript">
var onClick =(n)=>{
	/* var disabled2= document.querySelector(`.nav-link_1`);
	disabled2.classList.add('disabled');  */
	
}

var onClick2 =(n)=>{
	var disabled2= document.querySelector(`.nav-link_2`);
	disabled2.classList.add('disabled');  
	
}

var onClick3 =(n)=>{
	/* var disabled2= document.querySelector(`.nav-link_3`);
	disabled2.classList.add('disabled');  */
	
}

var goBack =(n)=>{
	var disabled2= document.querySelector(`.nav-link_2`);
	if (disabled2.classList.contains('disabled')) {
		disabled2.classList.remove('disabled');
	}
	
}

var goBack2 =(n)=>{
	var disabled2= document.querySelector(`.nav-link_3`);
	if (disabled2.classList.contains('disabled')) {
		disabled2.classList.remove('disabled');
	}
	
}
/* nextTab */
const nextBtn = document.querySelectorAll(".btnNext");
const prevBtn = document.querySelectorAll(".btnPrevious");

nextBtn.forEach(function(item, index){
	
    item.addEventListener('click', function(){
      let id1 = index;
      let id2 = index + 1;
/*       let tabElement1 = document.querySelectorAll("#pills-tab2 li a")[id1]; */
      let tabElement2 = document.querySelectorAll("#pills-tab2 li a")[id2];
      var lastTab = new bootstrap.Tab(tabElement2);
/*       tabElement1.classList.add('disabled'); */
      lastTab.show();   
    });
});

prevBtn.forEach(function(item, index){
    item.addEventListener('click', function(){
      let id = index;
      let id2 = index - 1;
      let tabElement = document.querySelectorAll("#pills-tab2 li a")[id];
      
/*       let tabElement2 = document.querySelectorAll("#pills-tab2 li a")[id2]; */
/*       tabElement?.classList?.remove('disabled'); */

      var lastTab = new bootstrap.Tab(tabElement);
      lastTab.show();
    });
});

/* //check validatate */

		var input1 = document.getElementById("inputName");
		var input2 = document.getElementById("inputPhone");
		var input3 = document.getElementById("inputEmail");
		
		var error2 = document.getElementById("error2");
		input1.onblur = function() {
			if (input1.value.length == 0) {
				input1.classList.add('invalid');
				error1.innerHTML = 'Please enter a correct first name and last name.'
			}
		};

		input1.onfocus = function() {
				input1.classList.remove('invalid');
				error1.innerHTML = "";
		};
		
		function validatePhoneNumber(input_str) {
			var re = /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;

			return re.test(input_str);
		}
		
		
		input2.onblur = function() {
			if (!validatePhoneNumber(input2.value)) {
				input2.classList.add('invalid');
				errorPhone.innerHTML = 'Please enter a correct number phone.';
			}
		};

		input2.onfocus = function() {
			if (this.classList.contains('invalid')) {
				this.classList.remove('invalid');
				errorPhone.innerHTML = "";
			}
		};

		
		input3.onblur = function() {
			if (input3.value.length === 0) {
				input3.classList.add('invalid');
				error3.innerHTML = 'Please enter a correct email.'
			}
		};

		input3.onfocus = function() {
			if (this.classList.contains('invalid')) {
				this.classList.remove('invalid');
				error3.innerHTML = "";
			}
		};

</script>
	<!-- tinhtien -->
	<!-- <script src="./js/tinhtien.js"></script> -->

</body>

</html>