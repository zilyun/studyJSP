package ex6_filedown;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

//   /JSP/fileUpload
@WebServlet("/fileUpload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String uploadPath= request.getSession().getServletContext().getRealPath("upload"); 
	    System.out.println("upload 경로 : " + uploadPath);
		
		int size = 10*1024*1024; //파일 최대 크기를 10MB로 지정합니다.
		String name="", subject="",  
			   systemName1="", systemName2="", 
			   origfileName1="", origfileName2="";
		
		try{
			/*업로드를 담당하는 부분입니다.
			  1. 첫 번째 인자(request) : 폼에서 가져온 값을 얻기 위해 request 객체를 전달해 줍니다.
			  2. 두 번째 인자(uploadPath) : 업로드될 파일의 위치 입니다.
			  3. 세 번째 인자(size) : 업로드 할 크기이며 지정 크기보다 크면 Exception 발생합니다.
			  4. 네 번째 인자("UTF-8") : 파일 이름이 한글인 경우 처리하는 부분입니다.
			  5. 다섯 번째 인자 : 똑같은 파일을 업로드 할 경우 중복되지 않도록 자동으로 파일이름을 변환해주는 기능을 합니다.
			  객체를 생성함과 동시에 파일이 업로드 됩니다. 
			*/
			MultipartRequest multi = new MultipartRequest(request,
														  uploadPath,
														  size, 
														  "UTF-8",
											              new DefaultFileRenamePolicy());
		    
			name=multi.getParameter("name");
			subject=multi.getParameter("subject");		
		
		    //name=fileName1의 input 에서 올린 파일의 시스템상의 파일명을 얻어옵니다.
		    //중복된 파일명의 경우 파일명 맨뒤에 숫자를 붙여 처리합니다.
			systemName1=multi.getFilesystemName("fileName1");

			//name=fileName1의 input 에서 업로드한 원본 파일명을 얻어 옵니다.
			origfileName1= multi.getOriginalFileName("fileName1");	
			
			systemName2=multi.getFilesystemName("fileName2");
			origfileName2= multi.getOriginalFileName("fileName2");
			
			request.setAttribute("name", name);
			request.setAttribute("subject", subject);
			request.setAttribute("systemName1", systemName1);
			request.setAttribute("systemName2", systemName2);
			request.setAttribute("origfileName1", origfileName1);
			request.setAttribute("origfileName2", origfileName2);
			request.setAttribute("uploadPath", uploadPath);
			request.getRequestDispatcher("/ex6_fileupload_download/_3.cos/ex/fileCheck.jsp")
			.forward(request, response);
			
//			response.setContentType("text/html;chartset=utf-8");
//			PrintWriter out = response.getWriter();
//			out.println("<table><cpation>파일 다운로드 폼</caption>");
//			out.println("<tr><td>작성자</td>");
//			out.println("<td>"+name+"</td></tr>");
//			out.println("<tr><td>제목</td><td>"+subject+"</td></tr>");
//			out.println("<tr><td>파일명1</td><td><a href="+uploadPath+"/"+origfileName1+">"+origfileName1+"<a/></td></tr>");
//			out.println("<tr><td>파일명2</td><td>"+origfileName2+"</td></tr>");
//			out.println("<tr><td>uploadPath</td><td>"+uploadPath+"</td></tr>");
//			out.println("</tbody></table>");
//			
//			out.close();
						
		  } catch (Exception e) {
			  e.printStackTrace();
			  System.out.print("에러 입니다.");
		  }
		
	}//doPost() end
}//class end