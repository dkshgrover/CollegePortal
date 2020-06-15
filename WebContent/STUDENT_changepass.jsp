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
<title>CHANGE PASSWORD!!</title>
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
		if (session.getAttribute("uname") == null) {
			request.setAttribute("eraagya", "Please Login First**");
			request.getRequestDispatcher("STUDENT_login_portalS.jsp").forward(request, response);
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
				<li class="nav-item active"><a class="nav-link" href="STUDENT_MainFile.jsp">HOME
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="STUDENT_MainFile.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<form class="mar" action="STUDENT_changepassservlet" method="post"
		autocomplete="off">
		<div class="form-group">
			<label for="name">Enter Old Password:</label> <input type="password"
				class="form-control" id="name" aria-describedby="emailHelp"
				placeholder="Enter old Password.." name="oldpass" required>

		</div>
		<div style="color:red;"><%= request.getAttribute("errm")==null?"":request.getAttribute("errm") %></div>
		<div class="form-group">
			<label for="name">Enter New Password:</label> <input type="password"
				class="form-control" id="name" aria-describedby="emailHelp"
				placeholder="Enter new Password.." name="newpass" required>

		</div>
		<div class="form-group">
			<label for="name">Verify new Password:</label> <input type="password"
				class="form-control" id="name" aria-describedby="emailHelp"
				placeholder="Verify new Password.." name="verpass" required>

		</div>
		<div style="color:red;"><%= request.getAttribute("errm2")==null?"":request.getAttribute("errm2") %></div>
		<br>
		<div class="form-group">
			<button type="submit" class="btn btn-dark">Submit</button>
		</div>
	</form>
</body>
</html>