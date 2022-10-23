<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
  <header class="container-fluid myNavBar">
    <nav class="navbar navbar-expand-md navbar-light">
      <div class="col-md-8 col-xl-7 col-lg-9 col-sm-6 d-flex">
        <a class="navbar-brand" href="#">
          <img src="assets/user/images/icon_vxr_full.svg" alt="">
        </a>
        <div class="Categories">
          <i class="fa fa-th"></i>
          Categories
        </div>
        <div class="input-search">
          <form action="abc.com">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for anything">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fa fa-search"></i>
                </span>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-4 col-xl-5 col-lg-3 col-sm-4">
        <div class="collapse navbar-collapse" id="collapsibleNavId">
          <ul class="navbar-nav">
            <li class="nav-item business">
              <a class="nav-link" href="#">Thuê xe</a>
            </li>
            <li class="nav-item teach">
              <a class="nav-link" href="#">Quản lý Chuyến đi</a>
            </li>
            <li class="nav-item">
              <div class="drop">
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
              </div>
            </li>
            <li class="nav-item item4 ">
              <div class="d-flex">
                <button type="button" class="btn btn--white mr-2" data-toggle="modal" data-target="#exampleModal">
                  Login
                </button>
              </div>
            </li>
          </ul>
        </div>
      </div>

      <button class="navbar-toggler d-lg-none col-sm-2" type="button" data-toggle="collapse"
        data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
        aria-label="Toggle navigation ">
        <span class="navbar-toggler-icon"></span>
      </button>
    </nav>
  </header>
  <!-- đăng nhập -->
  <section class="dangnhap">
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-xl">
        <div class="modal-content  login">
          <div class="modal-bodys">
            <div class="container ">
              <div class="log__content">
                <div class="left">
                  <div class="logo">
                    <img src="assets/user/images/icon_vxr_full.svg" alt="">
                    <p id="left__title">login social media to get quick access </p>
                  </div>

                  <div class="log">
                    <button type="button" class="btn btn-primary btn-lg btn-block"><i class="fab fa-facebook"></i>
                      Sign in with FaceBook</button>
                    <button type="button" class="btn btn-info btn-lg btn-block"><i class="fab fa-twitter"></i> Sign
                      in with twitter</button>
                    <button type="button" class="btn btn-danger btn-lg btn-block"><i class="fab fa-google"></i> Sign
                      in with Google</button>
                  </div>
                </div>

                <div class="right">

                  <H2>Login to your account</H2>
                  <p class="right__title">Don't have an account? <a href="">Sign up free</a></p>

                  <form>
                    <div class="form-group ">
                      <input type="email" class="form-control top" id="exampleInputEmail1" aria-describedby="emailHelp"
                        placeholder="Email Adress">
                    </div>
                    <div class="form-group ">
                      <input type="password" class="form-control top" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group form-check content">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Remember</label>

                      <a class="forgot" href="./dangky.html">Forgot password</a>
                    </div>
                    <button class="button3">Log With Email</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
