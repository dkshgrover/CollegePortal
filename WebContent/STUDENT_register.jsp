<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
</style>
<meta charset="ISO-8859-1">
<title>REGISTER FOR EVENT!!</title>
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
					href="STUDENT_event.jsp"><- GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<form class="mar1" action="STUDENT_eventRegServlet" method="post">
		<div class="form-group row">
			<label for="name" class="col-sm-2 col-form-label">Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="name" name="name">
			</div>
		</div>
		<div class="form-group row">
			<label for="roll" class="col-sm-2 col-form-label">Roll Number</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="roll" name="roll">
			</div>
		</div>
		<br>
		<hr>
		<br>
		<div class="form-group row">
			<label for="course">Choose Course</label> <select
				class="custom-select mr-sm-2" id="course" name="course" required>
				<option selected>Courses..</option>
				<option value="bsc">Bachelor of Science(B.Sc.)</option>
				<option value="b_tech">Bachelor of Technology(B.Tech.)</option>
				<option value="bca">Bachelor of Computer Application(B.Ca.)</option>
				<option value="bba">Bachelor of Business
					Administration(B.Ba.)</option>
				<option value="bcom">Bachelor Of Commerce(B.Com.)</option>
				<option value="bed">Bachelor Of Education(B.Ed.)</option>
				<option value="hm">Hotel Management(HM)</option>
				<option value="msc">Master of Science(M.Sc.)</option>
				<option value="mtech">Master of Technology(M.Tech.)</option>
				<option value="mca">Master of Computer Application(M.Ca.)</option>
				<option value="mba">Master of Business
					Administration(M.Ba.)</option>
				<option value="mcom">Master Of Commerce(M.Com.)</option>
			</select>
		</div>
		<div class="form-group row">
			<label for="stream">Choose Stream</label> <select
				class="custom-select mr-sm-2" id="stream" name="stream" required>
				<option selected>Streams.. (If No Further Course Press
					None)</option>
				<option>None</option>
				<option disabled>For B.Sc.</option>
				<option>Maths</option>
				<option>Agriculture</option>
				<option>Biochemistry</option>
				<option>Nursing</option>
				<option disabled></option>
				<option disabled>For B.tech.</option>
				<option>Computer Science and Engineering(CSE.)</option>
				<option>Mechanical Engineering(ME.)</option>
				<option>Electrical and Electronics Engineering(EE.)</option>
				<option>Civil Engineering (CE.)</option>
				<option disabled></option>
				<option disabled>For B.Ba.</option>
				<option>BBA in Business Administration</option>
				<option>BBA in Finance</option>
				<option>BBA in Entrepreneurship</option>
				<option>BBA in Human Resources</option>
				<option disabled></option>
				<option disabled>For M.tech.</option>
				<option>Computer Science and Engineering(CSE.)</option>
				<option>Mechanical Engineering(ME.)</option>
				<option>Electrical and Electronics Engineering(EE.)</option>
				<option>Civil Engineering (CE.)</option>
				<option disabled></option>
				<option disabled>For M.Ba.</option>
				<option>MBA in Business Administration</option>
				<option>MBA in Finance</option>
				<option>MBA in Entrepreneurship</option>
				<option>MBA in Human Resources</option>
				<option disabled></option>
			</select>
		</div>
		<br>
		<hr>
		<br>
		<div class="form-group row">
			<label for="class" class="col-sm-2 col-form-label">Class/Section</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="class" name="class">
			</div>
		</div>
		<div class="form-group row">
			<label for="contact" class="col-sm-2 col-form-label">Contact
				Number:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="contact" name="contact">
			</div>
		</div>
		<br>
		<hr>
		<br>
		<div class="form-group row">
			<label for="event">Choose Event</label> <select
				class="custom-select mr-sm-2" id="event" name="event" required>
				<option selected>Events..</option>
				<option value="ISRA 2020">ISRA 2020</option>
				<option value="WORKSHOP">WORKSHOP</option>
				<option value="TECHNOVATIVE 2020">TECHNOVATE 2020</option>
				<option value="Startup Catapult">Startup Catapult</option>
				<option value="ENTHUSIA 2020">ENTHUSIA 2020</option>
				<option value="Espresso-o-Canvas">Espresso-o-Canvas</option>
			</select>
		</div>
		<div class="form-group row">
			<input type="submit" value="REGISTER">
		</div>
	</form>
</body>
</html>