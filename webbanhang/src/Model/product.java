package Model;

public class product {
	private int id;
	private String name,img;
	double price;
	public product() {
		// TODO Auto-generated constructor stub
	}
	public product(int id, String name, String img,double price) {
		this.id=id;
		this.name=name;
		this.img=img;
		this.price=price;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return id+" "+name+" "+img+" "+price;
	}
}
