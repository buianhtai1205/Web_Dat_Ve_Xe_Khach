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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="../assets/user/css/index.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<!-- owlCousel -->
<link rel="stylesheet" href="../assets/lib/owl.carousel.min.css">
<link rel="stylesheet" href="../assets/lib/owl.theme.default.min.css">

<!-- slick -->

<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<!-- animated -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet" href="../assets/user/css/listCoachSearch.css">

<script type="text/javascript">
	var disabled1 = document.getElementsByClassName(`navlink_1`);
	disabled1.onClick = function a() {
	
		disabled1.classList.add('disabled');

		console.log(disabled1)
	
	}
</script>
</head>

<body>

	<%@ include file="../views/header.jsp"%>

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
														data-target="#collapseChonChuyen" aria-expanded="false"
														aria-controls="collapseChonChuyen">Chọn chuyến</button>
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
												<ul class="nav nav-pills mb-3" id="pills-tab2"
													role="tablist">
													<li class="nav-item" role="presentation"><a
														class="nav-link nav-link_1 active" id="pills-img-tab2"
														data-toggle="pill" href="#img2" role="tab"
														aria-controls="pills-img2" aria-selected="true"><div
																class="form-check form-check-inline">
																<input class="form-check-input" type="checkbox"
																	name="inlineRadioOptions" id="inlineRadio1"
																	value="option1" checked> <label
																	class="form-check-label line-connect"
																	for="inlineRadio1">1.Chỗ mong muốn -></label>

															</div></a></li>
													<li class="nav-item" role="presentation"><a
														class="nav-link nav-link_2" id="pills-cmt-tab2"
														data-toggle="pill" href="#pills-cmt2" role="tab"
														aria-controls="pills-cmt" aria-selected="false" disabled><div
																class="form-check form-check-inline">
																<input class="form-check-input" type="checkbox"
																	name="inlineRadioOptions" id="inlineRadio2"
																	value="option2"> <label
																	class="form-check-label" for="inlineRadio2">2.Điểm
																	đón trả -></label>
															</div> </a></li>
													<li class="nav-item" role="presentation"><a
														class="nav-link nav-link_3" id="pills-travel-tab2"
														data-toggle="pill" href="#pills-travel2" role="tab"
														aria-controls="pills-travel" aria-selected="false"><div
																class="form-check form-check-inline">
																<input class="form-check-input" type="checkbox"
																	name="inlineRadioOptions" id="inlineRadio3"
																	value="option3"> <label
																	class="form-check-label" for="inlineRadio3">3.Nhập
																	thông tin </label>
															</div></a></li>



												</ul>

												<div class="tab-content" id="pills-tabContent">
													<div class="tab-pane fade show active" id="img2"
														role="tabpanel" aria-labelledby="pills-img-tab2">
														<%@ include file="xe16.jsp"%>
														<div style="border-top: 1px solid;">

															<div class="line"
																style="display: block; border-bottom: 10px;"></div>
															<div
																style="display: flex; justify-content: flex-end; margin-top: 10px;">
																<p
																	style="margin-right: 16px; margin-bottom: 0; margin-top: 5px;">Tổng
																	cộng: 0đ</p>
																<button type="button" class="btn btn-primary"
																	onclick="a(1)">Tiếp tục</button>
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
																			<p class="card-text">Lưu ý Các mốc thời gian đón,
																				trả bên dưới là thời gian dự kiến. Lịch này có thể
																				thay đổi tùy tình hình thưc tế.</p>
																			<div class="card__2">
																				<div class="card__right1">
																					<h6>Điểm đón</h6>
																					<ul>
																						<div class="form-check" style="display: flex">
																							<input class="form-check-input" type="radio"
																								name="exampleRadios" id="exampleRadios1"
																								value="option1" checked> <label
																								class="form-check-label" for="exampleRadios1"
																								style="font-size: 16px"> 06:30 • Bãi Xe
																								Thành Thái </label>
																						</div>
																						<div class="form-check" style="display: flex">
																							<input class="form-check-input" type="radio"
																								name="exampleRadios" id="exampleRadios1"
																								value="option1" checked> <label
																								class="form-check-label" for="exampleRadios1"
																								style="font-size: 16px"> 06:40 • Lý
																								Thường Kiệt </label>
																						</div>
																						<div class="form-check" style="display: flex">
																							<input class="form-check-input" type="radio"
																								name="exampleRadios" id="exampleRadios1"
																								value="option1" checked> <label
																								class="form-check-label" for="exampleRadios1"
																								style="font-size: 16px"> 06:50 • Cây
																								xăng mũi tàu Trường Chinh</label>
																						</div>
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
																						<div class="form-check" style="display: flex">
																							<input class="form-check-input" type="radio"
																								name="exampleRadios2" id="exampleRadios2"
																								value="option2" checked> <label
																								class="form-check-label" style="font-size: 16px"
																								for="exampleRadios2"> 06:30 • Bãi Xe
																								Thành Thái </label>
																						</div>
																						<div class="form-check" style="display: flex">
																							<input class="form-check-input" type="radio"
																								name="exampleRadios2" id="exampleRadios2"
																								value="option2" checked> <label
																								class="form-check-label" for="exampleRadios2"
																								style="font-size: 16px"> 06:40 • Lý
																								Thường Kiệt </label>
																						</div>
																						<div class="form-check" style="display: flex">
																							<input class="form-check-input" type="radio"
																								name="exampleRadios2" id="exampleRadios2"
																								value="option2" checked> <label
																								class="form-check-label" for="exampleRadios2"
																								style="font-size: 16px"> 06:50 • Cây
																								xăng mũi tàu Trường Chinh</label>
																						</div>
																					</ul>
																				</div>

																			</div>

																		</div>
																	</div>

																	<div style="border-top: 1px solid;">

																		<div
																			style="display: flex; align-items: center; justify-content: space-between; margin-top: 20px;">
																			<button type="button" class="btn btn-secondary">Secondary</button>
																			<div style="display: flex;">
																				<p
																					style="margin-right: 16px; margin-bottom: 0; margin-top: 10px;">Tổng
																					cộng: 0đ</p>
																				<button type="button" class="btn btn-primary"
																					onclick="a(2)" style="">Tiếp tục</button>
																			</div>
																		</div>
																	</div>
																</div>


															</div>
														</div>
													</div>

													<div class="tab-pane fade" id="pills-travel2"
														role="tabpanel" aria-labelledby="pills-travel-ta2">
														<div class="row">
															<div class="col-12">
																<div class="card animate__animated animate__zoomIn">
																	<div class="card-body">
																		<p>Chúng tôi chỉ dùng thông tin của bạn trong việc
																			ghi nhận vé.</p>

																		<form action="#" method="POST">
																			<div class="form-group ">
																				<input type="text" class="form-control top"
																					id="inputName" aria-describedby="nameHelp"
																					placeholder="First and Last name " name="nameUser"
																					value="" required>
																				<div>
																					<p id="error"></p>
																				</div>
																			</div>


																			<div class="form-group ">
																				<input type="text" class="form-control top"
																					id="inputPhone" aria-describedby="numberphoneHelp"
																					placeholder="Number phone" name="phoneUser"
																					value="" required>
																				<div>
																					<p id="error2"></p>
																				</div>
																			</div>

																			<div class="form-group ">
																				<input type="text" class="form-control top"
																					id="inputEmail" aria-describedby="mailHelp"
																					placeholder="Email" name="emailUser" value=""
																					required>
																				<div>
																					<p id="error3"></p>
																				</div>
																			</div>
																			<div class="form-group ">
																				<input type="text" class="form-control top"
																					id="inputOther" aria-describedby="otherHelp"
																					placeholder="Note" name="noteUser" value="">
																				<div>
																					<p id="error4"></p>
																				</div>
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
																		</form>
																	</div>
																	<div style="border-top: 1px solid;">

																		<div class="line"
																			style="display: block; border-bottom: 10px;"></div>
																		<div
																			style="display: flex; align-items: center; justify-content: space-between;">
																			<button type="button" class="btn btn-secondary"
																				style="margin-top: 20px">Quay lại</button>
																			<div style="display: flex; margin-top: 10px;">
																				<p
																					style="margin-right: 16px; margin-bottom: 0; margin-top: 5px;">Tổng
																					cộng: 0đ</p>
																				<button type="button" class="btn btn-primary"
																					onclick="a(3)">Tiếp tục</button>
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

	<%@ include file="../layout/user/footer.jsp"%>

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

	<!-- tinhtien -->
	<!-- <script src="./js/tinhtien.js"></script> -->
</body>

</html>