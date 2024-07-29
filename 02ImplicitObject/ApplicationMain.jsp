<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - application</title>
<style>.m1{color : hotpink; font-size: 50px; font-weight: bold;}</style>
</head>
<body>
	<h2 style="color:pink; fontSize:20px">web.xml에 설정한 내용 읽어오기</h2>
	초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %>
	
	<h2 style="color:orange; fontSize:20px">서버의 물리적 경로 읽어오기</h2>
	application 내장 객체 : <%= application.getRealPath("02/ImplicitObject") %>
	
	<h2 style="color:skyblue; fontSize:20px">선언부에서 application 내장 객체 사용하기</h2>
	<%!
	public String useImplicitObject() {
		return this.getServletContext().getRealPath("02/ImplicitObject");
	}
	public String useImplicitObject(ServletContext app){
		return app.getRealPath("02/ImplicitObject");
	}%>
	<ul>
		<li style="color:purple; fontSize:20px;"> this 사용 : <%= useImplicitObject() %></li>
		<li style="color:brown; fontSize:20px;"> 내장 객체를 인수로 전달 : <%= useImplicitObject(application) %></li>
	</ul>
	<%
	out.print("</br>");
	out.print("<div class='m1'>CSS 클래스를 적용했답니다</div>"); %>
</body>
</html>