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
@WebServlet(urlPatterns= {"/commenttc4"})	

public class CommentControl4 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		try {		
			String email=req.getParameter("email");
			String comment=req.getParameter("comment");
			if (email.equals("")||comment.equals("")) {
				req.setAttribute("mess", "Không được để trống");	
				req.getRequestDispatcher("product.jsp").forward(req, resp);
			}
			else {			
					DAO dao=new DAO();
					dao.comment(email, comment);
					req.getRequestDispatcher("product.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
