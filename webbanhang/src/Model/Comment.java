package Model;

public class Comment {
	private String email;
	private String comment;
	public Comment() {
		// TODO Auto-generated constructor stub
	}
	public Comment(String email, String comment) {
		this.email=email;
		this.comment=comment;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getcomment() {
		return comment;
	}
	public void setcomment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return email+" "+comment;
	}
}
