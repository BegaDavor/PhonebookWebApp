<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="io.github.begadavor.model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>PhoneBook</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
<script src="script.js"></script>
</head>
<body>

	<div class="jumbotron text-center text-white" style="margin-bottom: 0">
		<h1>PhoneBook</h1>
		<p>Welcome, ${user.firstname}!</p>
	</div>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-center"
			id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="profile.jsp">Pofile</a></li>
				<li class="nav-item"><a class="nav-link"
					href="contacts.jsp">My Phonebook</a></li>
			</ul>
		</div>

	</nav>
	<div class="container">

		<div class="modal-dialog">
			<div class="modal-content bg-dark" style="text-align: center">
				<div class="modal-header text-white">
					<h2 class="text-center" style="padding: 2%; padding-top: 5%">Profile</h2>
				</div>
				<div class="modal-body text-white">

					<ul>
						<li><h5 class="col-sm-4" style="text-align: left;">First name:</h5>
							<p class="col-sm-8" style="text-align: left; padding: 0 5%;">${user.firstname}</p></li>
						<li><h5 class="col-sm-4" style="text-align: left;">Last name:</h5>
							<p class="col-sm-8" style="text-align: left; padding: 0 5%;">${user.lastname}</p></li>
						<li><h5 class="col-sm-4" style="text-align: left;">E - mail:</h5>
							<p class="col-sm-8" style="text-align: left; padding: 0 5%;">${user.email}</p></li>
						<li><h5 class="col-sm-4" style="text-align: left;">Username:</h5>
							<p class="col-sm-8" style="text-align: left; padding: 0 5%;">${user.username}</p></li>
					</ul>
					<button class="btn btn-danger" type="submit" style="float: right; margin-top: 5px;">
						<a href="index.jsp" style="color: white; text-decoration: none;">Log Out</a>
					</button>
				</div>
			</div>
		</div>

	</div>


	<footer class="page-footer font-small pt-4 bg-dark">
		<div class="footer-copyright text-center py-3 text-white">
			© 2018 Copyright: <a href="https://begadavor.github.io">
				Beganovic Davor</a>
		</div>
	</footer>

</body>
</html>