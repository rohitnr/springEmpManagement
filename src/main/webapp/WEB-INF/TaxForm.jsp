<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Calculate your tax</title>
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
				<td><input type="text" name="txtname" required /></td>
			</tr>
            <tr>
				<td>annual Income</td>
				<td><input type="number" name="txtincome" required /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Calc Tax" /></td>
			</tr>
		</table>
	</form>

</body>
</html>