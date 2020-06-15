<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.marg {
	margin-left: 5%;
	width: 90%;
}
</style>
<meta charset="ISO-8859-1">
<title>FEE STATUS!!</title>
</head>
<body>
	<%
		String fname = (String) request.getAttribute("fname");
	String lname = (String) request.getAttribute("lname");
	System.out.print(fname + " " + lname);
	%>
	<form class="marg" action="Main_FeeStatusServlet" method="post">
		<div class="form-group">
			<label for="fname" class="col-sm-2 col-form-label">First Name</label><br>
			<div class="col-sm-10">
				<input type="text" readonly class="form-control-plaintext"
					id="fname" value=<%=fname%> name="fname">
			</div><br>
		</div>
		<div class="form-group">
			<label for="lname" class="col-sm-2 col-form-label">Last Name</label>
			<div class="col-sm-10">
				<input type="text" readonly class="form-control-plaintext"
					id="lname" value=<%=lname%> name="lname">
			</div>
		</div>
		<div class="form-group">
			<p>Please select your Fee Status:</p>
			<input type="radio" id="paid" name="fs" value="PAID"> <label
				for="paid">Paid</label><br> <input type="radio" id="not_paid"
				name="fs" value="NOT PAID"> <label for="not_paid">Not
				Paid</label><br>
		</div>
		<hr>
		<input type="submit">
	</form>
</body>
</html>