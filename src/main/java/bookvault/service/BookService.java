package bookvault.service;

import java.util.List;

import bookvault.entity.Authors;
import bookvault.entity.Books;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

public class BookService {
	private static EntityManagerFactory factory;
	private static  EntityManager manager;
	private static  EntityTransaction transaction;
	static {
		factory=Persistence.createEntityManagerFactory("deepak");
		manager=factory.createEntityManager();
		transaction=manager.getTransaction();
	}
	
	public List<Books> fetchBooks() {
		Query query = manager.createQuery("FROM Books ");
		return query.getResultList();
//		List<Books> resultList = query.getResultList();
//		for(Books book: resultList) {
//			System.out.println(book.getBookId()+" "+book.getBookName()+" "+book.getAuthor().getAuthorName() );
//			
//		}
	}
	public List<Authors> fetchAuthors(){
		Query query = manager.createQuery("FROM Authors");
		return query.getResultList();
		
	}

}
