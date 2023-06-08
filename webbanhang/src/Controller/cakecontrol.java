package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;
import Model.Comment;
import Model.product;
@WebServlet(urlPatterns= {"/cakect"})	
public class cakecontrol extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		DAO dao=new DAO();
		List<product> list=dao.getallproduct();
		req.setAttribute("listcake", list);
		List<Comment> list1=dao.getallcomment();
		req.setAttribute("listcomment", list1);
		req.getRequestDispatcher("cake.jsp").forward(req, resp);
	}
}
