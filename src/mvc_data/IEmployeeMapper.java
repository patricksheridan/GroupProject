package mvc_data;
import java.util.List;

import mvc_employee.models.Employee;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface IEmployeeMapper {
	
	@Select("SELECT * from Employees")
	List<Employee> getEmployees();
	
	@Insert("INSERT INTO Employees (firstName,lastName,NI_Number,salary) values ( #{firstName}, #{lastName}, #{nI_Number}, #{salary} ) ")
	public void InsertEmployee(@Param("firstName") String firstName, @Param("lastName") String lastName, @Param("nI_Number") String nI_Number, @Param("salary") float salary);
	

}
