package bookvault.controller;

import java.util.ArrayList;
import java.util.List;

import bookvault.entity.Employees;
import bookvault.entity.Managers;
import bookvault.entity.Tasks;
import bookvault.service.OfficeService;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class EntityDriver {

	public static void main(String[] args) {
		 EntityManagerFactory factory = Persistence.createEntityManagerFactory("deepak");
			

		EntityManager manager=factory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		//OfficeService officeService = new OfficeService();
		Managers m1= new Managers();
		m1.setmId(1);
		m1.setmName("Deepak Jena");
		Employees emp1 = new Employees();
		emp1.setEmpId(101);
		emp1.setEmpName("Asish Khuntia");
		emp1.setEmpRole("junior developer");
		Tasks task1= new Tasks();
		task1.settId(1);
		task1.settName("create Update Button");
		task1.setDuration(1);
		task1.setStatus("pending");
		Tasks task2= new Tasks();
		task2.settId(2);
		task2.settName("Integrate Api");
		task2.setDuration(4);
		task2.setStatus("pending");
		List<Tasks> taskList = new ArrayList<>();
		taskList.add(task1);
		taskList.add(task2);
		emp1.setTasks(taskList);
		Employees emp2 = new Employees();
		emp2.setEmpId(102);
		emp2.setEmpName("Narayan Raula");
		emp2.setEmpRole("junior backend developer");
		Tasks task3= new Tasks();
		task3.settId(3);
		task3.settName("create rest Api");
		task3.setDuration(5);
		task3.setStatus("pending");
		Tasks task4= new Tasks();
		task4.settId(4);
		task4.settName("fetch empolyess");
		task4.setDuration(4);
		task4.setStatus("pending");
		List<Tasks> taskList1 = new ArrayList<>();
		taskList1.add(task3);
		taskList1.add(task4);
		emp1.setTasks(taskList1);
		List<Employees> empList= new ArrayList<>();
		empList.add(emp1);
		empList.add(emp2);
		m1.setEmployees(empList);
		
		transaction.begin();
		manager.persist(emp1);
		manager.persist(emp2);
		manager.persist(task1);
		manager.persist(task2);
		manager.persist(task3);
		manager.persist(task4);
		manager.persist(m1);
		transaction.commit();
		System.out.println("data saved!!!");
		
		

	}

}
