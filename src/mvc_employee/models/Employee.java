package mvc_employee.models;

import java.util.ArrayList;
import java.util.List;

public class Employee {
	
	private int ID;
	private String firstName;
	private String lastName;
	private float salary;
	private String NI_Number;
	public static List<Employee> list = new ArrayList<Employee>();
	
	public String getNI_Number() {
		return NI_Number;
	}
	public void setNI_Number(String nI_Number) {
		NI_Number = nI_Number;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	
	

}
