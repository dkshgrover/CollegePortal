<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
img {
	margin-left: 25%;
}

input {
	margin-left: 43%;
}

body {
	background-color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>REGISTERED!!</title>
</head>
<body>
	<%
		if (session.getAttribute("uname") == null) {
		request.setAttribute("eraagya", "Please Login First**");
		request.getRequestDispatcher("STUDENT_login_portalS.jsp").forward(request, response);
	}
	%>
	<br>
	<img src="photos/reg.png">
	<br>
	<br>
	<br>
	<br>
	<h1 style="text-align: center; color: rgb(16, 27, 46);">YOU HAVE
		BEEN REGISERED</h1>
	<form action="STUDENT_MainFile.jsp">
		<input type="submit" value="Go Back To Main Page">
	</form>
</body>
</html>