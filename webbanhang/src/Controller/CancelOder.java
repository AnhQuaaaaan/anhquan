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

@WebServlet(urlPatterns = "/canceloder")
public class CancelOder extends HttpServlet{

	private static final long serialVersionUID = 4753285537087429505L;

@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   String cart_name=req.getParameter("cart_id");
	   HttpSession session = req.getSession();
	   Account acc = (Account) session.getAttribute("acc");
	   DAO dao=new DAO();
	   dao.deleteCart(cart_name,acc.getemail());
	  // req.getRequestDispatcher("cart.jsp").forward(req, resp);
	   resp.sendRedirect("showcart");
}
}
