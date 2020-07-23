<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>
	
	<hr class="horizontal-line" >
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	<hr class="horizontal-line" >
	
	<div id="container">
	
		<div id="content">
		
		<!-- input button: Add Customer -->
		<input class="add-button" type="button" value="ADD CUSTOMER"
		       onclick="window.location.href='showFormToAddCustomers'; return false; " />
		<hr class="horizontal-line" >       
		
			<!--  add our html table here -->
		
			<table id="list-table" >
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
					<!-- this is an update link with customer id -->
					<c:url var="updateLink" value="/customers/showFormForUpdate" >
					
						<c:param name="customerId" value="${tempCustomer.id}]" ></c:param>
					
					</c:url>
				
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						<td> 
							<!--  this displays the update link -->
							<a href="${updateLink}" >UPDATE</a>
						</td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	<hr class="horizontal-line" >
	
</body>

</html>









