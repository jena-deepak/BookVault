package bookvault.controller;

import java.util.ArrayList;
import java.util.List;

import bookvault.entity.Authors;
import bookvault.entity.Books;
import bookvault.service.BookService;
import bookvault.service.UserService;

public class EntityDriver {
	public static void main(String[] args) {
//		UserService service = new UserService();
//		
//	Authors author1 = new Authors();
//	author1.setAuthorId(103);
//	author1.setAuthorName("Fyodor Dostoevsky");
//	author1.setAwards("Booksellers Association Author of the Year");
//	author1.setAge(39);
//	List<Books> bookList = new ArrayList<Books>();
//	Books book1 = new Books();
//	book1.setBookId(5);
//	book1.setBookName("White Nights");
//	book1.setPrice(80);
//	book1.setAuthor(author1);
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
	
//	bookList.add(book1);
//	bookList.add(book2);
//	bookList.add(book3);
	
//	author1.setBook(bookList);
//	
//	service.createAuthor(author1);
		
		BookService bookService = new  BookService();
		bookService.fetchBooks();
				

	
		
	}

}
