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
<meta charset="ISO-8859-1">
<title>EVENTS@DG!!</title>
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
	<br>
	<h1 class="mar1">Events About to come</h1>
	<div class="mar1 card-deck">
		<div class="card">
			<img src="photos/ISRA2020.jpg" width=375px height=210px
				class="card-img-top" alt="...">
			<div class="card-body">

				<h5 class="card-title">ISRA 2020</h5>
				<p class="card-text">"International Symposium on Robotics and
					Automation" - ISRA 2020. This event is poised to feature a
					multitude of breakthroughs in the area of Robotics and Automation
					in our country and is primarily intended for the benefit of
					students.</p>
			</div>
			<button onclick='document.location="Events/ISRA2020.jsp"'
				style="margin: 10%;" class="btn btn-dark">View More</button>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="photos/workshop.png" width=375px height=210px
				class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">WORKSHOP</h5>
				<p class="card-text">Robert Bosch & Department of Mechanical
					Engineering- GCT Presents an Intensive workshop on two different
					topics about Braking system and an Expo on Brake components.</p>
			</div>
			<button onclick='document.location="Events/workshop.jsp"'
				style="margin: 10%;" class="btn btn-dark">View More</button>
			<div class="card-footer">
				<small class="text-muted">Last updated 10 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="photos/tech2020.png" width=375px height=210px
				class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">TECHNOVATE 2020</h5>
				<p class="card-text">TWO DAY NATIONAL LEVEL TECHNICAL SYMPOSIUM
					CONDUCTED BY DEPARTMENT OF INFORMATION TECHNOLOGY,COIMBATORE.</p>
			</div>
			<button onclick='document.location="Events/tech2020.jsp"'
				style="margin: 10%;" class="btn btn-dark">View More</button>
			<div class="card-footer">
				<small class="text-muted">Last updated 5 mins ago</small>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="mar1 card-deck">
		<div class="card">
			<img src="photos/startup.jpg" width=375px height=210px
				class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Startup Catapult</h5>
				<p class="card-text">Sardar Patel Technology Business Incubator
					(SP-TBI) is coming up with the next version of its certified
					6-weeks entrepreneurship training program under the name of Startup
					Catapult.</p>
			</div>
			<button onclick='document.location="Events/startup.jsp"'
				style="margin: 10%;" class="btn btn-dark">View More</button>
			<div class="card-footer">
				<small class="text-muted">Last updated 15 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="photos/enthusia.jpg" width=375px height=210px
				class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">ENTHUSIA 2020</h5>
				<p class="card-text">Rathinam "Enthusia 2020" is a National
					level techno-cultural management fest. Festival of students Its
					journey is marked by dedicated students steering and creating an
					impact never before.</p>
			</div>
			<button onclick='document.location="Events/enthusia.jsp"'
				style="margin: 10%;" class="btn btn-dark">View More</button>
			<div class="card-footer">
				<small class="text-muted">Last updated 1 min ago</small>
			</div>
		</div>
		<div class="card">
			<img src="photos/eoc.jpg" width=375px height=210px
				class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Espresso-o-Canvas</h5>
				<p class="card-text">Covid_19 crisis has painted a bleak outlook
					for millions of retail employees. Their livelihoods are gone with
					remote hopes of revival in the near future.</p>
			</div>
			<button onclick='document.location="Events/eoc.jsp"' style="margin: 10%;"
				class="btn btn-dark">View More</button>
			<div class="card-footer">
				<small class="text-muted">Last updated 14 mins ago</small>
			</div>
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