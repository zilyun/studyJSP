<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.7.1.js"></script>
<style>
.container {
	margin: 3em auto;
	border: 1px solid lightgray;
	width: 500px
}
</style>
<%
Cookie[] cookies = request.getCookies();

String cookieName = "id";
String cookieValue = "";

if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals(cookieName)) {
			cookieName = cookies[i].getName();
			cookieValue = cookies[i].getValue();
		}
	}
}
%>
<script>
	$(function() {
		const id_val = '<%=cookieValue%>';
		if (id_val) { // 빈 문자열이 아니면
			$("#id").val(id_val).css('font-weight', "bold");
			$("#remember").prop('checked', true);
			$id.focus();
			return false;
		}

		$("form").submit(function() {
			const $id = $("#id");
			if (!$.trim($id.val())) {
				alert("아이디를 입력하세요.");
				$id.focus();
				return false;
			}

			const $pass = $("#pass");
			if (!$.trim($pass.val())) {
				alert("비밀번호를 입력하세요.");
				$pass.focus();
				return false;
			}
		});
	});
</script>
</head>
<body>
	<div class="container">
		<form action="login_ok2.jsp" method="post" class="border-light p-5">
			<p class="h4 mb-4 text-center">login</p>
			<div class="form-group">
				<%
				if (cookieValue == "") {
				%>
				<label for="id">id</label> <input type="text" class="form-control"
					id="id" placeholder="Enter id" name="id">
				<%
				} else {
				%>
				<label for="id">id</label> <input type="text" class="form-control"
					id="id" placeholder="Enter id" name="id" value="<%=cookieValue%>">
				<%
				}
				%>
			</div>
			<div class="form-group">
				<label for="pass">Password</label> <input type="password"
					class="form-control" id="pass" placeholder="Enter password"
					name="passwd">
			</div>

			<div class="form-group custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" id="remember"
					name="remember" value="store"> <label
					class="custom-control-label" for="remember">아이디 기억하기</label>
			</div>

			<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>

		</form>
	</div>
</body>
</html>