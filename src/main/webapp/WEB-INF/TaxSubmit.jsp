<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Tax calculation</title>
</head>
<body>
	<h1 class="text-center">Tax Calculation</h1>
	<div class="col-10 text-right">
	     <a href="home" class="btn btn-primary">home</a>
	</div>
	<hr />
	<form action="tax" >
		<table class="col-5 mx-auto table table-striped table-primary">
			<tr>
				<td>Customer Name</td>
				<td>${param.txtname}</td>
			</tr>
            <tr>
				<td>Annual Income</td>
				<td>${param.txtincome}</td>
			</tr>
			 <tr>
				<td>Tax to be Paid</td>
				<td>${requestScope.taxresult}</td>
			</tr>
		</table>
	</form>

</body>
</html>