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

}
