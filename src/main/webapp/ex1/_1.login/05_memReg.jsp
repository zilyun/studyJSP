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
	<h1>ȸ������</h1>
	<hr>
	<b>ȸ����</b>
	<input type="text" name="name" placeholder="Enter name" required="required">
	
	<b>�ּ�</b>
	<input type="text" name="addr" placeholder="Enter address" required="required">
	
	<b>��ȭ��ȣ</b>
	<input type="text" name="tel" placeholder="Enter tel" 
						pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required="required">
	
	<b>���</b>
	<input type="text" name="hobby" placeholder="Enter hobby" required="required">
	
	<div class="clearfix">
			<button type="submit" class="submitbtn">����</button>
			<button type="reset" class="cancelbtn">���</button>
		</div>
</form>
</html>