<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
</head>
<body>
	<h1 class="text-center">View By ID</h1>
	<div class="col-10 text-right">
	   
	    <a href="home" class="btn btn-primary">home</a>
	</div>
	
	<hr />
	<form action="viewbyid" >
		<table class="col-5 mx-auto table table-striped table-primary">
			<tr>
				<td>Enter Employee ID</td>
				<td><input type="text" name="txteid" required/></td>
			</tr>
            
			<tr>
				<td colspan="2"><input type="submit" value="View" /></td>
			</tr>
		</table>
	</form>

</body>
</html>