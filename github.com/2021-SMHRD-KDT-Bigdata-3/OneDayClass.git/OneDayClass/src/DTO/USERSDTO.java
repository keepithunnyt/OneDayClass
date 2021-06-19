package DTO;
 
public class USERSDTO {

	private String id;
	private String pw;
	private String name;
	private String address;
	private String recomm;
	
	
	public USERSDTO(String id, String pw, String name, String address, String recomm) {
		
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.address = address;
		this.recomm = recomm;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getRecomm() {
		return recomm;
	}


	public void setRecomm(String recomm) {
		this.recomm = recomm;
	}
	
	
	
	
	
}//Å¬·¡½º
