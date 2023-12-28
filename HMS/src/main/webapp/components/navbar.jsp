<%@include file="/components/taglibs.jsp"%>
<% String path = request.getContextPath(); //contextPath of request
ServletContext ctx = pageContext.getServletContext(); //contextPath of servlet
String ctxp = ctx.getContextPath(); //root
%>

<ul>
<li><a href="#" ><i class="fa-regular fa-hospital"></i> MediHome</a></li>
<li><a href="#" >Admin</a></li>
<li><a href="#" >User</a></li>
<li><a href="#" >Doctor</a></li>
<li><a href="#" >Appointments</a></li>
<li><a href="#" >Contacts</a></li>
<li><a href="#" >Support <i class="fa-solid fa-angle-down"></i></a>
<ul class="myDropdown">
<li><a href="#" >Chat With Us</a></li>
<li><a href="#" >Contact Us</a></li>
<li><a href="#" >Send An Email</a></li>
</ul>
</li>
<li><a href="#" >Gallery</a></li>
<li><a href="#" >About</a></li>
<li><a href="#" >Author</a></li>
</ul>









































































<nav class="navbar navbar-expand-xl navbar-dark bg-success">
	<a class="navbar-brand p-2" href="index.jsp"> <i class="fa-regular fa-hospital"></i> MediHome
	</a>
	<%-- <hr> <a> <span class="btn btn-light text-success fs-5 mt-2">
			<c:if test="${not empty doctorObj }">${doctorObj.name}</c:if>
			<c:if test="${not empty adminObj }">${adminObj.name}</c:if>
			<c:if test="${not empty userObj }">${userObj.name}</c:if>
		</span>
	</a> --%>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			<c:if test="${empty userObj && empty adminObj && empty doctorObj}">
				<li class="nav-item active p-2">
					<a class="nav-link" href="${ctxp}/HMS/admin-login.jsp"> <i class="fa-solid fa-right-to-bracket"></i> ADMIN
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="${ctxp}/HMS/doctor-login.jsp"> <i class="fa-solid fa-user-doctor"></i> DOCTOR
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="${ctxp}/HMS/appointments.jsp"> <i class="fa-solid fa-calendar-days"></i> APPOINTMENT
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="${ctxp}/HMS/user-login.jsp"> <i class="fa-solid fa-hospital-user"></i> USER
					</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Dropdown link </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a> <a class="dropdown-item" href="#">Something else here</a>
					</div>
				</li>
			</c:if>
			<!--       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li> -->
			<c:if test="${not empty userObj}">
				<li class="nav-item p-2">
					<a class="nav-link" href="${ctxp}/HMS/appointments.jsp"> <i class="fa-solid fa-calendar-days"></i> Appointments
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="#"> <i class="fa-solid fa-book-medical"></i> History
					</a>
				</li>
				<li class="nav-item active p-2">
					<a class="nav-link" href="#"> <i class="fa-solid fa-receipt"></i> Receipts
					</a>
				</li>
				<li class="nav-item active p-2">
					<a class="nav-link" href="#"> <i class="fa-solid fa-bell-concierge"></i> Reception
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="#"> <i class="fa-solid fa-file-medical"></i> Reports
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="${ctxp}/HMS/logout"> <i class="fa-solid fa-right-from-bracket"></i> Sign Out
					</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Dropdown link </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a> <a class="dropdown-item" href="#">Something else here</a>
					</div>
				</li>
			</c:if>
			<c:if test="${not empty adminObj}">
				<li class="nav-item active p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/admin/index.jsp"> <i class="fa-solid fa-right-to-bracket"></i>HOME
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/admin/doctors.jsp"> <i class="fa-solid fa-user-doctor"></i> DOCTOR
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/appointments.jsp"> <i class="fa-solid fa-calendar-days"></i> APPOINTMENT
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/user-login.jsp"> <i class="fa-solid fa-hospital-user"></i> USER
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/logout"> <i class="fa-solid fa-right-from-bracket"></i> Sign Out
					</a>
				</li>
				<li class="nav-item dropdown p-1">
					<button class="dropdown-toggle btn btn-secondary" type="button" id="admin-dropdown" data-bs-toggle="dropdown">Dropdown</button>
					<ul class="dropdown-menu" aria-labelledby="admin-dropdown">
						<li><a class="dropdown-item" href="#">Action</a></li>
						<li><a class="dropdown-item" href="#">Another action</a></li>
						<li><a class="dropdown-item" href="#">Something else here</a></li>
					</ul>
				</li>
			</c:if>
			<c:if test="${not empty doctorObj}">
				<li class="nav-item active p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/doctor/index.jsp"> <i class="fa-solid fa-right-to-bracket"></i>HOME
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/doctor/myprofile.jsp"> <i class="fa-solid fa-user-doctor"></i> Profile
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/appointments.jsp"> <i class="fa-solid fa-calendar-days"></i> APPOINTMENT
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/index.jsp"> <i class="fa-solid fa-hospital-user"></i> ROOT
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/logout"> <i class="fa-solid fa-right-from-bracket"></i> Sign Out
					</a>
				</li>
				<li class="nav-item dropdown p-2">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Profile <i class="fa-solid fa-hospital-user"></i>
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a> <a class="dropdown-item" href="#">Something else here</a>
					</div>
				</li>
			</c:if>
		</ul>
	</div>
</nav>