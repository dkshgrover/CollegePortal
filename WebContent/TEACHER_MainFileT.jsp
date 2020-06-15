<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="servelets.TEACHER_checkEmail"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<style>
.mar1 {
	width: 90%;
	margin-left: 5%;
}

img.cl {
	float: left;
}

.mar {
	width: 90%;
	margin-left: 5%;
	text-align: center;
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
<meta charset="ISO-8859-1">
<title>TEACHER's PORTAL!!</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setDateHeader("Expires", 0); //prevents caching at the proxy server
	%>
	<%
		String email = (String) session.getAttribute("email");
	boolean bool = TEACHER_checkEmail.check(email);
	if (!bool) {
		response.sendRedirect("TEACHER_login_portalT.jsp");
	}
	%>
	<nav
		class="navbar sticky-top navbar navbar-dark bg-dark navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="Home.jsp"><b>DG's COLLEGE</b>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button></a>

		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="TEACHER_MainFileT.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#con">CONTACT</a></li>
				<li class="nav-item"><a class="nav-link"
					href="TEACHER_studentInfoServlet">STUDENT <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> My Account </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<p style="text-align: left" class="dropdown-item">
							<img class="cl" src="photos/logoo.JPG" width=100px height=30px>
						</p>
						<hr>
						<a class="dropdown-item" href="#"><%=email%></a> <a
							class="dropdown-item" href="TEACHER_aboutme.jsp">About Me</a> <a
							class="dropdown-item" href="TEACHER_changepass.jsp">Change
							Password</a>
						<div class="dropdown-divider"></div>
						<a style="text-align: left" class="dropdown-item"
							href="TEACHER_logoutservlet">Logout</a>
					</div></li>

			</ul>
		</div>
	</nav>
	<p style="color: red;"><%=request.getAttribute("succ") == null ? "" : request.getAttribute("succ")%></p>
	<h2 style="text-align: center;">
		<b>OUR MOTTO FOR TEACHERS IS</b>
	</h2>
	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="5000">
				<img src="photos/teacher1.jpeg" class="d-block" alt="FIRST SLIDE"
					style="margin-left: 5%; width: 90%; height: 450px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 35%; margin-right: 35%;">
						<b>THINK YOURSELF</b>
					</h3>
				</div>
				<div class="carousel-caption d-none d-md-block"></div>
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="photos/teacher2.jpg" class="d-block" alt="SECOND SLIDE"
					style="margin-left: 5%; width: 90%; height: 450px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 32%; margin-right: 32%;">
						<b>DISCUSS WITH OTHERS</b>
					</h3>
				</div>
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="photos/teacher3.jpg" class="d-block" alt="THIRD SLIDE"
					style="margin-left: 5%; width: 90%; height: 450px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 35%; margin-right: 35%;">
						<b>IMPLEMENT IT</b>
					</h3>
				</div>
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="photos/teacher4.jpg" class="d-block" alt="FOURTH SLIDE"
					style="margin-left: 5%; width: 90%; height: 450px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 35%; margin-right: 35%;">
						<b>ACHIEVE SUCCESS</b>
					</h3>
				</div>
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<p style="color: red;"><%=request.getAttribute("succ") == null ? "" : request.getAttribute("succ")%></p>
	<h3 style="color: black; text-align: center;">
		<b>DG's COLLEGE - Your Career Starts Here</b>
	</h3>
	<br>
	<h1 id="con"
		style="background-color: white; color: white; width: 94%; margin-left: 2%;">()</h1>
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
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>

</body>
</html>