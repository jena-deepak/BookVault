package bookvault.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Authors {
	@Id
	private int authorId;
	private String authorName;
	private String awards;
	private int age;
	@OneToMany(mappedBy = "author", cascade = CascadeType.ALL)
	private List<Books> book;
	public int getAuthorId() {
		return authorId;
	}
	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getAwards() {
		return awards;
	}
	public void setAwards(String awards) {
		this.awards = awards;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public List<Books> getBook() {
		return book;
	}
	public void setBook(List<Books> book) {
		this.book = book;
	}
	public Authors(int authorId, String authorName, String awards, int age, List<Books> book) {
		super();
		this.authorId = authorId;
		this.authorName = authorName;
		this.awards = awards;
		this.age = age;
		this.book = book;
	}
	public Authors() {
		super();
	}
	@Override
	public String toString() {
		return "Authors [authorId=" + authorId + ", authorName=" + authorName + ", awards=" + awards + ", age=" + age
				+ ", book=" + book + "]";
	}
	
	

}
