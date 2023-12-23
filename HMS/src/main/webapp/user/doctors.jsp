<%@include file="../components/taglibs.jsp"%>
<DOCTYPE html>
<html>
<head>
<%@include file="../components/allcss.jsp"%>
<title>Doctors</title>
</head>
<body>
	<header>
		<%@include file="../components/navbar.jsp"%>
	</header>
	<div class="cotainer">
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
	</div>
	<!--=========================== footer =========================== -->
	<%@include file="/components/footer.jsp"%>
	<!--=========================== footer =========================== -->
	<!--=========================== scripts =========================== -->
	<%@include file="/components/allscripts.jsp"%>
	<!--=========================== scripts =========================== -->
</body>
</html>