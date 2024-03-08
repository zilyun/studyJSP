<%@page import="ex8.Dept"%>
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
	<div class="container">
		<%
			ArrayList<Dept> list = (ArrayList<Dept>) request.getAttribute("list");
		
			if (!list.isEmpty()) {
		%>
		<table class="table">
			<thead>
				<tr>
					<th>DEPTNO</th>
					<th>DNAME</th>
					<th>LOC</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (Dept dept : list) {
				%>
				<tr>
					<td><%=dept.getDeptno()%></td>
					<td><%=dept.getDname()%></td>
					<td><%=dept.getLoc()%></td>
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
</body>
</html>