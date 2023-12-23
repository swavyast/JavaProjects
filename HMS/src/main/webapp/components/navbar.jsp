<%@include file="/components/taglibs.jsp"%>
<% String path = request.getContextPath();
ServletContext ctx = pageContext.getServletContext();
String ctxp = ctx.getContextPath();
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<a class="navbar-brand p-2" href="index.jsp">
		<i class="fa-regular fa-hospital"></i> MediHome
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			<c:if test="${empty userObj && empty adminObj}">
				<li class="nav-item active p-2">
					<a class="nav-link" href="admin-login.jsp">
						<i class="fa-solid fa-right-to-bracket"></i> ADMIN
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="doctor-login.jsp">
						<i class="fa-solid fa-user-doctor"></i> DOCTOR
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="appointments.jsp">
						<i class="fa-solid fa-calendar-days"></i> APPOINTMENT
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="user-login.jsp">
						<i class="fa-solid fa-hospital-user"></i> USER
					</a>
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
					<a class="nav-link" href="../appointments.jsp">
						<i class="fa-solid fa-calendar-days"></i> Appointments
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="#">
						<i class="fa-solid fa-book-medical"></i> History
					</a>
				</li>
				<li class="nav-item active p-2">
					<a class="nav-link" href="#">
						<i class="fa-solid fa-receipt"></i> Receipts
					</a>
				</li>
				<li class="nav-item active p-2">
					<a class="nav-link" href="#">
						<i class="fa-solid fa-bell-concierge"></i> Reception
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="#">
						<i class="fa-solid fa-file-medical"></i> Reports
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link" href="../logout">
						<i class="fa-solid fa-right-from-bracket"></i> Sign Out
					</a>
				</li>
				<li class="nav-item dropdown p-2">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> ${userObj.name} </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Account</a>
						<a class="dropdown-item" href="#">Appointments</a>
						<a class="dropdown-item" href="#">History</a>
						<a class="dropdown-item" href="#">Payments</a>
						<a class="dropdown-item" href="#">Reports</a>
						<a class="dropdown-item" href="../logout">Sign Out</a>
					</div>
				</li>
			</c:if>
			<c:if test="${not empty adminObj}">
				<li class="nav-item active p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/user/admin-panel.jsp">
						<i class="fa-solid fa-right-to-bracket"></i>HOME
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/user/doctors.jsp">
						<i class="fa-solid fa-user-doctor"></i> DOCTOR
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/appointments.jsp">
						<i class="fa-solid fa-calendar-days"></i> APPOINTMENT
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/user-login.jsp">
						<i class="fa-solid fa-hospital-user"></i> USER
					</a>
				</li>
				<li class="nav-item p-2">
					<a class="nav-link text-light" href="${ctxp}/HMS/logout">
						<i class="fa-solid fa-right-from-bracket"></i> Sign Out
					
				</li>
			</c:if>
		</ul>
	</div>
</nav>