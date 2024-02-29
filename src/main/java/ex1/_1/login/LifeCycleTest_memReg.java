package ex1._1.login;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_1.login/memReg")
public class LifeCycleTest_memReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		String hobby = request.getParameter("hobby");

		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"EUC-KR\">");
		out.println("<link href=\"../../css/ch05-1.css\" "
				  + "type=\"text/css\" rel=\"stylesheet\">");
		out.println("</head>");
		out.println("<body>");
		out.println("<table>");
		out.println("<tr><th>회원명</th><td>"+name+"</td>");
		out.println("</tr>");
		out.println("<tr><th>주소</th><td>"+addr+"</td>");
		out.println("</tr>");
		out.println("<tr><th>전화번호</th><td>"+tel+"</td>");
		out.println("</tr>");
		out.println("<tr><th>취미</th><td>"+hobby+"</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		out.close();
		
	}
}
