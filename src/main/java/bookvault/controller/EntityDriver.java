package bookvault.controller;

import java.util.ArrayList;
import java.util.List;

import bookvault.entity.Authors;
import bookvault.entity.Books;
import bookvault.service.BookService;
import bookvault.service.UserService;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class EntityDriver {
	public static void main(String[] args) {
		UserService service = new UserService();
//	
	
	Authors author1 = new Authors();
	author1.setAuthorId(105);
	author1.setAuthorName("George R. R. Martin");
	author1.setAwards("Emmy Awards");
	author1.setAge(77);
	List<Books> bookList = new ArrayList<Books>();
	Books book1 = new Books();
	book1.setBookId(6);
	book1.setBookName("Game Of Thrones (A Song of Ice and Fire)");
	book1.setPrice(599);
	book1.setBookUrl("https://upload.wikimedia.org/wikipedia/en/d/dc/A_Song_of_Ice_and_Fire_book_collection_box_set_cover.jpg");
	book1.setAuthor(author1);
//	Books book2 = new Books();
//	book2.setBookId(2);
//	book2.setBookName("Harry Potter and the Chamber of Secrets");
//	book2.setPrice(499);
//	book2.setAuthor(author1);
//	Books book3 = new Books();
//	book3.setBookId(3);
//	book3.setBookName("Harry Potter and the Prisoner of Azkaban");
//	book3.setPrice(550);
//	book3.setAuthor(author1);
	
	bookList.add(book1);
//	bookList.add(book2);
//	bookList.add(book3);
	
	author1.setBook(bookList);
//	
	service.createAuthor(author1);
		
//		BookService bookService = new  BookService();
//		bookService.fetchBooks();
		
//		EntityManagerFactory factory;
//		 EntityManager manager;
//		 EntityTransaction transaction;
//		
//		factory=Persistence.createEntityManagerFactory("deepak");
//		manager=factory.createEntityManager();
//		transaction=manager.getTransaction();
//		
//		transaction.begin();
//		Books books = manager.find(Books.class, 1);
//		Books books2 = manager.find(Books.class, 2);
//		Books books3 = manager.find(Books.class, 3);
//		Books books4 = manager.find(Books.class, 4);
//		Books books5 = manager.find(Books.class, 5);
//		if(books!=null && books2!=null && books3!=null && books4!=null && books5!=null ) {
//			books.setBookUrl("https://m.media-amazon.com/images/I/71XqqKTZz7L._UF1000,1000_QL80_.jpg");
//			books2.setBookUrl("https://m.media-amazon.com/images/I/915KEvGiX-L._UF1000,1000_QL80_.jpg");
//			books3.setBookUrl("https://m.media-amazon.com/images/I/81NQA1BDlnL._UF1000,1000_QL80_.jpg");
//			books4.setBookUrl("https://m.media-amazon.com/images/I/617lxveUjYL.jpg");
//			books5.setBookUrl("https://cdn.penguin.co.in/wp-content/uploads/2025/03/9780143474968.jpg");
//			
//			manager.persist(books);
//			manager.persist(books2);
//			manager.persist(books3);
//			manager.persist(books4);
//			manager.persist(books5);
//			transaction.commit();
//		}
				

	
		
	}

}
