<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.mar{
	height:350px;
	width:500px;
	margin-left:35%;
}
</style>
<meta charset="ISO-8859-1">
<title>SUCCESS!!</title>
</head>
<body>
<img class="mar" src="photos/successFull.jpg">
<%
		if (session.getAttribute("email") == null) {
			request.setAttribute("eraagya", "Please Login First**");
			request.getRequestDispatcher("ADMIN_login_portalAdmin.jsp").forward(request, response);
		}
	%>
<h1 style="text-align:center;">Done!!</h1>
<button onclick='document.location="ADMIN_MainFileAdmin.jsp"' style="margin-left:46%;">Click To Go Back</button>
</body>
</html>