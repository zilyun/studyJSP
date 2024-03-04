package ex1.test_attr;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/*
 * 실행 방법
 * 1. 크롬에서 실행
 * 	 http://localhost:8088/JSP/ex1/_9.context/input.jsp
 * 2. 크롬을 제외한 다른 브라우저에서 실행 
 * 	 http://localhost:8088/JSP/ex1/_9.context/scope.jsp
 * */
@WebServlet("/ex1/test_attr/send.html")
public class ContextServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public ContextServlet() {
		super();
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * 웹 애플리케이션이 서비스되고 있는 동안 유지하는 것을 의미합니다.
		 * 생명주기가 웹 애플리케이션과 같은 객체는 ServletContext 입니다.
		 * */
		ServletContext sc = request.getSession().getServletContext();
		sc.setAttribute("id", request.getParameter("id"));
		sc.setAttribute("pass", request.getParameter("pass"));
		sc.setAttribute("jumin1", request.getParameter("jumin1"));
		sc.setAttribute("jumin2", request.getParameter("jumin2"));
		sc.setAttribute("email", request.getParameter("email"));
		sc.setAttribute("domain", request.getParameter("domain"));
		sc.setAttribute("gender", request.getParameter("gender"));
		sc.setAttribute("hobby", request.getParameter("hobby"));
		sc.setAttribute("post1", request.getParameter("post1"));
		sc.setAttribute("address", request.getParameter("address"));
		sc.setAttribute("intro", request.getParameter("intro"));
		
		response.sendRedirect("send.jsp");
		
		
	}
}
