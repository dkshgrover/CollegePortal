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
<title>ADD NEW EMPLOYEE!!</title>
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
				<li class="nav-item active"><a class="nav-link"
					href="ADMIN_MainFileAdmin.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ADMIN_MainFileAdmin.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<form class="mar" action="ADMIN_employeeServlet" method="post"
		autocomplete="off">
		<div class="form-group">
			<label for="name">Full Name:</label> <input type="text"
				class="form-control" id="name" aria-describedby="emailHelp"
				placeholder="Enter Name.." name="name" required>

		</div>
		<div class="form-group">
			<label class="my-1 mr-2" for="post">Post:</label> <select
				class="custom-select my-1 mr-sm-2" id="post" name="post">
				<option selected>Choose Your Option...</option>
				<option>Senior Professor</option>
				<option>Associate Professor</option>
				<option>Assistant Professor</option>
				<option>Lab Assistant</option>
			</select>
		</div>
		<div class="form-group">
			<label for="course">Choose Course</label> <select
				class="custom-select" id="course" name="course" required>
				<option selected>Courses..</option>
				<option value="bsc">Bachelor of Science(B.Sc.)</option>
				<option value="b_tech">Bachelor of Technology(B.Tech.)</option>
				<option value="bca">Bachelor of Computer Application(B.Ca.)</option>
				<option value="bba">Bachelor of Business
					Administration(B.Ba.)</option>
				<option value="bcom">Bachelor Of Commerce(B.Com.)</option>
				<option value="bed">Bachelor Of Education(B.Ed.)</option>
				<option value="hm">Hotel Management(HM)</option>
				<option value="msc">Master of Science(M.Sc.)</option>
				<option value="mtech">Master of Technology(M.Tech.)</option>
				<option value="mca">Master of Computer Application(M.Ca.)</option>
				<option value="mba">Master of Business
					Administration(M.Ba.)</option>
				<option value="mcom">Master Of Commerce(M.Com.)</option>
			</select>
		</div>
		<div class="form-group">
			<label class="my-1 mr-2" for="sub">Subject Teaching:</label> <select
				class="custom-select my-1 mr-sm-2" id="sub" name="sub">
				<option selected>Choose Your Option...</option>
				<option>sub1</option>
				<option>sub2</option>
				<option>sub3</option>
				<option>sub4</option>
				<option>sub5</option>
			</select>
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-dark">Submit</button>
		</div>
	</form>
</body>
</html>