package bookvault.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class users {
	@Id
	private int userId;
	private String userName;
	private String email;
	private long number;
	private int age;
	private String password;
	private String confirmPassword;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public users(int userId, String userName, String email, long number, int age, String password,
			String confirmPassword) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.email = email;
		this.number = number;
		this.age = age;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}
	public users() {
		super();
	}
	@Override
	public String toString() {
		return "users [userId=" + userId + ", userName=" + userName + ", email=" + email + ", number=" + number
				+ ", age=" + age + ", password=" + password + ", confirmPassword=" + confirmPassword + "]";
	}
	
	

}
