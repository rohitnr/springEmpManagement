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
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
	<h1 class="text-center">View All Employee</h1>
	<div class="col-10 text-right">
		<a href="home" class="btn btn-primary">home</a>
	</div>

	<hr />
	<c:if test="${requestScope.msg ne null }">
	   <div class ="alert alert-danger">${requestScope.msg}</div>
	</c:if>
	<table
		class="table table-primary table-striped table-hover mx-auto col-5">
		<tr class="bg-danger text-white">
			<td>Emp Id</td>
			<td>Emp Name</td>
			<td>Salary</td>
			<td>DateOfJoining </td>
			<td>Department</td>
			<td>PF</td>
			<td>Allowances</td>
			<td>NetSalary</td>
		</tr>
		<c:forEach items="${requestScope.elist}" var="e">
		<tr>
			<td>${e.empId}</td>
			<td>${e.empName}</td>
			<td>${e.empSal}</td>
			<td>${e.doj}</td>
			<td>${e.dept}</td>
			<td>${e.empSal * 0.12}</td>
			<td>${e.empSal * 0.4}</td>
			<td>${e.empSal + e.empSal * 0.4 - e.empSal * 0.12}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>










