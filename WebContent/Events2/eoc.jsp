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
<title>Espresso-o-Canvas</title>
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
		<img class="cl" src="../photos/eoc.jpg" width=714px height=274px
			style="margin-left: 5%"> <b style="margin-left: 2%;">Last
			date for registration :</b><br> <i style="margin-left: 2%;">15
			Jul 2020</i><br> <br>
		<b style="margin-left: 2%;">Eligible Students</b><br> <i
			style="margin-left: 2%;">Any Student from Any Branch</i>
	</p>
	<br>
	<br><br><br><br>
	<br>
	<h3 class="mar1">Event Description</h3>
	<p class="mar1">
		Covid_19 crisis has painted a bleak outlook for millions of retail
		employees. Their livelihoods are gone with remote hopes of revival in
		the near future. #Painting for a cause is a fundraising effort by SWAN
		(Skilled Workforce Advancing Nation) and Sleepy EYE to assist the
		employees to cope up with the changed Industrial Environment. <br>
		<br>The first workshop in the series is Espresso – o- Canvas
		which aims at exploring the creative side of you while painting with
		coffee on a canvas. In this workshop we will not only drink coffee but
		paint with it too. You will start with a few practice sketches wherein
		you will understand the essentials of painting with coffee, basics on
		how to make a coffee paint and will delve deeper into understanding
		the different tones, textures and compositions of the Canvas Coffee
		Portrait Masterpiece that you create.
	</p>
</body>
</html>