<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>memReg.html</title>
<link href="../../css/ch03-1.css" type="text/css" rel="stylesheet">
</head>
<body>
<form action="memReg" method="get">
	<h1>회원가입</h1>
	<hr>
	<b>회원명</b>
	<input type="text" name="name" placeholder="Enter name" required="required">
	
	<b>주소</b>
	<input type="text" name="addr" placeholder="Enter address" required="required">
	
	<b>전화번호</b>
	<input type="text" name="tel" placeholder="Enter tel" 
						pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required="required">
	
	<b>취미</b>
	<input type="text" name="hobby" placeholder="Enter hobby" required="required">
	
	<div class="clearfix">
			<button type="submit" class="submitbtn">가입</button>
			<button type="reset" class="cancelbtn">취소</button>
		</div>
</form>
</html>