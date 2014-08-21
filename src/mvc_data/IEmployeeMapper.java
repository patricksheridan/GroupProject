package mvc_data;
import java.util.List;
import mvc_employee.models.Employee;
import org.apache.ibatis.annotations.Select;

public interface IEmployeeMapper {
	
	@Select("SELECT * from Employees")
	List<Employee> getEmployees();
	

}
