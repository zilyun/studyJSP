<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영역과 속성 테스트</title>
<link href="../../css/ch03-1.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form action="./attributeTest1.jsp" method="get">
		<p>영역과 속성 테스트</p>
		<div>Application 영역에 저장할 내용들</div>
		<hr>
		<label>이름</label> 
		<input type="text" name=id id=id
			placeholder="Enter ID" required="required"> 
		<label>아이디</label>
		<input type="text" name=name id=name
			placeholder="Enter Name" required="required">
		<button type="submit">Submit</button>
		<button type="reset">Cancel</button>
	</form>
</body>
</html>