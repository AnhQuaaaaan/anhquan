package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DAO;
import Model.Account;
import Model.Cart;
import Model.product;

@WebServlet(urlPatterns = "/addtocart")
public class addtoCart extends HttpServlet{
	
	private static final long serialVersionUID = 4476873335051022996L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  resp.setContentType("text/html;charset=UTF-8");
		String product_id=req.getParameter("product_id");
	   HttpSession session=req.getSession();
	   DAO daocake=new DAO();
	   product cake=daocake.getproductbyID(product_id);
	  
	 
	   int quantity=1;
	   Account acc=(Account) session.getAttribute("acc");
	   Cart cart=daocake.getCartbyName(cake.getName());
	   if(cart==null) {
		   quantity=1;
	   daocake.addtoCart(cake.getName(), cake.getImg(), quantity,cake.getPrice()*quantity, acc.getemail());
	   }
	   else {
		   quantity=cart.getQuantity();
		   quantity=quantity+1;
		   System.out.println(quantity);
		   daocake.updateCart(cake.getName(), quantity, cake.getPrice()*(quantity));
	   }
	   resp.sendRedirect("cakect");
	}
}
