<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 기억하기</title>
</head>
<body>
	<%
	// web.xml에 설정한 값을 가져옵니다.
	String xmlID = application.getInitParameter("id");
	String xmlPASS = application.getInitParameter("password");

	// 입력한 아이디와 비밀번호를 가져옵니다. 
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	// web.xml에서 가져온 값과 입력한 값을 비교합니다. 
	if (xmlID.equals(id) && xmlPASS.equals(passwd)) {
		session.setAttribute("id", id);
		String remember = request.getParameter("remember");

		if ("store".equals(remember)) {
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60 * 60 * 24);
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("id", null);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
	%>
	<script>
		location.href = 'login.jsp';
	</script>
	<%
	} else if (xmlID.equals(id)) {
	%>
	<script>
		alert('비밀번호를 확인하세요.');
		history.back();
	</script>
	<%
	} else {
	%>
	<script>
		alert('아이디를 확인하세요.');
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>