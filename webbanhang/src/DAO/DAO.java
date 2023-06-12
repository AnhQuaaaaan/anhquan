package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Controller.ConnectSQL;
import Model.Account;
import Model.Cart;
import Model.product;
import Model.Comment;

public class DAO {
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public DAO() {
		// TODO Auto-generated constructor stub
	}

	public Account CheckLogin(String email, String pass) {
		String query = "select * from Account where email=? and pass=?";
		try {
			con = ConnectSQL.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
				Account a = new Account(rs.getString(1), rs.getString(2),rs.getInt(3));
				return a;
			}
		} catch (Exception e) {
		}
		return null;
	}

	public Account CheckUser(String email) {
		String query = "select * from Account where email=?";
		try {
			con = ConnectSQL.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getString(1), rs.getString(2),rs.getInt(3));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public void signup(String email, String pass) {
		String query = "insert Account (email,pass,isadmin) values (?,?,0)";
		try {
			con = ConnectSQL.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public List<product> getallproduct() {
		List<product> list = new ArrayList<>();
		try {
			con = ConnectSQL.getConnection();
			String query = "select * from product";
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<Cart> getallCartBYEmail(String email) {
		List<Cart> list = new ArrayList<>();
		try {
			con = ConnectSQL.getConnection();
			String query = "select * from cart where email=?";
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Cart(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getInt(4),
						rs.getDouble(5), 
						rs.getString(6)
						));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public int addproduct(String id, String name, String img, String price) {
		int i = -1;
		try {
			con = ConnectSQL.getConnection();
			String query="select * from product where id=?";
			ps=con.prepareStatement(query);
			ps.setString(1, id);
			rs=ps.executeQuery();
			if (rs.next()){
				i=-1;
			}
			else {
				try {
					con = ConnectSQL.getConnection();
					String query1 = "insert product(id,name,img,price) values (?,?,?,?)";
					ps = con.prepareStatement(query1);
					ps.setString(1, id);
					ps.setString(2, name);
					ps.setString(3, img);
					ps.setString(4, price);
					i = ps.executeUpdate();
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return i;
	}

	public int updateproduct(String id, String name, String img, String price) {
		int i = -1;
		try {
			con = ConnectSQL.getConnection();
			String query1 = "update product set name=?,img=?,price=? where id=?";
			ps = con.prepareStatement(query1);
			ps.setString(1, name);
			ps.setString(2, img);
			ps.setString(3, price);
			ps.setString(4, id);
			i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return i;
	}

	public int deleteproduct(String pid) {
		int i = -1;
		try {
			con = ConnectSQL.getConnection();
			String query = "delete product where id=?";
			ps = con.prepareStatement(query);
			ps.setString(1, pid);
			i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return i;
	}

	public product getproductbyID(String id) {
		try {
			con = ConnectSQL.getConnection();
			String query = "select * from product where id=?";
			ps = con.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				product prd = new product(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
						Double.parseDouble(rs.getString(4)));
				return prd;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	public product getproductbyname(String name) {
		try {
			con = ConnectSQL.getConnection();
			String query = "select * from product where name=?";
			ps = con.prepareStatement(query);
			ps.setString(1, name);
			rs = ps.executeQuery();
			if (rs.next()) {
				product prd = new product(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
						Double.parseDouble(rs.getString(4)));
				return prd;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	public int updateCart( String name, int quantity,double totalprice,String email) {
		int i = -1;
		try {
			con = ConnectSQL.getConnection();
			String query1 = "update Cart set quantity=?,totalprice=? where name =? and email=?";
			ps = con.prepareStatement(query1);
			ps.setString(3, name);
			ps.setString(4, email);
			ps.setInt(1, quantity);
		    ps.setDouble(2,totalprice);
		 ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return i;
	}
	public Cart getCartbyName(String name,String email) {
		try {
			con = ConnectSQL.getConnection();
			String query = "select * from cart where name=? and email=?";
			ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			rs = ps.executeQuery();
			if (rs.next()) {
				Cart c = new Cart(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6));
				return c;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	public Cart getCartbyEmail(String email , String name) {
		try {
			con = ConnectSQL.getConnection();
			String query = "select * from cart where email=? and name=?";
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, name);
			rs = ps.executeQuery();
			if (rs.next()) {
				Cart c = new Cart(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6));
				return c;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	public List<Cart> getALLCartbyEmail() {
		List<Cart> list=new ArrayList<>();
		String query = "select * from cart ";
		try {
			
			
		
			con = ConnectSQL.getConnection();
			ps = con.prepareStatement(query);
		
			rs = ps.executeQuery();
			if (rs.next()) {
				
				list.add(new Cart(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getInt(4),
						rs.getDouble(5), 
						rs.getString(6)
						)
			);
			}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public void addtoCart( String name, String img, int quantity, double totalprice, String email) {
		con = ConnectSQL.getConnection();
		String query = "INSERT [dbo].[cart]  ([name], [img], [quantity],[totalprice] ,[email]) VALUES (?,?,?,?,?)";
		try {
			ps = con.prepareStatement(query);
			
			ps.setString(1, name);
			ps.setString(2, img);
			ps.setInt(3, quantity);
			ps.setDouble(4, totalprice);
			ps.setString(5, email);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int deleteCart(String cart_id,String email) {
		int i = -1;
		try {
			con = ConnectSQL.getConnection();
			String query = "delete cart where name=? and email=?";
			ps = con.prepareStatement(query);
			ps.setString(1, cart_id);
			ps.setString(2, email);
			i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return i;
	}
	public void comment(String email, String comment) {
		String query = "insert Comment (Email,Comment) values (?,?)";
		try {
			con = ConnectSQL.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, comment);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public List<Comment> getallcomment() {
		List<Comment> list = new ArrayList<>();
		try {
			con = ConnectSQL.getConnection();
			String query = "select * from Comment";	
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Comment(rs.getString(1), rs.getString(2)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<product> getproductsearch(String name) {
		List<product> list = new ArrayList<>();
		try {
			con = ConnectSQL.getConnection();
			String query = "select * from product where name like ?";
			name = "%" + name+"%";
			ps = con.prepareStatement(query);
			ps.setString(1, name);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static void main(String[] args) {
		DAO dao=new DAO();
		System.out.println(dao.getproductsearch("a"));
	}
}
