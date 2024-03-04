<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>redirect.jsp</title>
<style>
</style>
</head>
<body>
	request 속성 food 값 : <%= request.getAttribute("food") %>
	session 속성 food 값 : <%= session.getAttribute("food") %>	
</body>
</html>