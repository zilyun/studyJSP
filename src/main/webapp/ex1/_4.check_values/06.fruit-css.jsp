<!-- https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_custom_checkbox -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	margin: 30px 30px;
}
/* The container */
.container {
	display: block;
	position: relative;
	padding-left: 35px;
	margin-bottom: 12px;
	cursor: pointer;
	font-size: 22px;
	user-select: none;
	/*ê¸ì¨ ìì­ì ë§ì°ì¤ë¡ ëëê·¸ í  ì ìì´ì  */
}

/* Hide the browser's default checkbox */
.container input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
}

/* Create a custom checkbox */
.checkmark {
	position: absolute;
	top: 0;
	left: 0;
	height: 25px;
	width: 25px;
	background-color: #eee;
	border-radius: 5px
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
	background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
	background-color: #2196F3;
	box-shadow: 0 0 0 0.2rem rgba(128, 189, 255, 0.5);
}

.container input:checked:not(:focus) ~ .checkmark {
	box-shadow: none
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
	display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
	left: 9px;
	top: 5px;
	width: 5px;
	height: 10px;
	border: solid white;
	border-width: 0 3px 3px 0;
	transform: rotate(45deg);
}

input[type="submit"] {
	width: 10em;
	background-color: #46ac46;
	height: 3em;
	border: none;
	border-radius: 3px;
	color: white;
	font-weight: bold
}

input[type="submit"]:hover {
	opacity: 0.8;
	cursor: pointer;
	font-weight: bold;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {
		$("form").submit(function() {
			const seleted = $("input:checkbox:checked").length;
			if (seleted < 1) {
				alert("보냈습니다!");
				return false;
			}
		});
	})
</script>
</head>
<body>

	<h1>과일 선택</h1>
	<form action="choiceFruit" method="get">
		<label class="container"> <input type="checkbox" name="fruit"
			value="apple.png">사과<span class="checkmark"></span>
		</label> <label class="container"> <input type="checkbox" name="fruit"
			value="grape.png">포도<span class="checkmark"></span>
		</label> <label class="container"> <input type="checkbox" name="fruit"
			value="strawberry.png">딸기<span class="checkmark"></span>
		</label> <label class="container"> <input type="checkbox" name="fruit"
			value="water-melon.png">멜론<span class="checkmark"></span>
		</label> <input type="submit" value="전송">
	</form>
</body>
</html>
