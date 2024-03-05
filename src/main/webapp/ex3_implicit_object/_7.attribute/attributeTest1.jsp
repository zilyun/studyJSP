<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	application.setAttribute("id", id);
	application.setAttribute("name", name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영역과 속성 테스트</title>
<link href="../../css/ch03-1.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form action="./attributeTest2.jsp" method="get">
		<p>영역과 속성 테스트</p>
		<hr>
		<div><%=application.getAttribute("name") %>님 반갑습니다.</div>
		<div>
			 <%=application.getAttribute("name") %>님의 아이디는 
			 <%=application.getAttribute("id") %>입니다.
		</div>
		<hr>
		<div>Application 영역에 저장할 내용들</div>
		<label>e-mail 주소</label> 
		<input type="text" name=email id=email
			placeholder="Enter Email" required="required"> 
		<label>집주소</label>
		<input type="text" name=address id=address
			placeholder="Enter Address" required="required">
		<label>전화번호</label>
		<input type="text" name=tel id=tel
			placeholder="Enter Tel" required="required">
		<button type="submit">Submit</button>
		<button type="reset">Cancel</button>
	</form>
</body>
</html>