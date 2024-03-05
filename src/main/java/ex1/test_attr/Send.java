package ex1.test_attr;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ex1/test_attr/send")
public class Send extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public Send() {
		super();
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gender = request.getParameter("gender");
		String gender_result = "남자";
		if(gender.equals("f"))
			gender_result = "여자";
		
		String[] hobby = request.getParameterValues("hobby");
		String hobby_result = "";
		for (int num = 0; num < hobby.length; num++) {
			hobby_result += hobby[num] + " ";
		}
		
		ServletContext sc = request.getSession().getServletContext();
		sc.setAttribute("id", request.getParameter("id"));
		sc.setAttribute("pass", request.getParameter("pass"));
		sc.setAttribute("jumin1", request.getParameter("jumin1") + "-" + request.getParameter("jumin2"));
		sc.setAttribute("email", request.getParameter("email") + "@" + request.getParameter("domain"));
		sc.setAttribute("gender", gender_result);
		sc.setAttribute("hobby", hobby_result);
		sc.setAttribute("post1", request.getParameter("post1"));
		sc.setAttribute("address", request.getParameter("address"));
		sc.setAttribute("intro", request.getParameter("intro"));
		
		//http://localhost:8088/JSP/view.jsp
		//RequestDispatcher dispatcher = request.getRequestDispatcher("view.jsp");
		
		//http://localhost:8088/JSP/send
		//http://localhost:8088/JSP/ex1/test_attr/view.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ex1/test_attr/view.jsp");
		
		dispatcher.forward(request, response);
		
	}
}
