<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 테스트</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
	margin: 0px
}

span {
	background: yellow
}

footer {
	position: fixed;
	bottom: 0px;
	width: 100%
}

body>footer>h3 {
	background: lightgray;
	text-align: center;
	margin: 0px;
	height: 3rem;
	line-height: 3rem
}

header div {
	padding: 1%;
	text-align: right;
	background-color: green;
	color: white
}

a {
	text-decoration: none;
	color: white
}

a:hover {
	font-weight: bold
}
</style>

</head>
<body>
	<%@ include file="header.jsp"%>
	<h1>template.jsp 파일입니다.</h1>
	<span>header.jsp의 id 값입니다. : <%=id%></span>
	<%@ include file="footer.jsp"%>
</body>
</html>