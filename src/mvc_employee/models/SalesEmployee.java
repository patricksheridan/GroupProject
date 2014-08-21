package mvc_employee.models;

import java.util.ArrayList;
import java.util.List;

public class SalesEmployee extends Employee {

	private int salesId;
	private float bonus;
	private float salesTotal;
	public static List<SalesEmployee> list = new ArrayList<SalesEmployee>();

	public int getSalesId() {
		return salesId;
	}

	public void setSalesId(int salesId) {
		this.salesId = salesId;
	}

	public float getBonus() {
		return bonus;
	}

	public void setBonus(float bonus) {
		this.bonus = bonus;
	}

	public float getSalesTotal() {
		return salesTotal;
	}

	public void setSalesTotal(float salesTotal) {
		this.salesTotal = salesTotal;
	}
}
