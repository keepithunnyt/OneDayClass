package DTO;

public class ENROLMENTDTO {
	private String id;
	private int class_id;
	private String state;
	
	
	public ENROLMENTDTO(String id, int class_id, String state) {
		
		this.id = id;
		this.class_id = class_id;
		this.state = state;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getClass_id() {
		return class_id;
	}


	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
}
