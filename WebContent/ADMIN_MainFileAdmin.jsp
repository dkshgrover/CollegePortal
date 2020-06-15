<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="servelets.ADMIN_checkEmail"%>



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
}

.mar4 {
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
<title>ADIMINISTRATOR PORTAL!!</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setDateHeader("Expires", 0); //prevents caching at the proxy server
	%>
	<%
		String email = (String) session.getAttribute("email");
	//System.out.print(email);
	boolean bool = ADMIN_checkEmail.check(email);
	if (!bool) {
		response.sendRedirect("ADMIN_login_portalAdmin.jsp");
	}
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "DakshGrover6497");
	Statement st = con.createStatement();
	String qry2 = "select * from employees";
	ResultSet rs = st.executeQuery(qry2);
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
					href="ADMIN_MainFileAdmin.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#et">OUR
						TEAM</a></li>
				<li class="nav-item"><a class="nav-link" href="#con">CONTACT</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Update Details </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="ADMIN_studentInfo.jsp">STUDENTS</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="ADMIN_AddEmployee.jsp">ADD
							EMPLOYEE</a>
						<div class="dropdown-divider"></div>
						<a style="text-align: left" class="dropdown-item"
							href="ADMIN_updateTeacherDetails.jsp">TEACHERS</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> My Account </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<p style="text-align: left" class="dropdown-item">
							<img class="cl" src="photos/logoo.JPG" width=100px height=30px>
						</p>
						<a class="dropdown-item" href="#"><%=email%></a> <a
							class="dropdown-item" href="ADMIN_changepass.jsp">Change
							Password</a>
						<div class="dropdown-divider"></div>
						<a style="text-align: left" class="dropdown-item"
							href="ADMIN_logoutservlet">Logout</a>
					</div></li>

			</ul>
		</div>

	</nav>
	<p style="color: red;"><%=request.getAttribute("succ") == null ? "" : request.getAttribute("succ")%></p>
	<div class="container_sho">
		<div class="slideshow-container_sho">

			<div class="mySlides_sho fade_sho">
				<div class="numbertext_sho">1 / 3</div>
				<div class="container_sho">
					<img src="photos/slide1.jpg"
						style="margin-top: 2%; margin-left: 20%; width: 60%; height: 450px; opacity: 1.0;">
				</div>
			</div>

			<div class="mySlides_sho fade_sho">
				<div class="numbertext_sho">2 / 3</div>
				<div class="container_sho">
					<img src="photos/slide2.png"
						style="margin-top: 2%; margin-left: 20%; width: 60%; height: 450px; opacity: 1.0;">
				</div>
			</div>

			<div class="mySlides_sho fade_sho">
				<div class="numbertext_sho">3 / 3</div>
				<div class="container_sho">
					<img src="photos/slide3.jpg"
						style="margin-top: 2%; margin-left: 20%; width: 60%; height: 450px; opacity: 1.0;">
				</div>
			</div>

		</div>
		<h1 style="text-align: center;">DG College - Your Career Starts
			Here</h1>
		<br>
		<h1 id="et" style="color: white">{}</h1>
		<h1 style="text-align: center;">EMPLOYEEs TABLE</h1>
		<table class="mar table table-striped">
			<thead>
				<tr>
					<th class="mar4">S.No.</th>
					<th>NAME</th>
					<th>POST</th>
				</tr>
			</thead>
			<%
				while (rs.next()) {
				out.print("<tr>");
				out.print("<td class='mar4'>" + rs.getInt(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs.getString(3) + "</td>");
				out.print("</tr>");
			}
			%>
			</tbody>
		</table>

		<div style="text-align: center">
			<span class="dot_sho"></span> <span class="dot_sho"></span> <span
				class="dot_sho"></span>
		</div>

		<script>
			var slideIndex = 0;
			showSlides();

			function showSlides() {
				var i;
				var slides = document.getElementsByClassName("mySlides_sho");
				var dots = document.getElementsByClassName("dot_sho");
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none";
				}
				slideIndex++;
				if (slideIndex > slides.length) {
					slideIndex = 1
				}
				for (i = 0; i < dots.length; i++) {
					dots[i].className = dots[i].className.replace(
							" active_sho", "");
				}
				slides[slideIndex - 1].style.display = "block";
				dots[slideIndex - 1].className += " active_sho";
				setTimeout(showSlides, 5000); // Change image every 2 seconds
			}
		</script>
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