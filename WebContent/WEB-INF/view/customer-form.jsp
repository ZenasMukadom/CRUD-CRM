<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">

<meta charset="ISO-8859-1">
<title>Add Customer Details</title>
</head>
<body style="background-color:gray;">

	<div class="container p-3 my-3 bg-dark text-white">
		<center>
		  <h1>CRUD CRM</h1>
		  <p>Customer Relationship Manager</p>
		</center>
	</div>
	
	

	<div class="container p-3 my-3 bg-dark text-white">
		<h3>Save Customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		
			<form:hidden path="id"/>
			
			<table class="table">
				<tbody>
					<tr>
						<td><label>First Name : </label></td>
						<td><form:input path="firstName"/></td>
					</tr>
					
					<tr>
						<td><label>Last Name : </label></td>
						<td><form:input path="lastName"/></td>
					</tr>
					
					<tr>
						<td><label>Email : </label></td>
						<td><form:input path="email"/></td>
					</tr>
					
					<tr>
						<td><label> </label></td>
						<td><input type="submit" value="Submit" class="btn btn-success"/></td>
					</tr>
					
					
				</tbody>
				</table>
			
		</form:form>
		
		<div style="clear; both"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
		
	</div>

</body>
</html>