<%@page import="java.util.Date"%>
<%-- <%@page import="java.sql.Date"%> --%>
<%@page import="com.ml.entity.Doctor"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ml.dao.DoctorDao"%>
<%@page import="com.ml.entity.Speciality"%>
<%@page import="java.util.List"%>
<%@page import="com.ml.db.DatabaseConfiguration"%>
<%@page import="com.ml.dao.SpecialityDao"%>
<%@page import="java.time.LocalDate"%>
<%@include file="../components/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../components/allcss.jsp"%>
<title>Doctors</title>
</head>
<body>
	<%
	DoctorDao ddao = new DoctorDao(DatabaseConfiguration.getMySQLConnection());
	session = request.getSession();
	String msg = (String) session.getAttribute("addDoctorResp");
	%>
	<header>
		<%@include file="../components/navbar.jsp"%>
	</header>
	<div class="response row m-2 p-2 bg-dark rounded-pill">
		<%
		out.print(msg + " add more?");
		%>
		<c:if test="${not empty addDoctorResp}">
			<span class="card border shadow text-info fs-3">${addDoctorResp}</span>
			<!-- FIXME -->
		</c:if>
		<%-- <c:remove var="addDoctorResp" scope="session" /> --%>
	</div>
	<div class="container-fluid text-center myjumbo">
		<div class="jumbotron jumbotron-fluid border shadow-lg m-2 p-2 mx-auto">
			<div class="container">
				
				<h1 class="display-4">Doctor's Control Panel</h1>
				
				<div class="card rounded-pill bg-indigo">
				
				<div class = "card-body shadow">
				<p class="text-right d-flex col-7 mx-auto p-1 my-auto"><input class="w-75 form-control border-2" type="text" placeholder="search here"><button type="submit" class="w-25 bg-success text-white border-1 m-1 p-2">Query</button></p>
				</div>
				
				</div>
				
				<p class="lead mt-4">This control panel will facilitate operations on doctor entities. Operations such as add a </p>
			</div>
		</div>
	</div>
	<div class="container-fluid d-flex p-2">
		<div class="card shadow w-25 m-1 p-1">
			<div class="card-body">
				<form action="${ctxp}/HMS/addDoctor" method="post">
					<header>
						<h2 class="m-3 p-3 text-center">Add Doctor</h2>
					</header>
					<div class="form-group">
						<label class="m-1 p-1" for="name">Name</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required="required">
					</div>
					<div class="form-group">
						<label class="m-1 p-1" for="dob">Date Of Birth</label>
						<input type="date" class="form-control" id="dob" name="dob" required="required">
					</div>
					<div class="form-group">
						<label class="m-1 p-1" for="qual">Qualification</label>
						<input type="Text" class="form-control" id="qual" name="qual" placeholder="Enterq qualification">
					</div>
					<div class="form-group">
						<label class="m-1 p-1" for="spclt">Speciality</label>
						<select id="spclt" name="spclt" class="form-control">
							<!-- <optgroup label="optgrp">Select An Option</optgroup> -->
							<option>---Select---</option>
							<%
							SpecialityDao sdao = new SpecialityDao(DatabaseConfiguration.getMySQLConnection());
							List<Speciality> list = sdao.listSpeciality();
							for (Speciality s : list) {
							%>
							<option><%=s.getSp_name()%></option>
							<%
							}
							%>
						</select>
					</div>
					<div class="form-group">
						<label class="m-1 p-1" for="emial">Email address</label>
						<input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label class="m-1 p-1" for="password">Password</label>
						<input type="password" class="form-control" id="password" name="password" placeholder="Password">
					</div>
					<div class="form-group">
						<label class="m-1 p-1" for="phone">Mobile Number</label>
						<input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter mobile number">
					</div>
					<!--<div class="form-group">
						<label class="m-1 p-1" class="m-1 p-1" for="password">Password</label>
						<input type="password" class="form-control" id="password" placeholder="Password">
					</div>
					 					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Check me out</label>
					</div> -->
					<button type="submit" class="btn btn-primary mt-4 mx-auto d-flex">Submit</button>
				</form>
			</div>
		</div>
		<div class="card w-75 shadow m-1 p-1" id="doc-table">
			<header>
				<h2 class="m-3 p-3 text-center">Doctor Details</h2>
			</header>
			<div class="card-body m-1 p-1">
				<table class="table-bordered p-1 text-left mx-auto">
					<thead class="thead-dark">
						<tr>
							<th scope="col" style="height:36px;" class="text-center p-1">#</th>
							<th scope="col" style="height:36px;" class="text-center p-1">Name</th>
							<th scope="col" style="height:36px;" class="text-center p-1">DOB</th>
							<th scope="col" style="height:36px;" class="text-center p-1">Qualification</th>
							<th scope="col" style="height:36px;" class="text-center p-1">Speciality</th>
							<th scope="col" style="height:36px;" class="text-center p-1">EMAIL</th>
							<th scope="col" style="height:36px;" class="text-center p-1">PHONE</th>
							<th scope="col" style="height:36px;" class="text-center p-1">ACTION</th>
						</tr>
					</thead>
					<tbody>
						<%
						DoctorDao d_dao = new DoctorDao(DatabaseConfiguration.getMySQLConnection());

						List<Doctor> dr_list = d_dao.fetchDoctorList();
						int i = 1;
						for (Doctor d : dr_list) {
						%>
						<tr>
							<td class="m-1 p-1"><%=i%></td>
							<td class="m-1 p-1" class="text-wrap" style="width: 8rem;"><%=d.getName()%></td>
							<td class="m-1 p-1"><%=d.getDob()%></td>
							<td class="m-1 p-1" class="text-wrap text-center" style="width: 3rem;"><%=d.getQual()%></td>
							<td class="m-1 p-1" class="text-wrap text-center" style="width: 3rem;"><%=d.getSpclt().getSp_name()%></td>
							<td class="m-1 p-1"><%=d.getEmail()%></td>
							<td class="m-1 p-1"><%=d.getPhone()%></td>
							<td class="m-1 p-1" class="d-flex">
								<a class="btn btn-sm btn-primary m-1 px-3 py-1" href="#">Edit</a> <a class="btn btn-sm btn-danger m-1 p-1" href="#">Delete</a>
							</td>
						</tr>
						<%
						i++;
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- <div class="cotainer">
		<div class="container">
			<header class="p-2 m-4">
				<h1 class="text-center py-2 text-dark">Our Doctors</h1>
			</header>
			<div class="container-fluid mt-4">
				<div class="row p-1">
					<div class="col-md-4 p-1">
						<div class="card card-shadow bg-danger">
							<div class="card-body text-light">
								<b class="fs-5">Physicians</b>
								<hr>
								<small class="card-caption">We have n number of Physicians in our hospital.</small>
								<div class="container border border-light py-2">
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<b class="text-light">Name</b>
										</div>
										<div class="col floatright">
											<b class="text-light">Access Link</b>
										</div><hr>
									</div>
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<small class="text-light">Name 1</small>
										</div>
										<div class="col floatright">
											<a href="#" class="text-light btn btn-dark">Get Me</a>
										</div>
									</div><hr>
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<small class="text-light">Name 2</small>
										</div>
										<div class="col floatright">
											<a href="#" class="text-light btn btn-dark">Get Me</a>
										</div>
									</div><hr>
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<small class="text-light">Name 3</small>
										</div>
										<div class="col floatright">
											<a href="#" class="text-light btn btn-dark">Get Me</a>
										</div>
									</div><hr>
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<small class="text-light">Name 4</small>
										</div>
										<div class="col floatright">
											<a href="#" class="text-light btn btn-dark">Get Me</a>
										</div>
									</div>
								</div>
								<a class="btn nav-link text-light bg-dark mt-2 px-2" href="doctor.ml">Get Details</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 p-1">
						<div class="card card-shadow bg-success">
							<div class="card-body text-light">
								<b class="fs-5">Cardiologists</b>
								<hr>
								<small class="card-caption">We have n number of cardiologists in our hospital.</small>
								<div class="container border border-info my-2 py-2">
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<b class="text-light">Name</b>
										</div>
										<div class="col floatright">
											<b class="text-light">Access Link</b>
										</div>
									</div>
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<small class="text-light">Name 1</small>
										</div>
										<div class="col floatright">
											<a href="#" class="text-light btn btn-dark">Get Me</a>
										</div>
									</div>
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<small class="text-light">Name 2</small>
										</div>
										<div class="col floatright">
											<a href="#" class="text-light btn btn-dark">Get Me</a>
										</div>
									</div>
								</div>
								<a class="btn nav-link text-light bg-dark mt-2 px-2" href="doctor.ml">Get Details</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 p-1">
						<div class="card card-shadow bg-primary">
							<div class="card-body text-light">
								<b class="fs-5">Gynecologists</b>
								<hr>
								<small class="card-caption">We have n number of Gynecologists in our hospital.</small>
								<div class="container border border-info my-2 py-2">
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<b class="text-light">Name</b>
										</div>
										<div class="col floatright">
											<b class="text-light">Access Link</b>
										</div>
									</div>
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<small class="text-light">Name 1</small>
										</div>
										<div class="col floatright">
											<a href="#" class="text-light btn btn-dark">Get Me</a>
										</div>
									</div>
									<div class="row p-1 mt-2 clearfix">
										<div class="col floatleft">
											<small class="text-light">Name 2</small>
										</div>
										<div class="col floatright">
											<a href="#" class="text-light btn btn-dark">Get Me</a>
										</div>
									</div>
								</div>
								<a class="btn nav-link text-light bg-dark mt-2 px-2" href="doctor.ml">Get Details</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!--=========================== footer =========================== -->
	<%@include file="/components/footer.jsp"%>
	<!--=========================== footer =========================== -->
	<!--=========================== scripts =========================== -->
	<%@include file="/components/allscripts.jsp"%>
	<!--=========================== scripts =========================== -->
</body>
</html>