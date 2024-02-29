<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../css/ch03-01" rel="stylesheet" type="text/css">
<meta charset="EUC-KR">
<title>로그인폼</title>
</head>
<body>
	<form action="LifeCycleTest" method="get">
		<label>이름</label>
		<input type="text" placeholder="Enter ID" name="id" id="id" required="required">
		<label>비밀번호</label>
		<input type="text" placeholder="Enter PASS" name="passwd" id="passwd" required="required">
		<button type="submit">Submit</button>
		<button type="reset">Cancel</button>
	</form>
</body>
</html>