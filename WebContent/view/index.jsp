<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>PhoneBook</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="view/styles/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="jumbotron text-center text-white" style="margin-bottom: 0">
		<h1>PhoneBook</h1>
	</div>

	<div class="container-fluid bg-dark text-center text-white">
		<p>Welcome to PhoneBook</p>
	</div>

	<div class="container" style="margin: 50px auto; align-items: center">
		<div class="modal-dialog">
			<div class="modal-content bg-dark" style="text-align: center">
				<div class="modal-header text-white">
					<h2 class="text-center" style="padding: 2%; padding-top: 5%">Login</h2>
				</div>
				<div class="modal-body">
					<form action="login" role="form" method="post">
						<div class="form-group">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text bg-dark text-white">Username</span>
								</div>
								<input type="text" class="form-control" name="username">
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text bg-dark text-white">Password</span>
								</div>
								<input type="password" class="form-control" name="password">
							</div>
							<div class="form-group form-check text-white">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox"> Remember me
								</label>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
							<button type="button" class="btn btn-danger" data-toggle="modal"
								data-target="#signUp">Sign Up</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="modal fade" id="signUp">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4>Sign Up</h4>
						<button type="button" class="close" data-dismiss="modal">x</button>
					</div>
					<div class="modal-body bg-dark">

						<form action="register" role="form" method="post">
							<div class="form-group">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">First
											name</span>
									</div>
									<input type="text" class="form-control" name="firstname">
								</div>

								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">Last
											name</span>
									</div>
									<input type="text" class="form-control" name="lastname">
								</div>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">E -
											mail</span>
									</div>
									<input type="email" class="form-control" name="email">
								</div>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">Username</span>
									</div>
									<input type="text" class="form-control" name="regUsername">
								</div>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">Password</span>
									</div>
									<input type="password" class="form-control" name="regPassword">
								</div>
								<button type="submit" class="btn btn-success">Submit</button>
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Cancel</button>
							</div>
						</form>

					</div>
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