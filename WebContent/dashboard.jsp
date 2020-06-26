<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<a href="#" class="navbar-brand">Bootsbook</a>

</nav>
<nav class="navbar navbar-light bg-gray">
	<span>Search Here</span>
</nav>
<nav class="navbar navbar-light bg-gray">
	<form class="form-inline">
		<div class="input-group">
			<input type="text" class="form-control"
				aria-label="Recipient's username" aria-describedby="button-addon2">
			<div class="input-group-append">
				<button class="btn btn-outline-primary" type="button"
					id="button-addon2">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>
	</form>
</nav>


<div class="container-fluid gedf-wrapper">
	<div class="row">
		<div class="col-md-3">
		   <Span>Catagory</Span>
				<div class="custom-control custom-radio">
					<input type="radio" id="customRadio1" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label" for="customRadio1">All</label>
				</div>
				<div class="custom-control  custom-radio">
					<input type="radio" id="customRadio2" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label" for="customRadio2">Computer</label>
				</div>
				<div class="custom-control custom-radio">
					<input type="radio" id="customRadio3" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label" for="customRadio3">Engineering</label>
				</div>
				<div class="custom-control custom-radio">
					<input type="radio" id="customRadio4" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label" for="customRadio4">Engineering</label>
				</div>
			
		</div>
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
								<div class="h5 m-0">@LeeCross</div>
								<div class="h7 text-muted">Miracles Lee Cross</div>
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
						<h5 class="card-title">Lorem ipsum dolor sit amet,
							consectetur adip.</h5>
					</a>
                     <i class="fa fa-calendar" aria-hidden="true"></i>10 min ago
					<p class="card-text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Quo recusandae nulla rem eos ipsa praesentium
						esse magnam nemo dolor sequi fuga quia quaerat cum, obcaecati hic,
						molestias minima iste voluptates.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
					<a href="#" class="card-link"><i class="fa fa-comment"></i>
						Comment</a> <a href="#" class="card-link"><i
						class="fa fa-mail-forward"></i> Share</a>
				</div>
			</div>
			<!-- Post /////-->


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
								<div class="h5 m-0">@LeeCross</div>
								<div class="h7 text-muted">Miracles Lee Cross</div>
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
						<h5 class="card-title">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Velit consectetur deserunt illo esse
							distinctio.</h5>
					</a>

					<p class="card-text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Magnam omnis nihil, aliquam est, voluptates
						officiis iure soluta alias vel odit, placeat reiciendis ut libero!
						Quas aliquid natus cumque quae repellendus. Lorem ipsum dolor sit
						amet consectetur adipisicing elit. Ipsa, excepturi. Doloremque,
						reprehenderit! Quos in maiores, soluta doloremque molestiae
						reiciendis libero expedita assumenda fuga quae. Consectetur id
						molestias itaque facere? Hic!</p>
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
					<a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
					<a href="#" class="card-link"><i class="fa fa-comment"></i>
						Comment</a> <a href="#" class="card-link"><i
						class="fa fa-mail-forward"></i> Share</a>
				</div>
			</div>
			<!-- Post /////-->


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
								<div class="h5 m-0">@LeeCross</div>
								<div class="h7 text-muted">Miracles Lee Cross</div>
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
						<h5 class="card-title">Totam non adipisci hic! Possimus
							ducimus amet, dolores illo ipsum quos cum.</h5>
					</a>

					<p class="card-text">
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam
						sunt fugit reprehenderit consectetur exercitationem odio, quam
						nobis? Officiis, similique, harum voluptate, facilis voluptas
						pariatur dolorum tempora sapiente eius maxime quaerat. <a
							href="https://mega.nz/#!1J01nRIb!lMZ4B_DR2UWi9SRQK5TTzU1PmQpDtbZkMZjAIbv97hU"
							target="_blank">https://mega.nz/#!1J01nRIb!lMZ4B_DR2UWi9SRQK5TTzU1PmQpDtbZkMZjAIbv97hU</a>
					</p>
				</div>
				<div class="card-footer">
					<a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
					<a href="#" class="card-link"><i class="fa fa-comment"></i>
						Comment</a> <a href="#" class="card-link"><i
						class="fa fa-mail-forward"></i> Share</a>
				</div>
			</div>
			<!-- Post /////-->



		</div>
		<div class="col-md-3">
			<div class="card gedf-card">
				<div class="card-header">
					<div class="d-flex justify-content-between align-items-center">
						<div class="d-flex justify-content-between align-items-center">
							<div class="mr-2">
								<img class="rounded-circle" width="45"
									src="https://picsum.photos/50/50" alt="">
							</div>
							<div class="ml-2">
								<div class="h5 m-0">@LeeCross</div>
								<div class="h7 text-muted">Miracles Lee Cross</div>
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
						<i class="fa fa-clock-o"></i>10 min ago
					</div>
					<a class="card-link" href="#">
						<h5 class="card-title">Lorem ipsum dolor sit amet,
							consectetur adip.</h5>
					</a>

					<p class="card-text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Quo recusandae nulla rem eos ipsa praesentium
						esse magnam nemo dolor sequi fuga quia quaerat cum, obcaecati hic,
						molestias minima iste voluptates.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
					<a href="#" class="card-link"><i class="fa fa-comment"></i>
						Comment</a> <a href="#" class="card-link"><i
						class="fa fa-mail-forward"></i> Share</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="card gedf-card">
				<div class="card-header">
					<div class="d-flex justify-content-between align-items-center">
						<div class="d-flex justify-content-between align-items-center">
							<div class="mr-2">
								<img class="rounded-circle" width="45"
									src="https://picsum.photos/50/50" alt="">
							</div>
							<div class="ml-2">
								<div class="h5 m-0">@LeeCross</div>
								<div class="h7 text-muted">Miracles Lee Cross</div>
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
						<i class="fa fa-clock-o"></i>10 min ago
					</div>
					<a class="card-link" href="#">
						<h5 class="card-title">Lorem ipsum dolor sit amet,
							consectetur adip.</h5>
					</a>

					<p class="card-text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Quo recusandae nulla rem eos ipsa praesentium
						esse magnam nemo dolor sequi fuga quia quaerat cum, obcaecati hic,
						molestias minima iste voluptates.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
					<a href="#" class="card-link"><i class="fa fa-comment"></i>
						Comment</a> <a href="#" class="card-link"><i
						class="fa fa-mail-forward"></i> Share</a>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>