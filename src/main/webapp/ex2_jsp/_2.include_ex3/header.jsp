<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
<div>
<%  String id = (String)session.getAttribute("id");
	if(id!=null && !id.equals("")) {
%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-end">
  <!-- Brand -->
  <a class="navbar-brand" href="#">세션O</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="logout"><%=id %>님이 로그인 되었습니다.(로그아웃)</a>
    </li>
  </ul>
</nav>
<br>
<%
	} else {
%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-end">
  <!-- Brand -->
  <a class="navbar-brand" href="#">세션X</a>

  <!-- Links -->
  <ul class="navbar-nav">
     <li class="nav-item">
      <a class="nav-link" href="login.jsp">로그인</a>
    </li>
  </ul>
</nav>
<br>
<%
	}
%>
</div>
</header>