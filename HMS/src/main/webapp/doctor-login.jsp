<%@page import="com.ml.entity.Doctor"%>
<%@page import="com.ml.db.DatabaseConfiguration"%>
<%@page import="com.ml.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="components/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="components/allcss.jsp"%>
<title>Doctor Login</title>
</head>
<body>
	<% DoctorDao ddao = new DoctorDao(DatabaseConfiguration.getMySQLConnection());
	session = request.getSession();
	session.getAttribute("doctorObj");
%>
	<header>
		<%@include file="components/navbar.jsp"%>
	</header>
	<div class="card-body text-light">
		<c:if test="${not empty response}">
		${response}
		</c:if>
		<c:if test="${not empty doctorObj}">
		
		${doctorObj.name}
		
		</c:if>
	</div>
	<!--=========================== login =========================== -->
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-6 offset-3">
				<p class="fs-5 text-center mt-5 text-danger">
					New User ? <a class="text-light bg-dark p-2 m-2" href="registration.jsp"> Register here</a>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card card-shadow">
					<p class="fs-6 text-center mt-5">Doctor Login</p>
					<div class="card-body border-top">
						<form method="post" action="doctor">
							<span class="fs-6 text-danger">
								<c:if test="${not empty response}">
	           ${response}
            <c:remove var="response" scope="session" />
								</c:if>
							</span>
							<input class="col-md-8 offset-2 p-2 mt-2" name="uname" type="email" placeholder="Email or Username" required>
							<input class="col-md-8 offset-2 p-2 mt-2" name="pwd" type="password" placeholder="Password" required>
							<input class="btn btn-prmary bg-black text-white col-md-8 offset-2 p-2 mt-4" type="submit" value="Login">
						</form>
						<!-- 						<p class="card-caption">I'll write something about this card
							in future.</p> -->
						<div class="row d-flex mt-5 border-top">
							<div class="col-md-4 me-auto mt-4">
								<a class="btn btn-sm bg-danger p-2 text-light" style="width: 110px;" href="admin-login.jsp"> Admin Login</a>
							</div>
							<div class="col-md-4 mt-4">
								<a class="btn btn-sm bg-danger p-2 text-light" style="width: 110px;" href="user-login.jsp"> User Login</a>
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
	<%-- 	</c:if> --%>
	<!-- Admin View -->
	<c:if test="${not empty adminObj}">
	</c:if>
	<!-- Admin View -->
	<%@include file="components/allscripts.jsp"%>
</body>
</html>