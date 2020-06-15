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
<title>Startup Catapult</title>
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
				<li class="nav-item active"><a class="nav-link" href="../STUDENT_MainFile.jsp">HOME
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="../STUDENT_event.jsp"><-
						GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<p>
		<img class="cl" src="../photos/startup.jpg" width=714px height=274px
			style="margin-left: 5%"> <b style="margin-left: 2%;">Last
			date for registration :</b><br> <i style="margin-left: 2%;">15
			Jul 2020</i><br> <br> <b style="margin-left: 2%;">Start
			Date</b><br> <i style="margin-left: 2%;">20 Jul 2020</i> <br> <br>
		<b style="margin-left: 2%;">End Date</b><br> <i
			style="margin-left: 2%;">27 Aug 2020</i><br> <br> <b
			style="margin-left: 2%;">Eligible Students</b><br> <i
			style="margin-left: 2%;">B.E. / B.Tech - Any Branch</i>
	</p>
	<br>
	<h3 class="mar1">Event Description</h3>
	<p class="mar1">
		Confused on how to get your business started?<br> Looking for
		growth hacks for your startup?<br> Sardar Patel Technology
		Business Incubator (SP-TBI) is coming up with the next version of its
		certified 6-weeks entrepreneurship training program under the name of
		Startup Catapult. This program is specifically designed for aspiring
		entrepreneurs as well as for those who have a venture or a startup but
		do not know how to progress further. The syllabus is designed in a way
		to give these individuals insights and skills to help them succeed as
		creative and effective managers in today’s fast-paced business world
		as well as develop their entrepreneurial instincts.
	</p>
	<p class="mar1">
		<b>Benefits of the training program:</b> <br>Certification from
		one of the top incubators of Mumbai associated with the Department of
		Science and Technology, Government of India.<br> 5 months free
		incubation with access to Incubator’s facilities like advance tech
		hub, mentors, talent pool, etc. worth INR 50K.<br> Mentoring from
		world-class leaders.<br> One-to-one sessions with mentors.<br>
		Seed funding opportunity post-training in front of venture capitalists
		and investors.
	</p>
</body>
</html>