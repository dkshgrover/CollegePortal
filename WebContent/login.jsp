<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
iframe.d {
	float: right;
}

.container {
	position: relative;
	text-align: center;
	color: black;
}

.bottom-left {
	position: absolute;
	bottom: 10%;
	left: 5%;
	right: 5%;
}

.top-left {
	position: absolute;
	top: 10%;
	left: 5%;
	right: 5%;
}
</style>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE!!</title>
</head>
<body>
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
				<li class="nav-item active"><a class="nav-link" href="Home.jsp">HOME
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#con">CONTACT</a></li>
			</ul>
		</div>

	</nav>
	<div class="container">
		<img src="photos/hellouser.jpg" width=100% height=550px
			style="opacity: 0.4;">
		<div class="bottom-left">
			<button onclick="document.location='STUDENT_login_portalS.jsp'" type="button"
				class="btn btn-light btn-lg btn-block">AS STUDENT</button>
			<button onclick="document.location='TEACHER_login_portalT.jsp'" type="button"
				class="btn btn-dark btn-lg btn-block">AS TEACHER</button>
		</div>
		<div class="top-left">
			<button onclick="document.location='ADMIN_login_portalAdmin.jsp'"
				type="button" class="btn btn-light btn-lg btn-block">AS
				ADMINISTRATOR</button>

			<button onclick="document.location='PR_login_portalPR.jsp'"
				type="button" class="btn btn-dark btn-lg btn-block">AS
				HR/PAYROLL</button>
		</div>
	</div>
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