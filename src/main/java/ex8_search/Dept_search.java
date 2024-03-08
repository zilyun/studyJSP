package ex8_search;

import java.io.IOException;

import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import ex8.Emp;

// http://localhost:8088/JSP/dept_search
@WebServlet("/search")
public class Dept_search extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int deptno = Integer.parseInt(request.getParameter("deptno"));
		
		DAO dao = new DAO();
		ArrayList<Emp> list = dao.select(deptno);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_2.list/list.jsp"); // View
		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	}
}
