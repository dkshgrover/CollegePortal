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
<title>SHOW MY RECORDS!!</title>
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

table th {
	width: 45%;
	background-color: rgb(53, 58, 64);
	color: white;
	background-color: rgb(53, 58, 64);
}

td.cen {
	text-align: center;
}

th.cen {
	text-align: center;
}

th.adj {
	margin-left: 10%;
}

td.adj {
	margin-left: 10%;
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
	<%
		ResultSet rs = (ResultSet) session.getAttribute("attrs");
	ResultSetMetaData ob = rs.getMetaData();
	int count = ob.getColumnCount();
	ResultSet rs2 = (ResultSet) session.getAttribute("teachers");
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
					href="STUDENT_MainFile.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="STUDENT_MainFile.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<table class="mar table table-striped">
		<tbody>
			<tr>
				<th scope="row">SUBJECT</th>
				<th scope="row" class="cen">MARKS</th>
			</tr>
			<tr>
				<%
					while (rs.next()) {
					for (int i = 2; i <= count; i++) {
						if (rs.getFloat(i)!=0) 
						{
							out.print("<tr>");
							out.print("<td>Subject " + (i - 1) + "</td>");
							out.print("<td class='cen'>" + rs.getFloat(i) + "</td>");
							out.print("</tr>");
						}
					}
				}
				%>
			</tr>
		</tbody>
	</table>
	<table class="mar table table-striped">
		<tbody>
			<tr>
				<th scope="row">TEACHER</th>
				<th scope="row" class="cen">SUBJECT TEACHING</th>
			</tr>
			<tr>
				<%
					while (rs2.next()) {
					out.print("<tr>");
					out.print("<td>" + rs2.getString(1) + "</td>");
					out.print("<td class='cen'>" + rs2.getString(2) + "</td>");
					out.print("</tr>");
				}
				session.removeAttribute("attrs");
				session.removeAttribute("teachers");
				%>
			</tr>
		</tbody>
	</table>
</body>
</html>