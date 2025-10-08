package bookvault.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Employees {
	@Id
	private int empId;
	private String empName;
	private String empRole;
	@OneToMany
	private List<Tasks> tasks;
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpRole() {
		return empRole;
	}
	public void setEmpRole(String empRole) {
		this.empRole = empRole;
	}
	public List<Tasks> getTasks() {
		return tasks;
	}
	public void setTasks(List<Tasks> tasks) {
		this.tasks = tasks;
	}
	public Employees(int empId, String empName, String empRole, List<Tasks> tasks) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empRole = empRole;
		this.tasks = tasks;
	}
	public Employees() {
		super();
	}
	@Override
	public String toString() {
		return "Employees [empId=" + empId + ", empName=" + empName + ", empRole=" + empRole + ", tasks=" + tasks + "]";
	}
	
	

}
