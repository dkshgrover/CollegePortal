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
	<%
		String url = "jdbc:mysql://localhost:3306/college";
		String user = "root";
		String passw = "DakshGrover6497";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, passw);
		String query = "select * from "+session.getAttribute("course")+" where uname='" + session.getAttribute("uname") + "'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		rs.next();
		String name=rs.getString(2)+" "+rs.getString(3);
		String contact_no=rs.getString(4);
		String Fname=rs.getString(5)+" "+rs.getString(6);
		String Fcontact_no=rs.getString(7);
		String address=rs.getString(8)+","+rs.getString(9)+"-"+rs.getString(11)+","+rs.getString(10);
		String stream=rs.getString(12);
	%>
	<table class="mar table table-hover">
		<tbody>
			<tr>
				<th scope="row">Name</th>
				<td><%=name %></td>
			</tr>
			<tr>
				<th scope="row">Student's Contact Number</th>
				<td><%=contact_no %></td>
			</tr>
			<tr>
				<th scope="row">Father's Name</th>
				<td><%=Fname %></td>
			</tr>
			<tr>
				<th scope="row">Father's Contact Number</th>
				<td><%=Fcontact_no %></td>
			</tr>
			<tr>
				<th scope="row">Address</th>
				<td><%=address %></td>
			</tr>
			<tr>
				<th scope="row">Stream</th>
				<td><%=stream %></td>
			</tr>
		</tbody>
	</table>
</body>
</html>