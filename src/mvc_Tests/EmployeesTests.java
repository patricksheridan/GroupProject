package mvc_Tests;

import static org.junit.Assert.fail;

import java.util.List;

import mvc_data.IEmployeeMapper;
import mvc_employee.models.Employee;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;



public class EmployeesTests {
	
	@Autowired
	IEmployeeMapper employeeMapper;

	
	
	@Test
	public void getAllEmployeesTest() {
		List<Employee> es = employeeMapper.getEmployees();
		assert(es.size() > 0);
		 
	}	
	
	@Test
	public void getOneEmployee() {
		Employee es = employeeMapper.getEmployeeByID(1);
		assert(es!=null);
	}

	@Test
	public void checkCreatedEmployeeFirstName(){
		Employee e = new Employee();
		e.setFirstName("KRIS");
		assert(e.getFirstName()!=null);
	}
	
	@Test
	public void checkCreatedEmployeeLastName(){
		Employee e = new Employee();
		e.setLastName("LAST NAME");
		assert(e.getLastName()!=null);
	}
	
	@Test
	public void checkCreatedEmployeeSalary(){
		Employee e = new Employee();
		e.setSalary(500);
		assert(e.getSalary() == 500);
	}
}
