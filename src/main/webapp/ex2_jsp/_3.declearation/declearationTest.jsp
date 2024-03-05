<%--
		* JSP 스크립트요소 - JSP 페이지에서 자바코드를 사용할 수 있는 영역을 의미합니다.
		* 스크립트 요소의 종류 - 선언문 (<%! %>), 스크립트릿(<% %>), 표현식(<%= %>)
		
		1. 선언문(Declearations)
			(1) JSP페이지에서 자바 코드의 멤버 변수(필드)와 메서드를 선언하기 위해 사용됩니다.
			(2) 선언문을 사용해 선언된 변수는 JSP 파일이 웹 컨테이너에 의해 컴파일 될 때 
				멤버 변수로 인식되기 때문에 JSP 페이지의 어느 위치에서도 해당 변수를 참조하는 것이 가능합니다.
			C:\Users\jhta\Desktop\01.Study\03.Eclipse\workspace\.metadata\.plugins\org.eclipse.wst.server.core
			\tmp0\work\Catalina\localhost\JSP\org\apache\jsp\ex2_005fjsp\_005f3_declearation
			폴더에 declearationTest_jsp.java와 declearationTest_jsp.class 파일이 있습니다.
		
		2. 내장 객체에 선언되어 사용중인 변수들을 수정해서는 안됩니다.
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h1><%=getStr()%></h1>
<%!
	private String getStr() {
		str += " 테스트입니다.";
		return str;
	}
	private String str="선언문 ";
%>