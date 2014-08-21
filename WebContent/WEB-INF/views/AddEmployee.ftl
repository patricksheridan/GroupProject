<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>
<title>Add Employee</title>
</head>
<body>

<div id="main">
	<h1> Add Employee</h1>
	<link rel="shortcut icon" href="fav.ico" type="image/x-icon" /> 
	<form action="addEmployeeSend.mvc" method="post" class="../style.css">
	
	<div>
		<label for="fname">First Name</label>
		<input type="text" name="firstName">
	</div>
	<div>	
		<label for="lname">Last Name</label>
		<input type="text" name="lastName">
	</div>
	<div>	
		<label for="salary">Salary</label>
		<input type="text" name="salary">
	</div>
	<div>	
		<label for="ninumber">NI Number</label>
		<input type="text" name="nI_Number">
	</div>

	<br>
	<a href="http://localhost:10080/employeemvc/">Main Menu</a> <input type="submit" value="Submit">
	
	</form> 
</div>

</body>
</html>