<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="io.github.begadavor.model.User"%>
<%@ page import="io.github.begadavor.model.Contact"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script src="scripts/script.js"></script>
</head>
<body>

	<div class="jumbotron text-center text-white" style="margin-bottom: 0">
		<h1>PhoneBook</h1>
		<p>Welcome, ${user.firstname}</p>
	</div>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-center"
			id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="profile.jsp">Profile</a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="contacts.jsp">My Phonebook</a></li>
			</ul>
		</div>

	</nav>

	<div class="container">
		<h2 style="margin-top: 5%; margin-bottom: 5%;">${user.firstname}s
			contacts</h2>
		<form action="ViewContactController" method="post">
			<button type="submit" class="btn btn-primary"
				style="margin-bottom: 10px;">Show My Contacts</button>
			<table class="table table-hover table-responsive-lg"
				id="phonebookTable">
				<thead>
					<th>ID</th>
					<i class="fa fa-sort float-right" aria-hidden="true"></i>
					<th>First name</th>
					<i class="fa fa-sort float-right" aria-hidden="true"></i>
					<th>Last name</th>
					<i class="fa fa-sort float-right" aria-hidden="true"></i>
					<th>City</th>
					<i class="fa fa-sort float-right" aria-hidden="true"></i>
					<th>E - mail</th>
					<i class="fa fa-sort float-right" aria-hidden="true"></i>
					<th>Phone number</th>
					<i class="fa fa-sort float-right" aria-hidden="true"></i>
				</thead>
				<tbody>
					<c:forEach var="contact" items="${contactsList}">
						<tr>
							<td><c:out value="${contact.contactID}" /></td>
							<td><c:out value="${contact.firstName}" /></td>
							<td><c:out value="${contact.lastName}" /></td>
							<td><c:out value="${contact.city}" /></td>
							<td><c:out value="${contact.email}" /></td>
							<td><c:out value="${contact.phoneNumber}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		<div class="btn-group">
			<button type="button" class="btn btn-success" data-toggle="modal"
				data-target="#addContact" style="margin-bottom: 2%;">Add
				Contact</button>
			<button type="button" class="btn btn-warning text-white"
				data-toggle="modal" data-target="#editContact"
				style="margin-bottom: 2%;">Edit Contact</button>
			<button type="button" class="btn btn-danger" data-toggle="modal"
				data-target="#deleteContact" style="margin-bottom: 2%;">Delete
				Contact</button>
		</div>
		<!-- 		Add Contact Modal -->
		<div class="modal fade" id="addContact">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4>Add Contact</h4>
						<button type="button" class="close" data-dismiss="modal">x</button>
					</div>
					<div class="modal-body bg-dark">
						<form action="addContact" role="form" method="post">
							<div class="form-group">
								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">First
											name</span>
									</div>
									<input type="text" class="form-control" name="firstName">

								</div>

								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">Last
											name</span>
									</div>
									<input type="text" class="form-control" name="lastName">

								</div>

								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">City</span>
									</div>
									<input type="text" class="form-control" name="city">

								</div>

								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">E -
											mail</span>
									</div>
									<input type="text" class="form-control" name="email">

								</div>

								<div class="input-group mb-3">

									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">Phone
											number</span>
									</div>
									<input type="text" class="form-control" name="phoneNumber">

								</div>
								<button type="submit" class="btn btn-success">Add</button>
								<button type="reset" class="btn btn-danger">Reset</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- 		Delete Contact Modal -->
		<div class="modal fade" id="deleteContact">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4>Delete Contact</h4>
						<button type="button" class="close" data-dismiss="modal">x</button>
					</div>
					<div class="modal-body bg-dark">
						<p class="text-white">Input ID of contact which you want to
							delete!</p>

						<form action="deleteContact" role="form" method="post">
							<div class="form-group">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text bg-dark text-white">Contact ID</span>
									</div>
									<input type="text" class="form-control" name="deleteContactID">

								</div>
								<button type="submit" class="btn btn-success">Submit</button>
								<button type="reset" class="btn btn-danger">Reset</button>
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