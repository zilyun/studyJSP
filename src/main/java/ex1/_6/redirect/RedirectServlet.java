package ex1._6.redirect;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_6.redirect/RedirectServlet")
public class RedirectServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public RedirectServlet() {
		super();
	}
	
	/*
	 * 페이지 이동
	 * - Redirect 방식 : 이동될 때 브러우저의 주소  표시줄의 URL이 변경되므로 요청이 바뀌게 됩니다. 
	 * - 이동한 jsp 페이지에서는 서블릿에서 request 영역의 속성 값에 접근할 수 없습니다.
	 * */

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("요청방식 : " + req.getMethod());
		System.out.println("파라미터 fodd의 값 : " + req.getParameter("food"));
		
		resp.sendRedirect("redirect.jsp");
	}
}
