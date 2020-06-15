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
<title>VIEW MARKS!!</title>
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
	background-color: rgb(53, 58, 64);
	color: white;
	text-align: center;
}

td {
	text-align: center;
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
	<%
		ResultSet rs = (ResultSet) request.getAttribute("pars");
	ResultSetMetaData obj = rs.getMetaData();
	int count = obj.getColumnCount();
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
					href="TEACHER_MainFileT.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="TEACHER_viewMarks.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<h1 class="mar"><%=request.getAttribute("uname")%>
		DATA
	</h1>
	<table class="mar table table-hover">
		<thead>
			<%
			out.print("<tr>");
				for(int i=1;i<count;i++) 
				{
					out.print("<th>" +"Subject "+ i + "</th>");
				}
				out.print("</tr>");

			%>
		</thead>
		<tbody>
			<%
				rs.next();
			out.print("<tr>");
			for (int i = 2; i <= count; i++) {
				out.print("<td>" + rs.getFloat(i) + "</td>");
			}
			out.print("</tr>");
			%>
		</tbody>
	</table>
</body>
</html>