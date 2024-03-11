package ex8_search_form;

import java.io.IOException;
import java.util.ArrayList;

import ex8.Emp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// http://localhost:8088/JSP/dept_search
@WebServlet("/field_select")
public class Emp_search_form extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int field = Integer.parseInt(request.getParameter("field"));
		String search_word = request.getParameter("search");
		
		DAO dao = new DAO();
		ArrayList<Emp> list = dao.selectForm(field, search_word);
		
		RequestDispatcher dispatcher = 
				// request.getRequestDispatcher("/ex8_db/_2.list/list2.jsp"); 
				request.getRequestDispatcher("/ex8_db/_2.list/list_el.jsp"); 
		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	}
}
