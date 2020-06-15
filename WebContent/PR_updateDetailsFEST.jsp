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
<title>UPDATE STATUS!!</title>
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
		request.getRequestDispatcher("PR_login_portalPR.jsp").forward(request, response);
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
					href="PR_MainFilePR.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="PR_PrintStudents.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<form class="mar" action="PR_updateservlet3" method="post"
		autocomplete="off">
		ROLL NO:<br> <input type="text" name="roll" required><br>
		<span style="color: red;"><%=request.getAttribute("ERRM") == null ? "" : request.getAttribute("ERRM")%></span><br>
		<br> <label for="status">Enter Choice Please-</label> <select
			class="custom-select" id="status" name="status" required>
			<option selected disabled>Status..</option>
			<option value="PAID">PAID</option>
			<option value="NOT PAID">NOT PAID</option>
		</select> <br><br><input type="submit" value="UPDATE STATUS"
			class="btn btn-success">
	</form>
</body>
</html>