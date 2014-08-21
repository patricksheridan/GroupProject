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

 	<h1> Employee Record</h1>

	<label>${Emp.ID}</label>
	<label>${Emp.firstName}</label>
	<label>${Emp.lastName}</label>
	<label>${Emp.salary}</label> 
	<label>${Emp.NI_Number}</label>  

	<a href="http://localhost:10080/employeemvc/">Main Menu</a>
	<a href="EditEmployee.mvc"> Edit Employee</a>
	<a href="DeleteEmployee.mvc"> Delete Employee</a>
</div>
</body>
</html>