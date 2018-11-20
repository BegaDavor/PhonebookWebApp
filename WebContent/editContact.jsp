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
<link rel="stylesheet" href="styles/style.css">
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
		<p>Edit Contact</p>
	</div>

	<div class="container" style="margin: 50px auto; align-items: center">
		<!-- 		Edit Contact Modal -->
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4>Edit Contact</h4>
						<button type="button" class="close" data-dismiss="modal">x</button>
					</div>
					<div class="modal-body bg-dark">
						<form action="editContact" role="form" method="post">
							<div class="form-group">
								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">First
											name</span>
									</div>
									<input type="text" class="form-control" name="editFirstName"
										value="${specContact.firstName}">

								</div>

								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">Last
											name</span>
									</div>
									<input type="text" class="form-control" name="editLastName"
										value="${specContact.lastName}">

								</div>

								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">City</span>
									</div>
									<input type="text" class="form-control" name="editCity"
										value="${specContact.city}">

								</div>

								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">E -
											mail</span>
									</div>
									<input type="text" class="form-control" name="editEmail"
										value="${specContact.email}">

								</div>

								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">Phone
											number</span>
									</div>
									<input type="text" class="form-control" name="editPhoneNumber"
										value="${specContact.phoneNumber}">

								</div>
								<button type="submit" class="btn btn-success">Submit</button>
								<button type="reset" class="btn btn-danger">Reset</button>
							</div>
						</form>
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