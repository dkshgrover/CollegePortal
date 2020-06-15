<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>NEW STUDENTS DETAILS!!</title>
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

iframe.d {
	float: right;
}

body {
	background-color: white;
}

table th {
	background-color: rgb(53, 58, 64);
	color: white;
}

table th td {
	text-align: center;
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
				<li class="nav-item"><a class="nav-link" href="ADMIN_studentInfo.jsp"><-GO
						BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<h1 class="mar">
		<%=
			session.getAttribute("course")
		%>
		Students Data
	</h1>
	<%
		ResultSet rs=(ResultSet)session.getAttribute("attributes");
	%>
	<table class="mar table table-striped">
		<thead>
			<tr>
				<th>FIRST NAME</th>
				<th>LAST NAME</th>
				<th>STREAM</th>
				<th>USERNAME</th>
				<th>PASSWORD</th>
			</tr>
		</thead>
		<%
			
			while (rs.next()) {
			out.print("<tr>");
			out.print("<td>" + rs.getString(1) + "</td>");
			out.print("<td>" + rs.getString(2) + "</td>");
			out.print("<td>" + rs.getString(3) + "</td>");
			out.print("<td>" + rs.getString(4) + "</td>");
			out.print("<td>" + rs.getString(5) + " " + "<a href=" + "ADMIN_AddDetails.jsp" + ">ADD</a>" + "</td>");
			out.print("</tr>");
		}
		%>
		</tbody>
	</table>

</body>
</html>