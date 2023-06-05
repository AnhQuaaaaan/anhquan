package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;

@WebServlet(urlPatterns= {"/updateproduct"})

public class updateprd extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String img=req.getParameter("img");
		String price=req.getParameter("price");
		DAO dao=new DAO();
		if (id.equals("")||name.equals("")||img.equals("")||price.equals("")) {
			req.setAttribute("mess", "Không được để trống");
			req.getRequestDispatcher("fixx1.jsp").forward(req, resp);
		}
		else {	
			int k=dao.updateproduct(id, name, img, price);
			if (k!=-1) {
				req.setAttribute("mess", "Sửa Thành Công");
				req.getRequestDispatcher("fixx1.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("mess", "Sửa thất bại");
				req.getRequestDispatcher("fixx1.jsp").forward(req, resp);
			}
		}
	}
}
