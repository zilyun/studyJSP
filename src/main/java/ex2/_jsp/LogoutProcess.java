package ex2._jsp;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ex2_jsp/_2.include_ex3/logout")
public class LogoutProcess extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public LogoutProcess() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		session.invalidate(); // 세션의 모든 속성을 삭제합니다.
		
		// session.removeAttribute("id"); // 특정 속성에 대해 제거합니다.

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('로그아웃 되었습니다.');");
		out.print("location.href='template.jsp'");
		out.print("</script>");
		out.close();
		
	}
}
