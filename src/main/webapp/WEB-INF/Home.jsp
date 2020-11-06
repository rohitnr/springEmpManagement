<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Home</title>
</head>
<body>
	<h1 class="text-center">Home Page</h1>
		
	<hr />
	<nav class="bg-dark">
	   <a class="m-1 p-1 text-white" href="taxform">Calculate Tax</a>
	   <a class="m-1 p-1 text-white" href="emiform">Calculate EMI</a>
	   <a class="m-1 p-1 text-white" href="viewall">View All Employee</a>
	   <a class="m-1 p-1 text-white" href="viewdepts">View Departments</a>
	    <a class="m-1 p-1 text-white" href="viewempid">View By ID</a>
	    <a class="m-1 p-1 text-white" href="displayaddform">Add Employee</a>
	</nav>
	<div class="alert alert-success">${requestScope.msg}</div>
</body>
</html>


