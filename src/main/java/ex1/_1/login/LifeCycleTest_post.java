package ex1._1.login;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_1.login/LifeCycleTest2")
public class LifeCycleTest_post extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// 응답하는 데이터 타입이 html 타입이고
		// charset=utf-8로 지정하면서 응답되는 데이터들의 한글 처리를 한 부분입니다.
		response.setContentType("text/html; charset=utf-8");

		// getParameter() 메서드 :
		// html 의 태그 속성 중에서 "name=id,name=passwd" 인 곳에서 입력한 후 전송되어 온
		// 파라미터 값을 반환해 주는 메서드 입니다.
		// 클라이언트에서 전송되어 오는 id 라는 이름의 파라미터 값과
		// passwd 라는 이름의 파라미터 값을 받는 부분입니다.
		// id=hiksy&passwd=1234
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		// 문자열 단위로 response 객체에 내용을 출력할 수 있는 출력 스트림을 생성한 부분입니다.
		PrintWriter out = response.getWriter();

		// getContextPath() : 웹 애플리케이션 경로 정보를 반환합니다.
		// URL에서 포트번호와 슬래시 다음이 웹 애플리케이션 이름을 의미하며 이 값을 추출합니다.
		out.println("웹 애플리케이션 경로 정보: " + request.getContextPath());

		// 응답에 id 변수 값과 passwd 변수 값을 출력하는 부분입니다.
		out.println("<br>" + "아이디=" + id + "<br>");
		out.println("비밀번호=" + passwd + "<br>");
		out.close();
		
	}
}
