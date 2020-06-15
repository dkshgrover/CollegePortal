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
<style>
.marg {
	margin-left: 2%;
	width: 94%;
	margin-top:10%;
}

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

iframe.d {
	float: right;
}
</style>
<title>NEW ADMISSIONS!!</title>
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
				<li class="nav-item"><a class="nav-link"
					href="ADMIN_studentInfo.jsp"><-GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<form class="marg" action="ADMIN_NewStudentServlet" autocomplete="off" method="post">
		<label for="course">Enter Choice Please-</label> <select
			class="custom-select" id="course" name="course" required>
			<option selected disabled>Courses..</option>
			<option value="bsc">Bachelor of Science(B.Sc.)</option>
			<option value="b_tech">Bachelor of Technology(B.Tech.)</option>
			<option value="bca">Bachelor of Computer Application(B.Ca.)</option>
			<option value="bba">Bachelor of Business
				Administration(B.Ba.)</option>
			<option value="bcom">Bachelor Of Commerce(B.Com.)</option>
			<option value="bed">Bachelor Of Education(B.Ed.)</option>
			<option value="HM">Hotel Management(HM)</option>
			<option value="msc">Master of Science(M.Sc.)</option>
			<option value="mtech">Master of Technology(M.Tech.)</option>
			<option value="mca">Master of Computer Application(M.Ca.)</option>
			<option value="mba">Master of Business Administration(M.Ba.)</option>
			<option value="mcom">Master Of Commerce(M.Com.)</option>
		</select>
		<br><br>
		<input type="submit" value="SHOW RECORDS" style="margin-left:40%;">
	</form>
</body>
</html>