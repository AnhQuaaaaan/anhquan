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

@WebServlet(urlPatterns= {"/dltcmt"})	

public class deletecmt extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String pcmt=req.getParameter("pcmt");
		HttpSession session = req.getSession();
		Account acc = (Account) session.getAttribute("acc");
		DAO dao=new DAO();
		dao.deleteCmt(acc.getemail(), pcmt);
		req.getRequestDispatcher("cakect").forward(req, resp);
	}
}
