<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../css/ch03-01" rel="stylesheet" type="text/css">
<meta charset="EUC-KR">
<title>�α�����</title>
</head>
<body>
	<form action="LifeCycleTest" method="get">
		<label>�̸�</label>
		<input type="text" placeholder="Enter ID" name="id" id="id" required="required">
		<label>��й�ȣ</label>
		<input type="text" placeholder="Enter PASS" name="passwd" id="passwd" required="required">
		<button type="submit">Submit</button>
		<button type="reset">Cancel</button>
	</form>
</body>
</html>