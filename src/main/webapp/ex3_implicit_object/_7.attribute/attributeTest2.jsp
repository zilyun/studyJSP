<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");

	session.setAttribute("email", email);
	session.setAttribute("address", address);
	session.setAttribute("tel", tel);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영역과 속성 테스트</title>
<link href="../../css/ch03-1.css" rel="stylesheet" type="text/css">
<style>
div {
	margin: 0 auto;
}
</style>
</head>
<body>
	<div>영역과 속성 테스트</div>
	<div><%=application.getAttribute("name")%>님의 정보가 모두 저장되었습니다.</div>
	<div><a href="./attributeTest3.jsp">확인하러 가기</a></div>
</body>
</html>