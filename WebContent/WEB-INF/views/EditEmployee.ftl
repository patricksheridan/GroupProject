<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../style.css"/>
 
<title>Edit Employee</title>
 
<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>
 
</head>
<body>

<div id="main">
	<link rel="shortcut icon" href="../fav.ico" type="image/x-icon" /> 
	
	<h1>Edit Employee</h1>
	
	
	<form action="${rc.contextPath}/${emp.ID}/EditEmployeeSend.mvc" method="post">
	
	<input type="text" name="iD" value="${emp.ID}" hidden="true"><br>
	
	<label for="firstName">First Name</label>
	<input type="text" name="firstName" value="${emp.firstName}"><br>
	
	<label for="lastName">Last Name</label>
	<input type="text" name="lastName" value="${emp.lastName}"><br>
	
	<label for="salary">Salary</label>
	<input type="text" name="salary" value="${emp.salary?c}"><br>
	
	<label for="nI_Number">NI Number</label>
	<input type="text" name="nI_Number" value="${emp.NI_Number}"><br>
	
	
	<a href="../index.mvc"> Main Menu</a> <input type="submit" value="Submit">
	
	</form> 

</div>


</body>
</html>