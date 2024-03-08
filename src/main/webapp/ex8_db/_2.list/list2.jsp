<%@page import="ex8.Emp"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ArrayList이용합니다.</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.container {
	width: 500px;
	margin-top: 3em;
}

table, h4 {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container mt-3">
		<%
		ArrayList<Emp> list = (ArrayList<Emp>) request.getAttribute("list");

		if (!list.isEmpty()) {
		%>
		<h2>직원 관리</h2>
		<p>직원 정보를 입력하세요.</p>
		<input class="form-control" id="myInput" type="text"
			placeholder="Search.."> <br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>직원번호</th>
					<th>직원이름</th>
					<th>직업</th>
					<th>담당자</th>
					<th>입사일</th>
					<th>급여</th>
					<th>COMM</th>
					<th>부서번호</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<%
				for (Emp emp : list) {
				%>
				<tr>
					<td><%=emp.getEname()%></td>
					<td><%=emp.getEmpno()%></td>
					<td><%=emp.getJob()%></td>
					<td><%=emp.getMgr()%></td>
					<td><%=emp.getHiredate()%></td>
					<td><%=emp.getSal()%></td>
					<td><%=emp.getComm()%></td>
					<td><%=emp.getDeptno()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<%
		} else {
			out.print("<h4>조회된 데이터가 없습니다.</h4>");
		}
		%>
	</div>
<script>
	$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#myTable tr").filter(function() {
		    	console.log($(this).text().toLowerCase().indexOf(value)> -1)
		    	
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
</script>
	
</body>
</html>

