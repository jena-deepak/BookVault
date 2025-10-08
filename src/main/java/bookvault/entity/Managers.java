package bookvault.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Managers {
	@Id
	private int mId;
	private String mName;
	@OneToMany
	private List<Employees> employees;
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public Managers(int mId, String mName, List<Employees> employees) {
		super();
		this.mId = mId;
		this.mName = mName;
		this.employees = employees;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public List<Employees> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employees> employees) {
		this.employees = employees;
	}
	public Managers() {
		super();
	}
	@Override
	public String toString() {
		return "Managers [mId=" + mId + ", mName=" + mName + ", employees=" + employees + "]";
	}
	

}
