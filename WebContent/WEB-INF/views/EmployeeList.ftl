<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script> 
  <style>
    div#users-contain { width: 350px; margin: 20px 0; }
    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
    .ui-dialog .ui-state-error { padding: .3em; }
    .validateTips { border: 1px solid transparent; padding: 0.3em; }
  </style>
  
 
  
  <script>
  
   
  $(function() {
    var dialog, form,
 
      
    dialog = $( "#dialog" ).dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true,
        buttons: {
          Cancel: function() {
            dialog.dialog( "close" );
          }
        },
        close: function() {
        }
      });
    
 
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
     // event.preventDefault();
    });
 
    $( ".announce" ).button().on( "click", function() {
      dialog.dialog( "open" );

      var FName=$(this).data("name");  
      var LName=$(this).data("lname");  
      var empID=$(this).data("id");  
      var sal=$(this).data("sal");  
      var Nin =$(this).data("nin");  

      document.getElementById("empfName").innerHTML  = FName;
      document.getElementById("emplName").innerHTML  = LName; 
      document.getElementById("empID").innerHTML = empID;
      document.getElementById("empSalary").innerHTML = sal;
      document.getElementById("NiNum").innerHTML = Nin;
      //sal

     
      
    });
  });
  </script>
  
<title>Johnny Bravo</title>

</head>
<body>
<div id ="main">
<link rel="shortcut icon" href="fav.ico" type="image/x-icon" />
<div id="CSSTableGenerator">
	<h1>Employees</h1>
	
	<div id="dialog" title="View Employee">
<label><b>ID</b></label>	<label id="empID"></label> <br>
<label><b>First Name</b></label>	<label id="empfName"></label> <br>
<label><b>Last Name</b></label>	<label id="emplName"></label> <br>
<label><b>Salary</b></label>	<label id="empSalary"></label> <br>
<label><b>NI Number</b></label>	<label id="NiNum"></label> 
</div>
		
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
	  	  <td><button class="announce" data-toggle="modal" data-target="#Modal"
                          data-id="${emp.ID}" data-name="${emp.firstName}" data-lname="${emp.lastName}"  data-sal="${emp.salary}"  data-nin="${emp.NI_Number}" >View</button>  </td>
	  <td><a href='${rc.contextPath}/${emp.ID}/EditEmployee.mvc'>Edit</a></td>
	  <td><a href='${rc.contextPath}/${emp.ID}/DeleteEmployee.mvc'>Delete</a></td>
	</tr>
	</#list>
	</table>
</div>

 


</div>

</body>
</html>