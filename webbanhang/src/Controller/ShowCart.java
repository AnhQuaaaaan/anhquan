package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DAO;
import Model.Account;
import Model.Cart;
@WebServlet(urlPatterns = "/showcart")
public class ShowCart extends HttpServlet{


	private static final long serialVersionUID = 7046343714984020752L;
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	DAO daocart=new DAO();
	HttpSession session=req.getSession();
	Account acc=(Account) session.getAttribute("acc");
	List<Cart> listcart=daocart.getallCartBYEmail(acc.getemail());
	req.setAttribute("listcartt", listcart);
	req.getRequestDispatcher("cart.jsp").forward(req, resp);
	
}
}
