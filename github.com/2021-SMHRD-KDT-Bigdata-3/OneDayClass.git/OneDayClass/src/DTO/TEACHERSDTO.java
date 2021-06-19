package DTO;
 
public class TEACHERSDTO {
	private String teacher_id;
	private String teacher_pw;
	private String teacher_name;
	private String tel;
	
	
	public TEACHERSDTO(String teacher_id, String teacher_pw, String teacher_name, String tel) {
	
		this.teacher_id = teacher_id;
		this.teacher_pw = teacher_pw;
		this.teacher_name = teacher_name;
		this.tel = tel;
	}
 //정주  바보 >_-
  
	public String getTeacher_id() { 
		return teacher_id;
	}


	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}


	public String getTeacher_pw() {
		return teacher_pw;
	}


	public void setTeacher_pw(String teacher_pw) {
		this.teacher_pw = teacher_pw;
	}


	public String getTeacher_name() {
		return teacher_name;
	}


	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
	
	
	
}
	
	
