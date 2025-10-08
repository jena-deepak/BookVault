package bookvault.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;


public class Authors {
	@Id
	private int authorId;
	private String authorName;
	private String awards;
	private int age;
	

}
