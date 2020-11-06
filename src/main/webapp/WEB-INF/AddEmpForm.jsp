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
	<h1 class="text-center">Add Employee</h1>
	<div class="col-10 text-right">

		<a href="home" class="btn btn-primary">home</a>
	</div>

	<hr />
	<div class="col-5 mx-auto alert alert-success">${requestScope.msg}</div>
	<form action="addemp" method="post">
		<table class="col-5 mx-auto table table-striped table-primary">
			<tr>
				<td>Employee ID</td>
				<td><input type="number" name="empId" required
					value="${requestScope.emodel.empId}" /></td>
			</tr>
			<tr>
				<td>Employee Name</td>
				<td><input type="text" name="empName" required
					value="${requestScope.emodel.empName}" /></td>
			</tr>
			<tr>
				<td>Salary</td>
				<td><input type="number" name="empSal" required
					value="${requestScope.emodel.empSal}" /></td>
			</tr>
			<tr>
				<td>DOJ</td>
				<td><input type="date" name="doj" required
					value="${requestScope.emodel.doj}" /></td>
			</tr>
			<tr>
				<td>Dept</td>
				<td><select name="dept" required>
						<option value="">--select dept</option>
						<c:forEach items="${requestScope.dlist}" var="d">
							<c:choose>
								<c:when test="${d eq requestScope.empdel.dept}">
									<option value="${d}" selected>${d}</option>
								</c:when>
								<c:otherwise>
									<option value="${d}">${d}</option>
								</c:otherwise>
							</c:choose>

						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add Employee" /></td>
			</tr>
		</table>
	</form>

</body>
</html>