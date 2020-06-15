<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<style>
iframe.d {
	float: right;
}

.marg {
	margin-left: 2%;
	width: 94%;
}
</style>
<title>ENROLL PORTAL!!</title>
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
	<img style="margin-left: 30%" src="photos/Capture.JPG">
	<br>
	<br>
	<h1 class="marg">
		<b>Enrollment Portal</b>
	</h1>
	<br>
	<form class="marg" autocomplete="off" action="MainServlet"
		method="post">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="fname">First Name</label> <input type="text"
					class="form-control" id="fname" name="fname"
					placeholder="First name.." required>
			</div>
			<div class="form-group col-md-6">
				<label for="lname">Last Name</label> <input type="text"
					class="form-control" id="lname" name="lname"
					placeholder="Last name..">
			</div>
			<div class="form-group col-md-6">
				<label for="contact">Contact Number</label> <input type="text"
					class="form-control" id="contact" name="contact"
					pattern="[+,9,1]{3}-[0-9]{5}-[0-9]{5}"
					placeholder="+91-98XXX-XXXXX" required>
			</div>
		</div>
		<hr>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="Ffname">Father's Name</label> <input type="text"
					class="form-control" id="Ffname" name="Ffname"
					placeholder="Father's name.." required>
			</div>
			<div class="form-group col-md-6">
				<label for="Flname">Faher's Last Name</label> <input type="text"
					class="form-control" id="Flname" name="Flname"
					placeholder="Father's Last name..">
			</div>
			<div class="form-group col-md-6">
				<label for="Fcontact">Father's Contact Number</label> <input
					type="text" class="form-control" id="Fcontact" name="Fcontact"
					pattern="[+,9,1]{3}-[0-9]{5}-[0-9]{5}"
					placeholder="+91-98XXX-XXXXX" required>
			</div>
		</div>
		<hr>
		<div class="form-group">
			<label for="address">Permanent Address</label> <input type="text"
				class="form-control" id="address" name="address"
				placeholder="Fill Your Address.." required>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="city">City</label> <input type="text"
					class="form-control" id="city" name="city"
					placeholder="Enter City Name.." required>
			</div>
			<div class="form-group col-md-4">
				<label for="inputState">State</label> <select id="inputState"
					name="state" class="form-control" required>
					<option selected>Choose...</option>
					<option>Andhra Pradesh</option>
					<option>Arunachal Pradesh</option>
					<option>Assam</option>
					<option>Bihar</option>
					<option>Chhattisgarh</option>
					<option>Goa</option>
					<option>Gujarat</option>
					<option>Haryana</option>
					<option>Himachal Pradesh</option>
					<option>Jammu and Kashmir</option>
					<option>Jharkhand</option>
					<option>Karnataka</option>
					<option>Kerala</option>
					<option>Madhya Pradesh</option>
					<option>Maharashtra</option>
					<option>Manipur</option>
					<option>Meghalya</option>
					<option>Mizoram</option>
					<option>Nagaland</option>
					<option>Punjab</option>
					<option>Rajasthan</option>
					<option>Sikkim</option>
					<option>Tamil Nadu</option>
					<option>Telangna</option>
					<option>Tripura</option>
					<option>Uttar Pradesh</option>
					<option>Uttarakhand</option>
					<option>West Bengal</option>
				</select>
			</div>
			<div class="form-group col-md-2">
				<label for="inputZip">Zip</label> <input type="text"
					class="form-control" id="inputZip" name="zip" required>
			</div>
		</div>
		<hr>

		<label for="course">Choose Course</label> <select
			class="custom-select" id="course" name="course" required>
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
			<option value="mba">Master of Business Administration(M.Ba.)</option>
			<option value="mcom">Master Of Commerce(M.Com.)</option>
		</select> <br> <br> <label for="stream">Choose Stream</label> <select
			class="custom-select" id="stream" name="stream" required>
			<option selected>Streams.. (If No Further Course Press None)</option>
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
		<hr>
		<div class="form-group">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" name="check"
					id="gridCheck" required> <label class="form-check-label"
					for="gridCheck"> I allow DG College malout team to contact
					me** </label>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Register</button>
	</form>
	<h1 id="con" style="background-color: white; color: white; width: 94%;">()</h1>
	<br>
	<h1 class="marg"
		style="background-color: rgb(53, 58, 64); color: white; text-align: center; width: 94%;">
		<b>CONTACT INFORMATION</b>
	</h1>
	<div class="marg"
		style="background-color: rgb(122, 116, 116); font-size: 20px; color: white; width: 94%;">
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