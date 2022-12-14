<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!----======== CSS ======== -->
<link rel="stylesheet" href="assets/admin/css/style.css">

<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

</head>
<body>

	<jsp:include page="/views/adminView/layout/sidebar.jsp" /> 

	<section class="home">
		<div class="text">Thêm Tài Khoản</div>
		
		<div class="content">
			<form action="${ pageContext.request.contextPath }/createManager" method="POST">
	            <div class="form-row">
	                <div class="form-group col-md-4">
						<div class="form-group col-md-4">
							<input hidden value="${ garage.id }" required
								type="text" class="form-control" name="id">
						</div>
						<label for="simpleinput">Garage ID</label> <input disabled value="${ garage.id }"
							type="text" id="simpleinput" class="form-control" >
					</div>
					<br>
					<div class="form-row">
	                <div class="form-group col-md-4">
	                    <label for="simpleinput">Tên quản lý</label>
	                    <input required type="text" id="simpleinput" class="form-control" name="fullname">
	                </div>
	            </div>
	            <br>
	            <div class="form-row">
	                <div class="form-group col-md-4">
	                    <label for="simpleinput">Số điện thoại</label>
	                    <input required type="text" id="simpleinput" class="form-control" name="phone_number">
	                </div>
	            </div>
	            <br>
	            <div class="form-row">
	                <div class="form-group col-md-4">
	                    <label for="simpleinput">Email</label>
	                    <input required type="text" id="simpleinput" class="form-control" name="email">
	                </div>
	            </div>
	            <br>
	            <div class="form-row">
	                <div class="form-group col-md-4">
	                    <label for="simpleinput">Password</label>
	                    <input required type="text" id="simpleinput" class="form-control" name="password">
	                </div>
	            </div>
	            <p style="color: red;">${ errorString }</p>
	            <br>
	             <input class="btn btn-success" type="submit" value="Thêm" />
	            <a class="btn btn-primary" href="${ pageContext.request.contextPath }/garageacctive">Hủy</a>
        </form>
		</div> 
	</section>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script>
        const body = document.querySelector('body'),
	    sidebar = body.querySelector('nav'),
	    toggle = body.querySelector(".toggle"),
	    searchBtn = body.querySelector(".search-box"),
	    modeSwitch = body.querySelector(".toggle-switch"),
	    modeText = body.querySelector(".mode-text");


		toggle.addEventListener("click" , () =>{
		    sidebar.classList.toggle("close");
		})
		
		searchBtn.addEventListener("click" , () =>{
		    sidebar.classList.remove("close");
		})
		
		modeSwitch.addEventListener("click" , () =>{
		    body.classList.toggle("dark");
		    
		    if(body.classList.contains("dark")){
		        modeText.innerText = "Light mode";
		    }else{
		        modeText.innerText = "Dark mode";
		        
		    }
		});
    </script>
</body>
</html>