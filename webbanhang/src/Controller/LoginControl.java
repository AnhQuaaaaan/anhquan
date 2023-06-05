package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DAO;
import Model.Account;
@WebServlet(urlPatterns= {"/logintc"})	
public class LoginControl extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		try {
			String email=req.getParameter("email");
			String pass=req.getParameter("pass");
			DAO loginDAO= new DAO();
			Account a= loginDAO.CheckLogin(email, pass);
			if (a==null) {
				req.setAttribute("mess", "Sai tài khoản hoặc mật khẩu");
				req.getRequestDispatcher("login").forward(req, resp);	
			}
			else {
				HttpSession session=req.getSession();
				session.setAttribute("acc", a);
				req.getRequestDispatcher("index.jsp").forward(req, resp);
			}
			
		} catch (Exception e) {
		}
	}
}
