package ex1._8.context;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
/*
 * 실행 방법
 * 1. 크롬에서 실행
 * 	 http://localhost:8088/JSP/ex1/_9.context/input.jsp
 * 2. 크롬을 제외한 다른 브라우저에서 실행 
 * 	 http://localhost:8088/JSP/ex1/_9.context/scope.jsp
 * */
@WebServlet("/ex1/_8.context/context")
public class ContextServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public ContextServlet() {
		super();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String value = request.getParameter("food");
		request.setAttribute("food", value); // request 객체에 저장합니다. 
		
		// request.getSession() : 세션 객체를 얻어옵니다.
		HttpSession session = request.getSession();
		session.setAttribute("food", value); // session 객체에 저장합니다.
		
		/*
		 * 웹 애플리케이션이 서비스되고 있는 동안 유지하는 것을 의미합니다.
		 * 생명주기가 웹 애플리케이션과 같은 객체는 ServletContext 입니다.
		 * */
		ServletContext sc = request.getSession().getServletContext();
		sc.setAttribute("food", value);
		
		
		response.sendRedirect("scope.jsp");
	}
}
