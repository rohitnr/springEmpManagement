<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>EMI Submit</title>
</head>
<body>
	<h1 class="text-center">EMI Calculation</h1>
	<div class="col-10 text-right">
	    
	    <a href="home" class="btn btn-primary">home</a>
	</div>
	<hr />
	<form action="loan" method="post">
		<table class="col-5 mx-auto table table-striped table-primary">
			<tr>
				<td>Customer Name</td>
				<td>${param.txtname}</td>
			</tr>
            <tr>
				<td>Loan Amount</td>
				<td>${param.txtloanamt}</td>
			</tr>
			<tr>
				<td>Years</td>
				<td>${param.txtyears}</td>
			</tr>
			<tr>
				<td>Compound Amount</td>
				<td>${requestScope.totalamt}</td>
			</tr>
			<tr>
				<td>EMI</td>
				<td>${requestScope.monthlyamt}</td>
			</tr>
		</table>
	</form>

</body>
</html>