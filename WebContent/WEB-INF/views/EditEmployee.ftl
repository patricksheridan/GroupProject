<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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


<input type="submit" value="Submit">

</form> 


</body>
</html>