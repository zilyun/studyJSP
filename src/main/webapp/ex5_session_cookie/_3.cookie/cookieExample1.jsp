<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 화면 설정 예제</title>
<style>
body {
	margin: 100px auto;
	text-align: center;
	width: 500px;
}

fieldset {
	width: 100%;
}

form {
	height: 3em;
	line-height: 3em;
}
</style>
<%-- src="/JSP/js/jquery-3.7.1.js" --%>
<%-- webapp = 프로젝트명 ContextPath Mapping --%>
<script src="<%=request.getContextPath()%>/js/jquery-3.7.1.js"></script>
<%
	String language = "korea";
	
	Cookie[] cookies = request.getCookies();
	
	String cookieName = "language";
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
	// body가 로딩되기 전에 스크립트가 있으면 ready 함수로 다 받아들인 이후 실행
	$(document).ready(function() {
		$("#<%=cookieValue%>").prop('checked', true);
	});
</script>
</head>
<body>
	<%
	if (language.equals(cookieValue)) {
	%>
	<h3>안녕하세요.이것은 쿠키 예제입니다.</h3>
	<%
	} else {
	%>
	<h3>Hello. This is Cookie example.</h3>
	<%
	}
	%>
	<form action="cookieExample2.jsp" method="post">
		<fieldset>
			<input type="radio" name="language" value="korea" id="korea">한국어
			페이지 보기 <input type="radio" name="language" value="english"
				id="english">영어 페이지 보기 <input type="submit" value="설정">
		</fieldset>
	</form>
</body>
</html>