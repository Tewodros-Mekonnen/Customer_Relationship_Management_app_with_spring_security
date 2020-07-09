<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customers</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
</head>
<body>
	<div id="wrapper">

		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>

	</div>

	<div>
		<h2>Save Customers</h2>
	</div>

	<div>

		<!-- inside the form, when we click save button, the method inside CustomerController with 'saveCustomer' mapping will run -->
		<form:form action="saveCustomer" modelAttribute="customer">

			<!-- need to associate this data with customer id, if we don't add this code, when we 
			update data, it will just make it a new entry instead of update -->
			<form:hidden path="id" />


			<table>

				<tbody>

					<tr>
						<td><label>First Name:</label></td>
						<td><form:input path="firstName" /></td>

					</tr>

					<tr>
						<td><label>Last Name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"></td>
					</tr>

				</tbody>


			</table>

		</form:form>

	</div>


</body>
</html>