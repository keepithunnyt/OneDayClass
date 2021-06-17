package DTO;

public class NOTICEDTO {
	private String n_title;
	private String content;
	
	public NOTICEDTO(String n_title, String content) {
		
		this.n_title = n_title;
		this.content = content;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	
}
