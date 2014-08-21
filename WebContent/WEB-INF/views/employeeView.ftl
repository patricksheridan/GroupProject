<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../style.css"/>
<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>

<title>View Employee</title>
</head>
<body>
<div id="main">
<link rel="shortcut icon" href="../fav.ico" type="image/x-icon" />
 	<h1> Employee Record</h1>

	<table border="1">
	
<a href="http://localhost:10080/employeemvc/"> Main Menu</a>
	<tr>
		<th>ID</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>National Insurance</th>
		<th>Salary</th>
	</tr>

	<tr>
	  <td>${Emp.ID} </td>
	  <td> ${Emp.firstName} </td>
	  <td>${Emp.lastName}</td>
	  <td>${Emp.NI_Number}</td>
	  <td>${Emp.salary}</td>
	</tr>

	</table>

	
	
</div>
</body>
</html>