package bookvault.service;

import bookvault.entity.Employees;
import bookvault.entity.Managers;
import bookvault.entity.Tasks;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class OfficeService {
	private static EntityManagerFactory factory;
	private static  EntityManager manager;
	private static  EntityTransaction transaction;
	static {
		factory=Persistence.createEntityManagerFactory("deepak");
		manager=factory.createEntityManager();
		transaction=manager.getTransaction();
	}
	
	public Managers fetchManager(int name) {
		Managers managers = manager.find(Managers.class, name);
		if(managers!=null)return managers;
		return null;
	}
	public void createentity() {
		System.out.println("table created");
	}
	
	public void saveManager(Managers m,Employees e, Tasks t) {
		transaction.begin();
		manager.persist(m);
		manager.persist(e);
		manager.persist(t);
		transaction.commit();
		
	}

}
