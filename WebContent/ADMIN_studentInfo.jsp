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
<title>STUDENT INFO!!</title>
<style>
.mar1 {
	width: 90%;
	margin-left: 5%;
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

iframe.d {
	float: right;
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
				<li class="nav-item"><a class="nav-link" href="#con">CONTACT</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ADMIN_MainFileAdmin.jsp"><-GO BACK</a></li>
			</ul>
		</div>

	</nav>
	<br><br>
	<img src="photos/newstu.jpg" width=350px; height=359px; style="margin-left: 35%;">
	<br>
	<br>
	<h1 style="text-align: center;">Click Link Below To See New
		Admissions</h1>
	<button type="button" class="mar btn btn-info btn-lg btn-block"
		onclick='document.location="ADMIN_NewStudent.jsp"'>CLICK HERE!!</button>
	<br><hr><br>
	<img src="photos/stu.png" width=350px; style="margin-left: 35%;">
	<br>
	<br>
	<h1 style="text-align: center;">Click Link Below To See Old
		Students</h1>
	<button type="button" class="mar btn btn-info btn-lg btn-block"
		onclick='document.location="ADMIN_OldStudent.jsp"'>CLICK HERE!!</button>
	<br>
	<hr>
	<br>
	<h1 id="con"
		style="background-color: white; color: white; width: 94%; margin-left: 2%;">()</h1>
	<br>
	<h1
		style="background-color: rgb(53, 58, 64); color: white; text-align: center; width: 94%; margin-left: 2%;">
		<b>CONTACT INFORMATION</b>
	</h1>

	<div
		style="background-color: rgb(122, 116, 116); font-size: 20px; color: white; width: 94%; margin-left: 2%;">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3448.5327363932447!2d74.49668131444717!3d30.193339018479737!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391710d5454b06b7%3A0x5593eda621af64e0!2sAdarsh%20Nagar%20Rd%2C%20Sarabha%20Nagar%2C%20Malout%2C%20Punjab%20152107!5e0!3m2!1sen!2sin!4v1590991717856!5m2!1sen!2sin"
			class="d" style="width: 700px; height: 450px; margin: 15px;"></iframe>
		<p style="margin-left: 1%;">
			<b>Address:</b><br> DG College<br> Malout city, Main GT
			Road,<br> Adarsh Nagar, Muktsar,<br> Punjab pin-152107
			(INDIA)<br> <br> <b>For Admission Enquiry:</b><br>
			1800-200-3575<br> +91-89682-83580<br> +91-89682-83581<br>
			+91-89682-83582<br> admission@DG.edu.in<br> <br> <b>General
				Enquiry:</b><br> +91-95921-24444<br> admission@DG.edu.in
		</p>
	</div>
</body>
</html>