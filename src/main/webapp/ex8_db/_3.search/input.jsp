<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서번호 입력</title>
<link href="<%=request.getContextPath()%>/css/ch03-1.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form action='<%=request.getContextPath()%>/search'>
		<b>검색할 부서 번호를 입력하세요.</b>
		<input type='text' name='deptno' required pattern="[0-9]{2}">
		<input type='submit' value='전송'>
	</form>
</body>
</html>