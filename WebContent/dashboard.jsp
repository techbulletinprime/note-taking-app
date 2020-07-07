<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
body {
	background-color: #eeeeee;
}

.h7 {
	font-size: 0.8rem;
}

.gedf-wrapper {
	margin-top: 0.97rem;
}

@media ( min-width : 992px) {
	.gedf-main {
		padding-left: 4rem;
		padding-right: 4rem;
	}
	.gedf-card {
		margin-bottom: 2.77rem;
	}
}

/**Reset Bootstrap*/
.dropdown-toggle::after {
	content: none;
	display: none;
}
</style>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Dash Board</title>
</head>
<body>



	<nav class="navbar navbar-light bg-white">
		<a href="#" class="navbar-brand">Task Dash Board</a>
	<nav class="navbar navbar-light bg-white float-right">
		<a href="#" class="navbar-brand">Create Task</a>
	</nav>
	</nav>

	<div class="container-fluid gedf-wrapper">
		<div class="row">
		<c:forEach items="${tasks}" var="task">
			<div class="col-md-3">
				<!--- \\\\\\\Post-->
				<div class="card gedf-card">
					<div class="card-header">
						<div class="d-flex justify-content-between align-items-center">
							<div class="d-flex justify-content-between align-items-center">
								<div class="mr-2">
									<img class="rounded-circle" width="45"
										src="https://picsum.photos/50/50" alt="">
								</div>
								<div class="ml-2">
									<div class="h5 m-0">${task.userid}</div>
									<div class="h7 text-muted">Manage Your task</div>
								</div>
							</div>
							<div>
								<div class="dropdown">
									<button class="btn btn-link dropdown-toggle" type="button"
										id="gedf-drop1" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<i class="fa fa-ellipsis-h"></i>
									</button>
									<div class="dropdown-menu dropdown-menu-right"
										aria-labelledby="gedf-drop1">
										<div class="h6 dropdown-header">Configuration</div>
										<a class="dropdown-item" href="#">Save</a> <a
											class="dropdown-item" href="#">Hide</a> <a
											class="dropdown-item" href="#">Report</a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="card-body">
						<div class="text-muted h7 mb-2">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</div>
						<a class="card-link" href="#">
							<h5 class="card-title">${task.taskDescription}</h5>
						</a>

						<p class="card-text">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Magnam omnis nihil, aliquam est, voluptates
							officiis iure soluta alias vel odit, placeat reiciendis ut
							libero! Quas aliquid natus cumque quae repellendus. Lorem ipsum
							dolor sit amet consectetur adipisicing elit. Ipsa, excepturi.
							Doloremque, reprehenderit! Quos in maiores, soluta doloremque
							molestiae reiciendis libero expedita assumenda fuga quae.
							Consectetur id molestias itaque facere? Hic!</p>
						<div>
							<span class="badge badge-primary">JavaScript</span> <span
								class="badge badge-primary">Android</span> <span
								class="badge badge-primary">PHP</span> <span
								class="badge badge-primary">Node.js</span> <span
								class="badge badge-primary">Ruby</span> <span
								class="badge badge-primary">Paython</span>
						</div>
					</div>
					<div class="card-footer">
						<a href="#" class="card-link"><i class="fa fa-gittip"></i>
							Like</a> <a href="#" class="card-link"><i class="fa fa-comment"></i>
							Comment</a> <a href="#" class="card-link"><i
							class="fa fa-mail-forward"></i> Share</a>
					</div>
				</div>
				<!-- Post /////-->


			</div>
			</c:forEach>

		</div>
	</div>

</body>
</html>