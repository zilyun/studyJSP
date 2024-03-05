package ex2._jsp;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ex2_jsp/_2.include_ex3/loginProcess")
public class LoginProcess extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public LoginProcess() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		session.setAttribute("id", id);
		
		response.sendRedirect("template.jsp");
	}
}
