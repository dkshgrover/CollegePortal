<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STUDENT's LOGIN PORTAL!!</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
iframe.d {
	float: right;
}
body {
	background-color: white;
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
</style>
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
	<p style="color: red;"><%=request.getAttribute("eraagya") == null ? "" : request.getAttribute("eraagya")%></p>
	<br>
	<img src="photos/acc.png" class="center" width="165px">
	<br>
	<form action="STUDENT_comstudent" method="post" autocomplete="off">
	<div class="form-group">
	<label for="course" class="mar">Enter Your Course</label> <select
			class="mar custom-select" id="course" name="course" required>
			<option selected>Courses..</option>
			<option value="bsc">Bachelor of Science(B.Sc.)</option>
			<option value="b_tech">Bachelor of Technology(B.Tech.)</option>
			<option value="bca">Bachelor of Computer Application(B.Ca.)</option>
			<option value="bba">Bachelor of Business Administration(B.Ba.)</option>
			<option value="bcom">Bachelor Of Commerce(B.Com.)</option>
			<option value="bed">Bachelor Of Education(B.Ed.)</option>
			<option value="HM">Hotel Management(HM)</option>
			<option value="msc">Master of Science(M.Sc.)</option>
			<option value="mtech">Master of Technology(M.Tech.)</option>
			<option value="mca">Master of Computer Application(M.Ca.)</option>
			<option value="mba">Master of Business Administration(M.Ba.)</option>
			<option value="mcom">Master Of Commerce(M.Com.)</option>
		</select>
		</div>
		<div class="form-group">
			<label for="uname" class="mar">Username</label> 
			<input type="text"
				class="mar form-control" id="uname" name="uname"
				aria-describedby="emailHelp" placeholder="Enter username" required> <small
				id="emailHelp" class="mar form-text text-muted">We'll never
				share your username and password with anyone else.</small>
		</div>
		<div class="form-group">
			<label for="Password" class="mar">Password</label> <input
				type="password" class="mar form-control" id="Password" name="pass"
				placeholder="Enter Password" required>
		</div>
		<div class="mar" style="color:red;"><%=(request.getAttribute("errorMessage") == null) ? "" : request.getAttribute("errorMessage")%></div>
		<input type="submit" class="mar btn btn-primary" value="LOGIN">
	</form>
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
			class="d" style="width:700px;height: 450px; margin: 15px;"></iframe>
		<p style="margin-left: 1%;">
			<b>Address:</b><br> DG College<br> Malout city, Main GT
			Road,<br> Adarsh Nagar, Muktsar,<br> Punjab
			pin-152107 (INDIA)<br> <br> <b>For Admission Enquiry:</b><br>
			1800-200-3575<br> +91-89682-83580<br> +91-89682-83581<br>
			+91-89682-83582<br> admission@DG.edu.in<br> <br> <b>General
				Enquiry:</b><br> +91-95921-24444<br> admission@DG.edu.in
		</p>
	</div>
</body>
</html>