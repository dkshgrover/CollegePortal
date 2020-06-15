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
<title>ENTHUSIA 2020</title>
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
					href="../STUDENT_MainFile.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="../STUDENT_event.jsp"><- GO BACK</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<p>
		<img class="cl" src="../photos/enthusia.jpg" width=714px height=274px
			style="margin-left: 5%"> <b style="margin-left: 2%;">Last
			date for registration :</b><br> <i style="margin-left: 2%;">15
			Aug 2020</i><br> <br> <b style="margin-left: 2%;">Eligible
			Students</b><br> <i style="margin-left: 2%;">Any Student from
			Any Branch</i>
	</p>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h3 class="mar1">Event Description</h3>
	<p class="mar1">
		Rathinam "Enthusia 2020" is a National level techno-cultural
		management fest. Festival of students Its journey is marked by
		dedicated students steering and creating an impact never before,
		aiming at the budding talents and motivate them to venture the beyond.
		<br> <br>To make this vision come true, we're having 100+
		technical events, 50+ workshops, 10+ management events and 30+
		cultural events with 40+ speakers to indulge you based on your
		interests. We have over 50+ stalls to keep you engaged in exploring
		food and entertainment. <br> <br> With these events
		commencing on 2, 3 and 4 of March 2020, we cordially invite you to be
		a part of this mega festival of students organised by Rathinam Group
		of Institution and make it a grand success.
	</p>
</body>
</html>