package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;
import Model.Account;

@WebServlet(urlPatterns= {"/signuptc"})	

public class SignupControl extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		try {		
			String email=req.getParameter("email");
			String pass=req.getParameter("pass");
			if (email.equals("")||pass.equals("")) {
				req.setAttribute("mess", "Không được để trống");
				req.getRequestDispatcher("sign.jsp").forward(req, resp);
			}
			else {			
					DAO dao=new DAO();
					Account a=dao.CheckUser(email);
					if(a==null) { 
						dao.signup(email, pass);
						req.getRequestDispatcher("log.jsp").forward(req, resp);
					}
					else {
						req.setAttribute("mess", "Tài khoản đã được sử dụng");
						req.getRequestDispatcher("sign.jsp").forward(req, resp);
					}
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
