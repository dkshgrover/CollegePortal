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
<title>UPLOAD MARKS!!</title>
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
			request.getRequestDispatcher("TEACHER_login_portalT.jsp").forward(request, response);
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
				<li class="nav-item active"><a class="nav-link" href="TEACHER_MainFileT.jsp">HOME
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="TEACHER_studentInfo.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<form class="mar" action="TEACHER_uploadmarks" method="post"
		autocomplete="off">
		<div class="form-group">
			<label for="name">Enter Username:</label> <input type="text"
				class="form-control" id="uname" aria-describedby="emailHelp"
				placeholder="Enter Your Username.." name="uname" required>

		</div>
		<div style="color:red;"><%= request.getAttribute("errm")==null?"":request.getAttribute("errm") %></div>
		<div class="form-group">
			<label for="name">Enter Marks:</label> <input type="text"
				class="form-control" id="marks" aria-describedby="emailHelp"
				placeholder="Enter Student Marks.." name="marks" required>

		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-dark">Submit</button>
		</div>
	</form>
</body>
</html>