package mvc_employee.models;

public class Employee {
	
	private int ID;
	private String firstName;
	private String lastName;
	private float salaty;
	private String NI_Number;
	
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
	public float getSalaty() {
		return salaty;
	}
	public void setSalaty(float salaty) {
		this.salaty = salaty;
	}
	
	

}
