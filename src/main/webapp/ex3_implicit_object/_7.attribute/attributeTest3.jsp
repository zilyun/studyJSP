<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>영역과 속성 테스트</title>
<link href="../../css/ch03-1.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
div {
	margin: 0 auto;
}
</style>
</head>
<body>
	<div>
		<h1>영역과 속성 테스트</h1>
	</div>
	<div class="container">
		<h2>Application 영역에 저장된 내용들</h2>
		<table class="table table-bordered table-hover">
			<tr>
				<td>이름</td>
				<td><%=application.getAttribute("id")%></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><%=application.getAttribute("name")%></td>
			</tr>
		</table>
	</div>
	<div class="container">
		<h2>Session 영역에 저장된 내용들</h2>
		<table class="table table-bordered table-hover">
			<tr>
				<td>address</td>
				<td><%=session.getAttribute("address")%></td>
			</tr>
			<tr>
				<td>tel</td>
				<td><%=session.getAttribute("tel")%></td>
			</tr>
			<tr>
				<td>email</td>
				<td><%=session.getAttribute("email")%></td>
			</tr>
		</table>
	</div>
</body>
</html>