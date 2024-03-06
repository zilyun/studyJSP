<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
	String language = request.getParameter("language");
	Cookie cookie = new Cookie("language", language);
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
%>
<script>
	alert('내가 만든 쿠키~~ 너를 위해 구웠지');
	location.href = 'cookieExample1.jsp';
</script>
</body>
</html>