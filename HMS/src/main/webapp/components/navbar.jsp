<%@include file="/components/taglibs.jsp"%>
<%
String path = request.getContextPath(); //contextPath of request
ServletContext ctx = pageContext.getServletContext(); //contextPath of servlet
String ctxp = ctx.getContextPath(); //root
session.getAttribute("doctorObj");

%>
<nav class="navbar bg-black fixed-top">
	<div class="container-fluid">
		<a class="navbar-brand text-white" href="index.jsp"> <i class="fa-regular fa-hospital"></i> MediHome
		</a>
		<button class="navbar-toggler" type="button" data-bs-theme="dark" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasNavbarLabel">
					<a class="navbar-brand p-2" href="index.jsp"> <i class="fa-regular fa-hospital"></i> MediHome
					</a>
				</h5>
										
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>

			<div class="col-sm-6 offset-3 dropdown navbar-nav flex-grow-1 pe-0 mx-auto my-5">
							
							<c:if test="${not empty userObj}">
							<a class="nav-link dropdown-toggle rounded-circle myAnchor" type="button" data-bs-toggle="dropdown" aria-expanded="false"> <img class="rounded-circle img-fluid" alt="avatar" src="../images/dpwbg.png" width="50"></a> ${userObj.name}
							</c:if>
							<c:if test="${not empty adminObj}">
							<a class="nav-link dropdown-toggle rounded-circle myAnchor" type="button" data-bs-toggle="dropdown" aria-expanded="false"> <img class="rounded-circle img-fluid" alt="avatar" src="../images/dpwbg.png" width="50"></a> ${adminObj.name}
							</c:if>
							<c:if test="${not empty doctorObj}">
							<a class="nav-link dropdown-toggle rounded-circle myAnchor" type="button" data-bs-toggle="dropdown" aria-expanded="false"> <img class="rounded-circle img-fluid" alt="avatar" src="../images/dpwbg.png" width="50"></a> ${doctorObj.name}
							</c:if>
							<c:if test="${empty userObj && empty adminObj && empty doctorObj}"><a class="nav-link dropdown-toggle rounded-circle myAnchor" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user p-3 m-0 border border-danger rounded-circle"></i></a></c:if>
							<ul class="dropdown-menu p-0">
							<c:if test="${empty userObj && empty adminObj && empty doctorObj}">
								<li>
									<a class="dropdown-item" href="${ctxp}/HMS/registration.jsp"><i class="fa-solid fa-user-plus"></i> Register</a>
								</li>
								<li>
									<a class="dropdown-item" href="${ctxp}/HMS/user-login.jsp"><i class="fa-solid fa-power-off"></i> Login</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">Something else here</a>
								</li>
							</c:if>

							<c:if test="${not empty userObj || not empty adminObj || not empty doctorObj}">
								<li>
									<a class="dropdown-item" href="${ctxp}/HMS/user-login.jsp"><i class="fa-solid fa-id-card"></i> Profile</a>
								</li>
								<li>
									<a class="dropdown-item" href="${ctxp}/HMS/user-login.jsp"><i class="fa-solid fa-key"></i> Password</a>
								</li>
								<li>
									<a class="dropdown-item" href="#"><i class="fa-solid fa-gears"></i> Settings</a>
								</li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li>
									<a class="dropdown-item" href="${ctxp}/HMS/logout"><i class="fa-solid fa-power-off"></i> Logout</a>
								</li>
							</c:if>

							</ul>
						</div>
			<div class="offcanvas-body border-top" data-bs-theme="dark">
				<form class="d-flex mt-3" role="search">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				
				<ul class="navbar-nav justify-content-end flex-grow-1 pe-3 m-1 p-1">
					<c:if test="${empty userObj && empty adminObj && empty doctorObj}">

						<li class="nav-item active">
							<a class="nav-link active" aria-current="page" href="${ctxp}/HMS/index.jsp"><i class="fa-solid fa-archway"></i> Home
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="${ctxp}/HMS/admin-login.jsp"> <i class="fa-solid fa-right-to-bracket"></i> ADMIN
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="${ctxp}/HMS/doctor-login.jsp"> <i class="fa-solid fa-user-doctor"></i> DOCTOR
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/appointments.jsp"> <i class="fa-solid fa-calendar-days"></i> APPOINTMENT
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/user-login.jsp"> <i class="fa-solid fa-hospital-user"></i> USER
							</a>
						</li>

					</c:if>
					<c:if test="${not empty userObj}">
						
						<li class="nav-item active">
							<a class="nav-link active" aria-current="page" href="${ctxp}/HMS/index.jsp"><i class="fa-solid fa-archway"></i> Home
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/appointments.jsp"> <i class="fa-solid fa-calendar-days"></i> Appointments
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#"> <i class="fa-solid fa-book-medical"></i> History
							</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="#"> <i class="fa-solid fa-receipt"></i> Receipts
							</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="#"> <i class="fa-solid fa-bell-concierge"></i> Reception
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#"> <i class="fa-solid fa-file-medical"></i> Reports
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/logout"><i class="fa-solid fa-power-off"></i> Sign Out
							</a>
						</li>

					</c:if>
					<c:if test="${not empty adminObj}">
						<%
						session.getAttribute("name");
						%>
						
						<li class="nav-item active">
							<a class="nav-link active" aria-current="page" href="${ctxp}/HMS/index.jsp"><i class="fa-solid fa-archway"></i> Home
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/admin/doctors.jsp"> <i class="fa-solid fa-user-doctor"></i> DOCTOR
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/appointments.jsp"> <i class="fa-solid fa-calendar-days"></i> APPOINTMENT
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/user-login.jsp"> <i class="fa-solid fa-hospital-user"></i> USER
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/logout"><i class="fa-solid fa-power-off"></i> Sign Out
							</a>
						</li>
					</c:if>
					<c:if test="${not empty doctorObj}">

						<li class="nav-item active">
							<a class="nav-link active" aria-current="page" href="${ctxp}/HMS/index.jsp"><i class="fa-solid fa-archway"></i> Home
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link bs-danger-rgb bs-danger" href="${ctxp}/HMS/doctor/myprofile.jsp"> <i class="fa-solid fa-user-doctor"></i> Profile
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/appointments.jsp"> <i class="fa-solid fa-calendar-days"></i> APPOINTMENT
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/index.jsp"> <i class="fa-solid fa-hospital-user"></i> ROOT
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${ctxp}/HMS/logout"><i class="fa-solid fa-power-off"></i> Sign Out
							</a>
						</li>

					</c:if>
				</ul>
			</div>
		</div>
	</div>
</nav>