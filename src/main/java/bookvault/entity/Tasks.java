package bookvault.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Tasks {
	@Id
	private int tId;
	private String tName;
	private int duration;
	private String status;
	public int gettId() {
		return tId;
	}
	public void settId(int tId) {
		this.tId = tId;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Tasks(int tId, String tName, int duration, String status) {
		super();
		this.tId = tId;
		this.tName = tName;
		this.duration = duration;
		this.status = status;
	}
	public Tasks() {
		super();
	}
	@Override
	public String toString() {
		return "Tasks [tId=" + tId + ", tName=" + tName + ", duration=" + duration + ", status=" + status + "]";
	}
	

}
