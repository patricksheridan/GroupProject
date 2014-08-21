<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Employees</h1>

<a href="AddEmployee.mvc"> Add Employee</a>

<table border="1">
<tr><th>Employees</th></tr>
<#list emps as emp>
<tr>
<td> ${emp.firstName}</td>
</tr>
</#list>
</table>
</body>
</html>