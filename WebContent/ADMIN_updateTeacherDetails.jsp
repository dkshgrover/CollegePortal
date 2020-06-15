<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>UPDATE TEACHER's DETAILS!!</title>
<style>
.mar {
	width: 90%;
	margin-left: 5%;
}

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
<%
		if (session.getAttribute("email") == null) {
			request.setAttribute("eraagya", "Please Login First**");
			request.getRequestDispatcher("ADMIN_login_portalAdmin.jsp").forward(request, response);
		}
	%>
	<nav
		class="navbar sticky-top navbar navbar-dark bg-dark navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#"><b>DG's COLLEGE</b>
			<button class="navbar-toggler disabled" type="button"
				data-toggle="collapse" data-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button></a>

		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="ADMIN_MainFileAdmin.jsp">HOME
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ADMIN_MainFileAdmin.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<form class="mar" action="ADMIN_teacherServlet" method="post"
		autocomplete="off">
		<div class="form-group">
			<label for="name">Full Name:</label> <input type="text"
				class="form-control" id="name" aria-describedby="emailHelp"
				placeholder="Enter Name.." name="name" required>

		</div>
		<div class="form-group">
			<label for="email">Email Id:</label> <input type="text"
				class="form-control" id="email" aria-describedby="emailHelp"
				placeholder="Enter Email Id.." name="email" required>

		</div>
		<div class="form-group">
			<label for="pass">Set Password:</label> <input type="password"
				class="form-control" id="pass" aria-describedby="emailHelp"
				placeholder="Enter password.." name="pass" required>

		</div>
		<div class="form-group" style="color:red;"><%=request.getAttribute("someErr")==null?"":request.getAttribute("someErr") %></div>
		<div class="form-group">
			<button type="submit" class="btn btn-dark">Submit</button>
		</div>
	</form>
</body>
</html>