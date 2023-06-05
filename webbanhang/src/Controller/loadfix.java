package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;
import Model.product;

@WebServlet(urlPatterns= {"/loadfixct"})
public class loadfix extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String pid=req.getParameter("pid");
		DAO dao=new DAO();
		product p=dao.getproductbyID(pid);
		req.setAttribute("detail", p);
		req.getRequestDispatcher("fixx1.jsp").forward(req, resp);
	}
}
