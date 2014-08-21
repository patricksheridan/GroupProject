<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>
<title>Johnny Bravo</title>

</head>
<body>
<div id ="main">
<div id="CSSTableGenerator">
	<h1>Employees</h1>
	<table border="1">
	<a href="AddEmployee.mvc"> Add Employee</a>
	
	<tr>
	<th>ID</th>
	<th>First Name</th>
	<th>Last Name</th>

	
	<th>View</th>
	<th>Edit</th>
	<th>Delete</th>
	</tr>
	<#list emps as emp>
	<tr>
	  <td>${emp.ID} </td>
	  <td> ${emp.firstName} </td>
	  <td>${emp.lastName}</td>
	  <td><a href='${rc.contextPath}/${emp.ID}/ViewEmployee.mvc'>View</a></td>
	  <td><a href='${rc.contextPath}/${emp.ID}/EditEmployee.mvc'>Edit</a></td>
	  <td><a href='${rc.contextPath}/${emp.ID}/DeleteEmployee.mvc'>Delete</a></td>
	</tr>
	</#list>
	</table>
</div>

</div>

</body>
</html>