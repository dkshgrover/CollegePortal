<%@page import="com.mysql.jdbc.ResultSetMetaData"%>
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
<title>STUDENTS DETAILS!!</title>
<style>
.mar {
	width: 90%;
	margin-left: 5%;
}

.cl {
	width: 97%;
	margin-left: 1%;
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
					href="PR_studentInfo.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<h1 class="cl">
		<%=session.getAttribute("course")%>
		Students Data
	</h1>
	<%
		ResultSet rs = (ResultSet) session.getAttribute("attributes");
	// 	ResultSetMetaData obj = (ResultSetMetaData) rs.getMetaData();
	// 	int count = obj.getColumnCount();
	//System.out.print(var);
	%>
	<table class="cl table table-striped">
		<thead>
			<tr>
				<th>FIRST NAME</th>
				<th>LAST NAME</th>
				<th>STREAM</th>
				<th>ANNUAL FEE STATUS</th>
				<th>FINE</th>
				<th>EXAM FEES <a style="color: rgb(101, 201, 141);"
					href="PR_setnotpaid2">(SET NOT PAID)</a></th>
				<th>FEST FEES <a style="color: rgb(101, 201, 141);"
					href="PR_setnotpaid3">(SET NOT PAID)</a></th>
			</tr>
		</thead>
		<%
			while (rs.next()) {
			out.print("<tr>");
			out.print("<td>" + rs.getString(1) + "</td>");
			out.print("<td>" + rs.getString(2) + "</td>");
			out.print("<td>" + rs.getString(3) + "</td>");
			out.print("<td>" + rs.getString(4) + "<a href=" + "PR_updateDetailsANNUAL.jsp" + ">   UPDATE</a>" + "</td>");
			out.print("<td>" + rs.getString(5) + "<a href=" + "PR_updateDetailsFINE.jsp" + " >(UPDATE)</a>" + "</td>");
			out.print("<td>" + rs.getString(6) + "<a href=" + "PR_updateDetailsEXAM.jsp" + ">UPDATE</a>" + "</td>");
			out.print("<td>" + rs.getString(7) + "<a href=" + "PR_updateDetailsFEST.jsp" + ">UPDATE</a>" + "</td>");

			out.print("</tr>");
		}
		%>
		</tbody>
	</table>

</body>
</html>