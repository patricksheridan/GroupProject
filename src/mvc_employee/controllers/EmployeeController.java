package mvc_employee.controllers;

import java.util.List;

import javax.sql.DataSource;

import mvc_data.IEmployeeMapper;
import mvc_employee.models.Employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class EmployeeController {
	
	@Autowired 
	IEmployeeMapper employeeMapper;
	
	@RequestMapping(value="index.mvc")
	public String landingPage (Model m){ 
		Employee.list.addAll(employeeMapper.getEmployees());
		
		m.addAttribute("emps", Employee.list);
		return "EmployeeList";
	}

}
