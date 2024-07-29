<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gugudan2</title>
<style>
	.grid-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
	grid-gap: 30px;
	}
	.grid-item {
	color:hotpink; font-size:20px; font-weight:bold;
	list-style-type: none;
	}
</style>
</head>
<body>
	<h1 style="color:Skyblue; font-size:30px; font-weight:bold;">구구단 출력</h1>
	<% String danParam = request.getParameter("dan");%> 
	<%
	if((danParam != null && !danParam.isEmpty())){
		int dan = Integer.parseInt(danParam); %>
	
	<h2 style="color:yellowgreen; font-size:20px; font-weight:bold;"><%= dan%>단</h2>
	<ul class="grid-container">
	<%for(int j = dan; j <= 9; j++) {%>
	<li class="grid-item">
		<%for(int i = 1; i <= 9 ; i++) { %>
	<%=j %> * <%=i %> = <%=j * i %><br/>
<%-- 	<%for(int i = 1; i <= 9 ; i++) { %> --%>
<%-- 	<li class="grid-item"><%=j %> * <%=i %> = <%=j * i %><br/></li> --%>
	<% } %></li>
	<%}%>
	</ul>
	<% } else { %>
	<p style="color:yellowgreen; font-size:20px; font-weight:bold;"> 구구단을 출력할 값을 입력하세요. ex) /gugudan1.jsp?dan=2</p>
	<%}%>
</body>
</html>