<%@page import="com.ml.db.DatabaseConfiguration"%>
<%@page import="com.ml.dao.UserDao"%>
<%@page import="com.ml.entity.Admin"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/components/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/components/allcss.jsp"%>
<meta charset="UTF-8">
<title>Admin Control Panel</title>
</head>
<body>

	<%
	UserDao u = new UserDao(DatabaseConfiguration.getMySQLConnection());
	session.getAttribute("userObj");
	%>
	<header><%@include file="../components/navbar.jsp"%></header>
	<div class="container-fluid text-light bg-success text-center"
		style="border-top: 1px solid white">
		<span class="fs-6"> <c:if test="${not empty response}">
               ${response} ${userObj.name}
			</c:if>
		</span>
	</div>

	<!--==============================Carousal Begins==============================-->
	<div class="carousel-container">
		<div class="container">

			<div class="container-fluid">
				<div id="mycar" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">

							<img id="pin" src="../images/location-icon-png.png" alt=""
								width="10" height="10"> <img
								src="../images/wmap-white.png" class="d-block w-100 wmap"
								data-bs-interval="1000" alt="x">
						</div>
						<!--                         <div class="carousel-item"><img src="../images/banner-2.jpg" alt="y" class="d-block w-100"
                                data-bs-interval="100">
                        </div>
                        <div class="carousel-item"><img src="../images/banner-3.jpg" alt="z" class="d-block w-100"
                                data-bs-interval="100">
                        </div> -->
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#mycar" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#mycar" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>


				</div>

			</div>

		</div>
	</div>

	<!--==============================Carousal Ends==============================-->

	<!--=========================== cards =========================== -->
	<hr>
	<div class="container p-3">

		<p class="text-center fs-3">Admin Dashboard</p>
		<hr>
		<div class="row">
			<div class="col-md-6">
				<div class="card card-shadow">
					<div class="card-body">
						<b class="fs-5">CRUD Users</b>
						<hr>
						<small class="card-caption">CRUD operations on User
							entity/relation.</small>
						<div class="row">
						
						
						
						
						<!-- Modal button -->
					<form action="../countUsers" method="post">
						<button type="button" class="btn bg-success text-light mt-2"
							data-bs-toggle="modal" data-bs-target="#exampleModal1">
							Count Users</button>
					</form>
						<!-- Modal button -->
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card card-shadow">
					<div class="card-body">
						<b class="fs-5">CRUD Doctors</b>
						<hr>
						<small class="card-caption">CRUD operations on Doctor
							entity/relation.</small>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="card card-shadow">
					<div class="card-body">
						<b class="fs-5">CRUD Appointments</b>
						<hr>
						<small class="card-caption">CRUD operations on Appointment
							entity/relation.</small>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card card-shadow">
					<div class="card-body">
						<b class="fs-6">CRUD Specialists</b>
						<hr>
						<small class="card-caption">CRUD operations on Specialists
							entity/relation.</small>

						<br>
						<!-- Modal button -->

						<button type="button" class="btn bg-success text-light mt-2"
							data-bs-toggle="modal" data-bs-target="#exampleModal">
							Add Speciality</button>

						<!-- Modal button -->


					</div>
				</div>
			</div>
		</div>
		<hr>

		<!-- Hospital Records -->

		<p class="fs-3 text-center">Detailed Insights</p>
		<hr>
		<div class="row ">

			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>

			</div>
			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>
			</div>

		</div>

		<div class="row">

			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>
			</div>

		</div>

		<div class="row">

			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-shadow">
					<div class="card-body">
						<small>Small letters to give a hint about something.</small>
						<p>Paragraph to write a description about this card.</p>
					</div>
					<textarea rows="4" cols="3" placeholder="Write something"></textarea>
					<a class="btn btn-dark" href="">Go </a>
				</div>
			</div>

		</div>

		<!-- Hospital Records -->


	</div>

	<!--=========================== cards =========================== -->


	<!-- Modals -->

		<!-- Add Speciality Modal -->

	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Speciality</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body"><input class="col-md-12" type="text" name="speciality" placeholder="Cardiology, Urology, Neurology something like that"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<form action="addSpeciality" method="post">
					<button type="button" class="btn btn-primary" name="speciality">Add</button>
					</form>
				</div>
			</div>
		</div>
	</div>



<!-- Add Speciality Modal Ends -->

<!-- CountUser Modal -->


	<div class="modal fade" id="exampleModal1" tabindex="-1"
		aria-labelledby="exampleModal1Label" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModal1Label">User Count</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">${countResult}</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>




<!-- Count User Modal Ends -->

















	<!-- Modals -->







	<!--=========================== footer =========================== -->

	<%@include file="/components/footer.jsp"%>

	<!--=========================== footer =========================== -->

	<!--=========================== scripts =========================== -->

	<%@include file="/components/allscripts.jsp"%>

	<!--=========================== scripts =========================== -->
	<c:remove var="response" scope="session" />
</body>
</html>