package bookvault.service;

import java.util.List;

import bookvault.entity.Authors;
import bookvault.entity.users;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

public class UserService {
	private static EntityManagerFactory factory;
	private static  EntityManager manager;
	private static  EntityTransaction transaction;
	static {
		factory=Persistence.createEntityManagerFactory("deepak");
		manager=factory.createEntityManager();
		transaction=manager.getTransaction();
	}
	public List<users> fetchUser(String email, String pswd) {
		Query query=manager.createQuery("from users u where u.email=:email and u.password=:password");
		query.setParameter("email", email);
		query.setParameter("password", pswd);
		List<users> userList=query.getResultList();
		return userList;
		
	}
	
	public void createUser(users user) {
		transaction.begin();
		manager.persist(user);
		transaction.commit();
		System.out.println("NEW USER CREATED!!");
	}
	
	public void createAuthor(Authors author) {
		transaction.begin();
		manager.persist(author);
		transaction.commit();
	}

}
