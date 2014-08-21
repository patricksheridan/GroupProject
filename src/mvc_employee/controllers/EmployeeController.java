package mvc_employee.controllers;

import java.util.List;

import javax.sql.DataSource;

import mvc_data.IEmployeeMapper;
import mvc_employee.models.Employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class EmployeeController {
	
	@Autowired 
	IEmployeeMapper employeeMapper;
	
	@RequestMapping(value="index.mvc")
	public String landingPage (Model m){ 
		Employee.list.clear();
		Employee.list.addAll(employeeMapper.getEmployees());
		
		m.addAttribute("emps", Employee.list);
		return "EmployeeList";
	}
	
	@RequestMapping(value="AddEmployee.mvc")
	public String addEmployee(Model m)
	{
	
		return "AddEmployee";
	}
	
	 @RequestMapping(value="addEmployeeSend.mvc", method=RequestMethod.POST)
	  public String signup(Employee e) {
		 
		 Employee.list.add(e);
		 employeeMapper.InsertEmployee(e.getFirstName(),e.getLastName(),e.getNI_Number(),e.getSalary());
          return "redirect:index.mvc";
	      }

	 @RequestMapping("/{emp.ID}/ViewEmployee.mvc")
	 public String ViewEmployee (Model m, @PathVariable("emp.ID") int ID){
		 
		 
		 m.addAttribute("Emp", employeeMapper.getEmployeeByID(ID));
		 return "employeeView";
	 }

}
