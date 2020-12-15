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
<title>ABOUT ME!!</title>
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
}
th{
	width:30%;
}
</style>
</head>
<body>
	<%
		if (session.getAttribute("email") == null) {
		request.setAttribute("eraagya", "Please Login First**");
		request.getRequestDispatcher("TEACHERs_login_portalT.jsp").forward(request, response);
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
	<br>
	<br>
	<%
		Connection con  = ConnectionProvider.provideConnection();
		String query = "select * from teachers1 where email_id='" + session.getAttribute("email") + "'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		rs.next();
		String name=rs.getString(2);
		String post=rs.getString(3);
		String email=rs.getString(4);
		String course=rs.getString(6);
		String salary_status=rs.getString(7);
		String subject_teaching=rs.getString(8);
	%>
	<table class="mar table table-hover">
		<tbody>
			<tr>
				<th scope="row">Name</th>
				<td><%=name %></td>
			</tr>
			<tr>
				<th scope="row">Post</th>
				<td><%=post %></td>
			</tr>
			<tr>
				<th scope="row">Associated Email</th>
				<td><%=email %></td>
			</tr>
			<tr>
				<th scope="row">Stream Teaching</th>
				<td><%=course %></td>
			</tr>
			<tr>
				<th scope="row">Salary Status</th>
				<td><%=salary_status %></td>
			</tr>
			<tr>
				<th scope="row">Subject Teaching</th>
				<td><%=subject_teaching %></td>
			</tr>
		</tbody>
	</table>
</body>
</html>