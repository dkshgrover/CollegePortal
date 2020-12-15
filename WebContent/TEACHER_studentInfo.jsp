<%@page import="DBConnection.ConnectionProvider"%>
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
<title>STUDENT INFO!!</title>
<style>
table th {
	background-color: rgb(53, 58, 64);
	color: white;
}

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
}

th td{
	width: 16%;
	text-align:center;
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
				<li class="nav-item active"><a class="nav-link"
					href="TEACHER_MainFileT.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="TEACHER_MainFileT.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<span style="color:red;"><%=request.getAttribute("success")==null?"":request.getAttribute("success") %></span>
	<span style="color:red;"><%=request.getAttribute("failure")==null?"":request.getAttribute("failure") %></span>
	<br>
	<br>
	<%
		String course = (String) session.getAttribute("course");
	%>
	<h1 class="mar" style="text-transform: uppercase;"><%=course%>
		Student Data
	</h1>
	<%
		Connection con  = ConnectionProvider.provideConnection();
		String query = "select * from " + course;
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
	%>
	<table class="mar table table-hover">
		<thead>
			<tr>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Stream</th>
				<th scope="col">Username</th>
				<th scope="col"><a href="TEACHER_uploadmarksForm.jsp" class="btn btn-info btn-sm">UPLOAD MARKS</a></th>
			</tr>
		</thead>
		<tbody>
			<%
				while (rs.next()) {
				out.print("<tr>");
				out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs.getString(3) + "</td>");
				out.print("<td>" + rs.getString(12) + "</td>");
				out.print("<td>" + rs.getString(13) + "</td>");
				out.print("<td>"+"<a href='TEACHER_viewMarks.jsp' class='badge badge-secondary'>VIEW MARKS</a>"+"</td>");

				out.print("</tr>");
			}
			%>
		</tbody>
	</table>
</body>
</html>