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
		String check_value = request.getParameter("remember");

		// check_value != null 문장이 없다면 체크박스를 체크하지 않은 경우 check_value.equlas("store") 문장에서 오류
		//if ("store".equals(remember)) {
			
		// "아이디 기억하기"를 체크한 경우
		if (check_value != null && check_value.equals("store")) {
			Cookie cookie = new Cookie("id", id); 
			cookie.setMaxAge(60 * 60 * 24); // 쿠키의 유효시간을 24시간으로 설정합니다.
			response.addCookie(cookie); // 생성한 쿠키를 클라이언트로 전송합니다.
		} else {
			Cookie cookie = new Cookie("id", null);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
	%>
	<script>
		location.href = 'login2.jsp';
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