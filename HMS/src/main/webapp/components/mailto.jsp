<a href="tel:7275855535" class="btn btn-sm bg-dark text-primary rounded-lg p-1 m-1" role="button"><i class="fa-solid fa-mobile-retro p-1 text-warning"></i> Call Me</a>
<a href="sms:7275855535" class="btn btn-sm bg-dark text-primary rounded-lg p-1 m-1" role="button"><i class="fa-solid fa-comment-medical p-1 text-warning"></i> Message Me</a>
<a href="mailto:swavyast@gmail.com" class="btn btn-sm bg-dark text-primary rounded-lg p-1 m-1 me-auto" role="button"><i class="fa-solid fa-at p-1 text-warning"></i> Email Me</a>
<c:if test="${not empty adminObj || not empty doctorObj || not empty userObj}">
<div class="m-0 p-0 bg-black d-flex">
<!-- <button type="submit" class="btn btn-sm bg-danger text-white text-center p-2 m-2" form="logOutForm">Logout</button> -->
<label for="logoutInput"><i class="fa-solid fa-power-off text-white position-relative px-0 mx-0 mt-1 p-2"></i></label>
<input type="submit" formaction="${ctxp}/HMS/logout" formmethod="post" class="btn text-primary shadow-lg position-absolute p-2 px-2 mx-2 my-0 py-0 text-center" style="border:1px solid #fff" value="" id="logoutInput">
</div>
</c:if>