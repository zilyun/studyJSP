<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>테스트</title>
<link href="../../css/ch03-1.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form action="LifeCycleTest" method="get">
		<p>로그인</p>
		<hr>
		<label>이름</label>
		<input type="text" name=id id=id placeholder="Enter ID" required="required">
		<label>Passwd</label>
		<input type="password" name=passwd id=passwd placeholder="Enter Passwd" required="required">
		<button type="submit">Submit</button>
		<button type="reset">Cancel</button>
	</form>
</body>
</html>