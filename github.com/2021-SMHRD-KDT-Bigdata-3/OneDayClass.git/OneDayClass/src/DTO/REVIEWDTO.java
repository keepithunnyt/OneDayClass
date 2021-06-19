package DTO;
 
public class REVIEWDTO {
	private String id;
	private int Class_id;
	private int rating;	
	private String comm;
	
	public REVIEWDTO(String id, int class_id, int rating, String comm) {
		this.id = id;
		Class_id = class_id;
		this.rating = rating;
		this.comm = comm;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getClass_id() {
		return Class_id;
	}

	public void setClass_id(int class_id) {
		Class_id = class_id;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getComm() {
		return comm;
	}

	public void setComm(String comm) {
		this.comm = comm;
	}
	
	
	
}
