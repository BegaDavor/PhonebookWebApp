<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="io.github.begadavor.model.User" %>
<!DOCTYPE html>
<html lang = "en">
<head>
    <title>PhoneBook</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="view/styles/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
  <script src="script.js"></script>
</head>
<body>

    <div class="jumbotron text-center text-white" style="margin-bottom:0">
        <h1>PhoneBook</h1>
        <p>${user.firstname}</p>
    </div>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="view/profile.jsp">Pofile</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="view/contacts.jsp">My Phonebook</a>
                </li>
            </ul>
        </div>

    </nav>

    <div class="container">

        <h4> First name: </h4> <p>${user.firstname}</p>
        <h4> Last name: </h4> <p>${user.lastname}</p>
        <h4> E - mail: </h4> <p>${user.email}</p>
        <h4> Username: </h4> <p>${user.username}</p>
        <button class="btn btn-danger" type="submit" style="float: right;"><a href="view/index.jsp" style="color: white; text-decoration: none;">Log Out</a></button>
        
    </div>


    <footer class="page-footer font-small pt-4 bg-dark">
            <div class="footer-copyright text-center py-3 text-white" >© 2018 Copyright:
                <a href="https://begadavor.github.io"> Beganovic Davor</a>
            </div>
    </footer>

</body>
</html>