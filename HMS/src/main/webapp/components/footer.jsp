<%@include file="/components/taglibs.jsp"%>
<%-- <%session.getAttribute("userObj"); %> --%>
<c:if test="${empty userObj}">
<div class="vstack gap-2 col-md-5 mx-auto mt-5 border-bottom"></div>
</c:if>
<div class="collapse" id="navbarToggleExternalContent" data-bs-theme="dark">
	<div class="bg-dark p-4">
		
		<nav class="navbar bg-black fixed-bottom">
			<div class="container-fluid bg-black-subtle">
				<a class="navbar-brand text-light" href="${ctxp }/HMS/index.jsp"><i class="fa-regular fa-hospital"></i> MediHome</a>
			<h5 class="h5 disabled">Quick Links</h5>
			</div>
			
			<div class="bg-success p-2 w-100 d-flex shadow-lg" style="--bs-bg-opacity: .3;">
				<ul class="navbar-nav me-auto mb-2 mt-4 mb-lg-0 mx-auto">
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
				</ul>
				<ul class="navbar-nav me-auto mb-2 mt-4 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
				</ul>
				<ul class="navbar-nav me-auto mb-2 mt-4 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
				</ul>
				<ul class="navbar-nav me-auto mb-2 mt-4 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-light" aria-current="page" href="#">Home</a>
					</li>
				</ul>
			</div>
		</nav>
	</div>
</div>
<nav class="navbar navbar-dark bg-black fixed-bottom">
	<div class="container-fluid col-sm-4">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</div>
	<div class="col-sm-8 mb-0 container-fluid mt-1 bg-black text-white">
		<div class="col-sm-8 mx-auto"></div>
		<div class="col-sm-4 mx-auto">
			<p class="mb-0">
				&copy;copyrights <span class="vr mx-2"></span>mediHome <button type="button" class="btn btn-lg btn-danger ms-auto mx-2" data-bs-placement="top" data-bs-trigger="focus" data-bs-toggle="popover" data-bs-title="Popover title" data-bs-content="And here's some amazing content. It's very engaging. Right?"><i class="fa-solid fa-info"></i></button>
			</p>
		</div>
	</div>
</nav>
