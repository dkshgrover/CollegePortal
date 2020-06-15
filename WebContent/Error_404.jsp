<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="true"%>
<%
	response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
%>
<!DOCTYPE html>
<html>
<head>
<style>
img {
	margin-left: 22%;
}

input {
	margin-left: 43%;
}
body {
	background-color:white;		
}
</style>
<meta charset="ISO-8859-1">
<title>Error 404 not found</title>
</head>
<body>
	<img src="photos/error.jpg">
	<br>
	<br><br><br>
	<h1 style="text-align: center;color:rgb(16, 27, 46);">ERROR 404 NOT FOUND :(</h1>
	<form action="Home.jsp">
		<input type="submit" value="Go Back To Main Page">
	</form>
</body>
</html>