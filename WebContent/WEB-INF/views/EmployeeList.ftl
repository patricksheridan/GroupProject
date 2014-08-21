<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="style.css" />
<meta charset="UTF-8">
<title>Johnny Bravo</title>
</head>
<body>
<div id="main">
	<h1>Employees</h1>
	<table border="1">
	<tr>
	<th>ID</th>
	<th>First Name</th>
	<th>Last Name</th>

	
	<th>View</th>
	<th>Edit</th>
	</tr>
	<#list emps as emp>
	
	<tr>
	  <td>${emp.ID} </td>
	  <td> ${emp.firstName} </td>
	  <td>${emp.lastName}</td>
	 
	  <td><a href='${rc.contextPath}/${emp.ID}'>View</a></td>
	  <td><a href='${rc.contextPath}/${emp.ID}'>Edit</a></td>
	</tr>
	


	</#list>
	</table>
</div>
</body>
</html>