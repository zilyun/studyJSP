<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�׽�Ʈ</title>
<link href="../../css/ch03-1.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form action="loginProcess" method="post">
		<p>�α���</p>
		<hr>
		<label>�̸�</label> <input type="text" name=id id=id
			placeholder="Enter ID" required="required"> <label>Passwd</label>
		<input type="password" name=passwd id=passwd
			placeholder="Enter Passwd" required="required">
		<div class="clearfix">
			<button type="submit" class="submitbtn">Submit</button>
			<button type="reset" class="cancelbtn">Cancel</button>
		</div>

	</form>
</body>
</html>