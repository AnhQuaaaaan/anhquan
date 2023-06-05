package Model;

public class Account {
	private String email;
	private String pass;
	private int isadmin;
	public Account() {
		// TODO Auto-generated constructor stub
	}
	public Account(String email, String pass, int isadmin) {
		this.email=email;
		this.pass=pass;
		this.isadmin=isadmin;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public int getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(int isadmin) {
		this.isadmin = isadmin;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return email+" "+pass+" "+isadmin;
	}
	
}
