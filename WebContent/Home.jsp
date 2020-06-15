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

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

.container {
	position: relative;
	text-align: center;
	color: white;
}

* {
	font-family: verdana;
}

.top-left {
	position: absolute;
	top: 8px;
	margin-left: 2%;
	margin-right: 2%;
}

.mar {
	width: 90%;
	margin-left: 5%;
	background-color: rgb(16, 27, 46);
}

.mar1 {
	width: 90%;
	margin-left: 5%;
}
</style>
<meta charset="ISO-8859-1">
<title>DG's WEBSITE!!</title>
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
				<li class="nav-item"><a class="nav-link" href="#ab">ABOUT</a></li>
				<li class="nav-item"><a class="nav-link" href="#con">CONTACT</a></li>
				<li class="nav-item"><a class="nav-link" href="event.jsp">EVENTS</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">LOGIN</a></li>
			</ul>
		</div>

	</nav>
	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="5000">
				<img src="photos/asd.jpg" class="d-block" alt="FIRST SLIDE"
					style="margin-left: 2%; width: 95%; height: 500px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 35%; margin-right: 35%;">
						<b>MAIN BUILDING</b>
					</h3>
				</div>
				<div class="carousel-caption d-none d-md-block"></div>
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="photos/clg1.png" class="d-block" alt="SECOND SLIDE"
					style="margin-left: 2%; width: 95%; height: 500px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 35%; margin-right: 35%;">
						<b>BTECH BLOCK</b>
					</h3>
				</div>
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="photos/clg3.png" class="d-block" alt="THIRD SLIDE"
					style="margin-left: 2%; width: 95%; height: 500px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 35%; margin-right: 35%;">
						<b>AUDITORIUM</b>
					</h3>
				</div>
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="photos/two.jpg" class="d-block" alt="FOURTH SLIDE"
					style="margin-left: 2%; width: 95%; height: 500px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 35%; margin-right: 35%;">
						<b>PLACEMENT DAY</b>
					</h3>
				</div>
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="photos/3rd.jpg" class="d-block" alt="FIFTH SLIDE"
					style="margin-left: 2%; width: 95%; height: 500px; opacity: 0.6;">
				<div class="carousel-caption d-none d-md-block">
					<h3
						style="color: black; background-color: white; margin-left: 35%; margin-right: 35%;">
						<b>PLAYGROUNDS</b>
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
	<h1 style="color: black; text-align: center;">
		<b>DG's COLLEGE - Your Career Starts Here</b>
	</h1>
	<h1 id="ab"
		style="background-color: white; color: white; width: 94%; margin-left: 2%;">()</h1>
	<br>
	<h1
		style="background-color: rgb(53, 58, 64); color: white; text-align: center; width: 94%; margin-left: 2%;">
		<b>ABOUT US</b>
	</h1>
	<p
		style="width: 94%; margin-left: 2%; margin-right: 2%; font-size: 24px; background-color: white;">
		DG College is a globally and regionally recognized and accredited
		private institution that specializes in Business, Education,
		Technology, and Engineering. Our curriculum is designed to develop
		both personally and professionally through practical, innovative, and
		high-quality distance and campus programs.<br> <br> DG
		College is committed to provide an outstanding environment for
		excellence in Research and Development in all disciplines. The gamut
		of DGC research activities make it a unique academic environment that
		stimulates creativity and critical thinking, and providing impetus to
		recruiting, supporting, and developing highly-skilled motivated
		researchers.
	</p>
	<h1
		style="margin-left: 2%; margin-right: 65%; background-color: rgb(53, 58, 64); color: white;">OUR
		TOP RECRUITERS:</h1>
	<img src="photos/companies.JPG" style="width: 80%; margin-left: 5%;">
	<img src="photos/companies2.JPG"
		style="width: 80%; margin-left: 5%; margin-top: 1%;">
	<img src="photos/companies3.JPG"
		style="width: 80%; margin-left: 5%; margin-top: 1%;">
	<p style="font-size: 24px; margin-left: 5%; margin-top: 1%;">We
		Have always maintained a legacy.</p>
	<img src="photos/banner.jpg"
		style="width: 80%; margin-left: 5%; margin-top: 1%;">
	<br>
	<br>
	<h1
		style="margin-left: 2%; margin-right: 67%; background-color: rgb(53, 58, 64); color: white;">OUR
		COURSES ARE:</h1>
	<div class="mar1 card-deck">
		<div class="card">
			<img class="card-img-top" src="photos/btech.jpg" width=375px
				height=240px alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">B.Tech.</h5>
				<p class="card-text">A Bachelor of Technology is an
					undergraduate academic degree conferred after completion of a
					three-year, a four-year or even a five-year program of studies at
					an accredited university or accredited university-level
					institution. B.Tech. is considered to be a skill-oriented course.</p>
				<p class="card-text">
					<small class="text-muted">Last updated 3 mins ago</small>
				</p>
			</div>
			<button onclick='document.location="EnrollPortal.jsp"'
				class="btn btn-primary"
				style="margin-left: 5%; margin-bottom: 10%; margin-right: 60%;">ENROLL</button>
		</div>
		<div class="card">
			<img class="card-img-top" src="photos/bba.png" width=375px
				height=240px alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">B.Ba.</h5>
				<p class="card-text">The Bachelor of Business Administration is
					a bachelor's degree in business administration. In the United
					States, the degree is conferred after four years of full-time study
					in one or more areas of business concentrations.</p>
				<p class="card-text">
					<small class="text-muted">Last updated 3 mins ago</small>
				</p>

			</div>
			<button onclick='document.location="EnrollPortal.jsp"'
				class="btn btn-primary"
				style="margin-left: 5%; margin-bottom: 10%; margin-right: 60%;">ENROLL</button>
		</div>
		<div class="card">
			<img class="card-img-top" src="photos/bsc.jpg" width=375px
				height=240px alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">B.Sc.</h5>
				<p class="card-text">A Bachelor of Science is an undergraduate
					academic degree awarded for programs that generally last three to
					five years. The first university to admit a student to the degree
					of Bachelor of Science was the University of London in 1860.</p>
				<p class="card-text">
					<small class="text-muted">Last updated 3 mins ago</small>
				</p>


			</div>
			<button onclick='document.location="EnrollPortal.jsp"'
				class="btn btn-primary"
				style="margin-left: 5%; margin-bottom: 10%; margin-right: 60%;">ENROLL</button>
		</div>
	</div>
	<br>
	<div class="mar1 card-deck">
		<div class="card">
			<img class="card-img-top" src="photos/mtech.jpg" width=375px
				height=240px alt="Card image cap">
			<div class="card-body">

				<h5 class="card-title">M.Tech.</h5>
				<p class="card-text">A Master of Engineering is either an
					academic or professional master's degree in the field of
					engineering.Our College has all trained and professional teachers
					working in this field and we will provide best education for this
					course.</p>
				<p class="card-text">
					<small class="text-muted">Last updated 3 mins ago</small>
				</p>

			</div>
			<button onclick='document.location="EnrollPortal.jsp"'
				class="btn btn-primary"
				style="margin-left: 5%; margin-bottom: 10%; margin-right: 60%;">ENROLL</button>
		</div>
		<div class="card">
			<img class="card-img-top" src="photos/mba.jpg" width=375px
				height=240px alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">M.Ba.</h5>
				<p class="card-text">Master of Business Administration or MBA is
					one of the most popular post-graduate programmes in India and
					abroad. The two-year programme is a gateway to a plethora of job
					opportunities in the corporate world.</p>
				<p class="card-text">
					<small class="text-muted">Last updated 3 mins ago</small>
				</p>

			</div>
			<button onclick='document.location="EnrollPortal.jsp"'
				class="btn btn-primary"
				style="margin-left: 5%; margin-bottom: 10%; margin-right: 60%;">ENROLL</button>
		</div>
		<div class="card">
			<img class="card-img-top" src="photos/msc.png" width=375px
				height=240px alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">M.Sc.</h5>
				<p class="card-text">A Master of Science is a master's degree in
					the field of science awarded by universities in many countries or a
					person holding such a degree.The 3 year programme is a gateway to a
					plethora of job opportunities in the corporate world.</p>
				<p class="card-text">
					<small class="text-muted">Last updated 3 mins ago</small>
				</p>
			</div>
			<button onclick='document.location="EnrollPortal.jsp"'
				class="btn btn-primary"
				style="margin-left: 5%; margin-bottom: 10%; margin-right: 60%;">ENROLL</button>
		</div>
	</div>
	<h1 style="margin-left: 7.5%;">and many more...</h1>
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