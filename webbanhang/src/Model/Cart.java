package Model;

public class Cart {
	int id;
	String name;
	String img;
	int quantity;
	double totalprice;
	String email;
	public Cart(int id, String name, String img, int quantity, double totalprice, String email) {
	
		this.id = id;
		this.name = name;
		this.img = img;
		this.quantity = quantity;
		this.totalprice = totalprice;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", name=" + name + ", img=" + img + ", quantity=" + quantity + ", totalprice="
				+ totalprice + ", email=" + email + "]";
	}
}
	
