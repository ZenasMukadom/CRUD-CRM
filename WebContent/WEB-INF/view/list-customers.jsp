<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
<title> List of Customers</title>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">


</head>

<body style="background-color:gray;">
	
	<div class="container p-3 my-3 bg-dark text-white">
		<center>
		  <h1>CRUD CRM</h1>
		  <p>Customer Relationship Manager</p>
		</center>
	</div>
	
	<div class="container p-3 my-3 bg-dark text-white">
		<div id="content">
			
			<br><br>
		
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th>First Name </th>
						<th>Last Name </th>
						<th>Email </th>
						<th>Action </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tempCustomer" items="${customers}">
					
						<!--  Update Link -->
						<c:url var="updateLink" value="/customer/showFormForUpdate">
							<c:param name="customerId" value="${tempCustomer.id }" />
						</c:url>
						
						<!--  delete Link -->
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${tempCustomer.id }" />
						</c:url>
						
						<tr>
							<td>${tempCustomer.firstName}</td>
							<td>${tempCustomer.lastName}</td>
							<td>${tempCustomer.email}</td>
							<td><a href="${updateLink }">Update</a>
							|
							<a href="${deleteLink }"
							onclick="if (!(confirm('Are you sure you want to delete this customer'))) return false">
							Delete</a></td>
						</tr>
					</c:forEach>
				
				</tbody>
				
				
			
			</table>
			
			<br><br>
			<input type="button" class="btn btn-primary"
			value="Add Customer" onclick="window.location.href='showFormForAdd'; return false;"/>
			
		</div>
	</div>
	
</body>
</html>