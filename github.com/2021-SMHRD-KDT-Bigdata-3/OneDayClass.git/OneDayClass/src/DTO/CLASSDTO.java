package DTO;

public class CLASSDTO {
	private int id;
	private String teacher_id;
	private String title;
	private String content;
	private String time;
	private String place;
	private String category;
	private String image;
	
	public CLASSDTO(int id, String teacher_id, String title, String content, String time, String place,
			String category, String image) {
		this.id = id;
		this.teacher_id = teacher_id;
		this.title = title;
		this.content = content;
		this.time = time;
		this.place = place;
		this.category = category;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
