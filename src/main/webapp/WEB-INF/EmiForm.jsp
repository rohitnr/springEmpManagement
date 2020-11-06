<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<h1 class="text-center">EMI Calculation</h1>
	<div class="col-10 text-right">
	   
	    <a href="home" class="btn btn-primary">home</a>
	</div>
	
	<hr />
	<form action="emi" method="post">
		<table class="col-5 mx-auto table table-striped table-primary">
			<tr>
				<td>Customer Name</td>
				<td><input type="text" name="txtname" required /></td>
			</tr>
            <tr>
				<td>Loan Amount</td>
				<td><input type="number" name="txtloanamt" required /></td>
			</tr>
			<tr>
				<td>Years</td>
				<td><input type="number" name="txtyears" max="25" min="1" required /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Calc EMI" /></td>
			</tr>
		</table>
	</form>

</body>
</html>