<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="../../css/ch05-1.css" type="text/css" rel="stylesheet">
</head>
<body>                                  
<table>                                   
<tr>
	<th>아이디</th><td><%= application.getAttribute("id") %></td>         
</tr>                                     
<tr>
	<th>비밀번호</th><td><%= application.getAttribute("pass") %></td>         
</tr> 
<tr>
	<th>주민번호</th><td><%= application.getAttribute("jumin1") %>-<%= application.getAttribute("jumin2") %></td>         
</tr> 
<tr>
	<th>이메일</th><td><%= application.getAttribute("email") %>@<%= application.getAttribute("domain") %></td>         
</tr> 
<tr>
	<th>성별</th><td><%= application.getAttribute("gender") %></td>         
</tr> 
<tr>
	<th>취미</th><td><%= application.getAttribute("hobby") %></td>         
</tr> 
<tr>
	<th>우편번호</th><td><%= application.getAttribute("post1") %></td>         
</tr>   
<tr>
	<th>주소</th><td><%= application.getAttribute("address") %></td>         
</tr>  
<tr>
	<th>자기소개</th><td><%= application.getAttribute("intro") %></td>         
</tr>                                 
</table>                                   
</body>                                    
</html> 