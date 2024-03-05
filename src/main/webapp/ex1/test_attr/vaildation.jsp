<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>유효성 검사</title>
<!-- 디자인 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="../../css/NewFile.css" rel="stylesheet" type="text/css">
<script src="../../js/validate3.js"></script>

<!-- 우편 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
	<div class="container">
		<form method="post" action="send" name="myform" id="myform">
			<fieldset>
				<legend>유효성 검사</legend>
				<div>
					<label for="id">ID</label> <input type="text" size="10" name="id"
						id="id" placeholder="Enter ID"> <input type=button id="idcheck"
						value="ID중복검사">
				</div>

				<div>
					<label for="pass">비밀번호</label> <input type="password" name="pass"
						id="pass" placeholder="Enter Password">
				</div>
				<label for="jumin1">주민번호</label> <input type="text" size="6"
					maxLength="6" name="jumin1" id="jumin1" placeholder="주민번호 앞자리">
				<b> - </b> <input type="text" size="7" maxLength="7" name="jumin2"
					id="jumin2" placeholder="주민번호 뒷자리"> <label for="email">E-Mail</label>
				<input type="text" name="email" id="email"> <input
					type="text" name="domain" id="domain"> <b> @ </b> <select
					name=sel id=sel>
					<option value="">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
					<option value="gmail.com">gmail.com</option>
				</select> <label>성별</label>
				<div class="container2">
					<input type="radio" name="gender" value="m" id="gender1">남자
					<input type="radio" name="gender" value="f" id="gender2">여자
				</div>

				<label>취미</label>
				<div class="container2">
					<input type="checkbox" name="hobby" id="hobby1" value="공부">공부
					<input type="checkbox" name="hobby" id="hobby2" value="게임">게임
					<input type="checkbox" name="hobby" id="hobby3" value="운동">운동
					<input type="checkbox" name="hobby" id="hobby4" value="등산">등산
					<input type="checkbox" name="hobby" id="hobby5" value="낚시">낚시
				</div>

				<label for="post1">우편번호</label> <input type="text" maxLength="5"
					name="post1" id="post1"> <input type="button" value="우편검색"
					id="postcode" onclick="Postcode()"> <label for="address">주소</label>
				<input type="text" name="address" id="address"> <label
					for="intro">자기소개</label>
				<textarea rows="10" cols="75" name="intro" id="intro"></textarea>
				<div class="clearfix">
					<button type="submit" class="signupbtn" value="회원가입">회원가입</button>
					<button type="reset" class="cancelbtn" value="취소">취소</button>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>