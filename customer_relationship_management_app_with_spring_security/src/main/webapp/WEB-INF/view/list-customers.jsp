<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
			<h2>CRM - Customer Registration Manager</h2>
		</div>
	</div>
	<hr class="horizontal-line" >
	
	<div id="container">
	
		<div id="content">
		
		<!-- input button: Add Customer -->
		<div>
			<input class="add-button" type="button" value="ADD CUSTOMER"
			       onclick="window.location.href='showFormToAddCustomers'; return false; " />
			<!-- <span class="note" >NOTE: The DELETE functionality is not active currently!</span>   -->  
			
			
			<!-- adding search functionality -->
			<form:form  action="searchCustomer"  method="GET">
				Search Customer:<input type="text" placeholder="enter customer name.." name="theSearchName" class="search-box" >
							<input type="submit"  value="Search" class="search-button" >
			</form:form>
			
			   
			      
		       
		 </div>      
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
					
						<c:param name="customerId" value="${tempCustomer.id}" />
						<!-- the value of ${tempCustomer.id} will be passed to value="/customers/showFormForUpdate" -->
						
					</c:url>
					
					<!-- this is a delete link with customer id -->
					<c:url var="deleteLink" value="/customers/delete" >
					
						<c:param name="customerId" value="${tempCustomer.id}" />
						<!-- the value of ${tempCustomer.id} will be passed to value="/customers/delete" -->
						
					</c:url>
				
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						
						<td> 
							<!--  this displays the update link -->
							<a class="update-link" href="${updateLink}" >UPDATE</a>
							<a class="delete-link"
								onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false  "
							 href="${deleteLink}" >DELETE</a>
						</td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	<hr class="horizontal-line" >
	
</body>

</html>









