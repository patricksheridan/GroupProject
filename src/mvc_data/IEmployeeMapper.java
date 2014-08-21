package mvc_data;
import java.util.List;

import mvc_employee.models.Employee;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface IEmployeeMapper {
	
	@Select("SELECT * from Employees")
	List<Employee> getEmployees();
	
	@Insert("INSERT INTO Employees (firstName,lastName,NI_Number,salary) values ( #{firstName}, #{lastName}, #{nI_Number}, #{salary} ) ")
	public void InsertEmployee(@Param("firstName") String firstName, @Param("lastName") String lastName, @Param("nI_Number") String nI_Number, @Param("salary") float salary);
	
	@Select("Select * FROM Employees where ID = #{iD}")
	public Employee getEmployeeByID(@Param("iD") int ID);
	
	@Update("Update Employees set firstName = #{firstName},lastName = #{lastName}, nI_Number= #{nI_Number}, salary = #{salary} WHERE ID=#{iD}")
	public void UpdateEmployee(@Param("iD") int ID,@Param("firstName") String firstName, @Param("lastName") String lastName, @Param("nI_Number") String nI_Number, @Param("salary") float salary);
	
	@Delete("DELeTE from Employees where ID = #{iD}")
	public void DelteEmployee(@Param("iD") int ID);

} 