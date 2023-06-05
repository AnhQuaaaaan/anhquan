package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;
@WebServlet(urlPatterns= {"/delete"})	
public class deleteprd extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("utf-8");
	resp.setCharacterEncoding("utf-8");
	String pid=req.getParameter("pid");
	DAO dao=new DAO();
	int i=dao.deleteproduct(pid);
	resp.sendRedirect("fixct");
	}
}
