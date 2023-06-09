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

@WebServlet(urlPatterns= {"/tangcart"})	
public class tangcart extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String product_name=req.getParameter("product_name");
		   HttpSession session=req.getSession();
		   DAO daocake=new DAO();
		   product cake=daocake.getproductbyname(product_name);		 
		   int quantity=1;
		   Account acc=(Account) session.getAttribute("acc");
		   Cart cart=daocake.getCartbyName(cake.getName(),acc.getemail());
		   if(cart==null) {
			   quantity=1;
		   daocake.addtoCart(cake.getName(), cake.getImg(), quantity,cake.getPrice()*quantity, acc.getemail());
		   }
		   else {
			   quantity=cart.getQuantity();
			   quantity=quantity+1;
			   daocake.updateCart(cake.getName(), quantity, cake.getPrice()*(quantity),acc.getemail());
		   }
		   resp.sendRedirect("showcart");
	}
}
