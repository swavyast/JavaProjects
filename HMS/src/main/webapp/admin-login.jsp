<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="components/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="components/allcss.jsp"%>
<title>Admin Login</title>
</head>
<body>
	<%
	out.print("");
	String str = "admin-login.jsp";
	String svltPath = request.getServletPath();
	%>
	<%--
<!-- My Popup -->
		<div id="popupContainer">
			<div class="popup-header d-flex">
			<h1 class="fs-4 mx-auto m-5 mt-2 pb-1 border-bottom">Logout prompt</h1>
			<button class="btn btn-close bg-danger mt-2 mx-2 text-white"></button>
			</div>
			<div class="col-12">
			<p class="mx-5 my-5 p-1 border-top border-bottom" id="paragraphText">You are requesting another login attempt, while you are already logged in.</p>
			</div>
			<div class="col-sm-6 offset-3 my-1 text-center"><small class="mx-5">(close it to continue)</small></div>
			<div class="d-flex me-auto m-2 my-3">
			<button class="btn btn-sm bg-danger mb-5 mt-0 m-1 text-white text-center ms-auto" id="logMeOut">Logout</button>
			<button class="btn btn-sm bg-secondary mb-5 mt-0 m-1 text-white text-center me-auto" class="closePopup">Close</button>
			</div>
		</div>
		<button class="btn btn-sm bg-black text-white text-center" id="popup-toggle">Toggle Popup</button>
<script>
  // Get the elements by their ID
  var popupToggle = document.getElementById("popup-toggle");
  var popupContainer = document.getElementById("popupContainer");
  var closeButton = document.getElementById("closePopup");
  
  // Show the pop-up window when the link is clicked
  popupToggle.addEventListener("click", function(event) {
    event.preventDefault();
    popupContainer.style.display = "block";
  });
  // Hide the pop-up window when the close button is clicked
  closeButton.addEventListener("click", function() {
    popupWindow.style.display = "none";
  });
</script>

--%>
	<%-- script type="text/javascript">
			//alert("Hi")
			//const myLogOutF = document.getElementById("logOutForm")
			//logOutForm.submit()
 			let x = confirm("You're about to terminate your session, Click OK to logout, Cancel to continue.");
			if(x){
				location.replace("http://localhost:8080/HMS/logout");
			}else{
				location.replace("http://localhost:8080/HMS/user/index.jsp");
			} 
		</script> --%>
	<c:if test="${not empty userObj}">
		<c:if test="${str == svlt}">
			<script type="text/javascript">
				const cofirmInput = confirm("You're about to logout. Are you sure, you want to proceed further?")
				if (cofirmInput) {
					document.getElementById('logOutForm').submit()
				} else {
					location
							.replace("http://localhost:8080/HMS/user/index.jsp");
				}
			</script>
		</c:if>
	</c:if>
	<!-- 	/* 		 */ -->
	<c:if test="${not empty doctorObj}">
		<c:if test="${str == svlt}">
			<script type="text/javascript">
				const cofirmInput = confirm("You're about to logout. Are you sure, you want to proceed further?")
				if (cofirmInput) {
					document.getElementById('logOutForm').submit()
				} else {
					location
							.replace("http://localhost:8080/HMS/doctor/index.jsp");
				}
			</script>
		</c:if>
	</c:if>
	<c:if test="${not empty adminObj}">
		<c:if test="${str == svlt}">
			<script type="text/javascript">
				const cofirmInput = confirm("You're about to logout. Are you sure, you want to proceed further?")
				if (cofirmInput) {
					document.getElementById('logOutForm').submit()
				} else {
					location
							.replace("http://localhost:8080/HMS/admin-login.jsp");
				}
			</script>
		</c:if>
	</c:if>
	<c:if test="${empty adminObj}">
		<header>
			<%@include file="components/navbar.jsp"%>
		</header>
		<!--=========================== login =========================== -->
		<div class="container">
			<!-- Toast Start-->
			<div class="toast" id="myToasty">
				<div class="toast-body">
					Hello, world! This is a toast message.
					<div class="mt-2 pt-2 border-top">
						<button type="button" class="btn btn-primary btn-sm">Take action</button>
						<button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="toast">Close</button>
					</div>
				</div>
			</div>
			<!-- Toast End-->
			<%--Toast Toggle --%>
			<button class="btn btn-primary m-2 p-2 text-white me-auto">Toast Toggle</button>
			<%--Modal Toggle --%>
			<button id="logoutPopupBtn" type="button" class="btn btn-danger text-white" data-toggle="modal" data-target="#logoutModal" data-bs-toggle="">Modal Toggle</button>
			<div class="row mt-3" id="formContainer">
				<div class="col-md-6 offset-3">
					<p class="fs-5 text-center mt-4 text-danger">
						New User ? <a class="text-light bg-dark px-4 p-2 mx-4 text-decoration-none rounded-pill" href="registration.jsp"><i class="fa-solid fa-user-plus"></i> Register here</a>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card card-shadow">
						<p class="fs-6 text-center mt-5">Admin Login</p>
						<div class="card-body border-top">
							<form method="post" action="admin-login">
								<span class="fs-6 text-danger">
									<c:if test="${not empty response}">
	         						  ${response}
            						<c:remove var="response" scope="session" />
									</c:if>
								</span>
								<input class="col-md-8 offset-2 p-2 mt-2" name="uid" type="text" placeholder="Email or UserId" required>
								<input class="col-md-8 offset-2 p-2 mt-2" name="scode" type="password" placeholder="Secret Code" required>
								<input class="btn btn-prmary bg-black col-md-8 offset-2 p-2 mt-4 text-white" type="submit" value="Authenticate">
							</form>
							<!-- 						<p class="card-caption">I'll write something about this card
							in future.</p> -->
							<div class="row d-flex mt-5 border-top">
								<div class="col-md-4 me-auto mt-4">
									<a class="btn btn-sm bg-danger p-2 text-light" style="width: 110px;" href="user-login.jsp"> User Login</a>
								</div>
								<div class="col-md-4 mt-4">
									<a class="btn btn-sm bg-danger p-2 text-light" style="width: 110px;" href="doctor-login.jsp"> Doctor Login</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--=========================== login =========================== -->
		<!--=========================== footer =========================== -->
		<%@include file="components/footer.jsp"%>
		<!--=========================== footer =========================== -->
	</c:if>
	<c:if test="${not empty adminObj}">
		<c:redirect url="admin/index.jsp"></c:redirect>
	</c:if>
	<%@include file="components/allscripts.jsp"%>
</body>
</html>