<!-- 1. 현재 페이지를 실행하면 errorNullPointer.jsp가 실행됩니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 출력</title>
</head>
<body>
<%
	response.sendRedirect("hoho.jsp");
%>
</body>
</html>