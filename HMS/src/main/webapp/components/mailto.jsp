<%@include file="/components/taglibs.jsp"%>
<a href="tel:7275855535" class="btn btn-sm bg-dark text-primary rounded-lg p-1 m-1" role="button"><i class="fa-solid fa-mobile-retro p-1 text-warning"></i> Call Me</a>
<a href="sms:7275855535" class="btn btn-sm bg-dark text-primary rounded-lg p-1 m-1" role="button"><i class="fa-solid fa-comment-medical p-1 text-warning"></i> Message Me</a>
<a href="mailto:swavyast@gmail.com" class="btn btn-sm bg-dark text-primary rounded-lg p-1 m-1 me-auto" role="button"><i class="fa-solid fa-at p-1 text-warning"></i> Email Me</a>
<c:if test="${not empty adminObj || not empty doctorObj || not empty userObj}">
<div class="m-0 p-0 bg-black">
	<form action="${ctxp}/HMS/logout" method="post" class="mt-1" id="myLogOutForm" class="mx-auto">
		<button type="submit" class="btn btn-sm bg-danger text-white text-center p-2 m-2" form="logoutForm">Logout</button>
		<a href="../logout">ClickMe</a>
	</form>
</div>
</c:if>