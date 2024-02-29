package _1;
import java.io.IOException;

import jakarta.servlet.http.*;

/*
 	서블릿을 정의합니다.
 	- 서블릿 클래스를 정의하려면 반드시 HttpServlet 클래스를 상속받습니다.
 	- HttpServlet 클래스에 서블리에 관한 일반적인 기능이 정의되어 있기 때문에
 	HttpServlet 클래스를 상속 받은 자식 클래스 또한 서블릿 클래스가 됩니다.
 */
public class ServletTest extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// doGet 메소드를 정의하는 부분입니다.
	// 클라이언트에서 요청이 GET 방식으로 전송되어 오면 doGet 메서드가 자동 실행되게 됩니다.
	public void doGet(HttpServletRequest request, 
					HttpServletResponse response) throws IOException {
		
		// Java Servlet 에서 HTTP 응답 헤더의 Content-Type 값을 설정하는 코드입니다.
		// 응답데이터의 MIME 타입을 HTML  타입의 text로 지정합니다.
		response.setContentType("text/html");
		
		// 응답타입의 문자 인코딩 타입을 한글이 제대로 출력되도록 "utf-8"로 지정합니다.
		
	}
}
