<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gugudan1</title>
</head>
<body>
	<h1 style="color:Skyblue; font-size:30px; font-weight:bold;">구구단 출력</h1>
	<% String danParam = request.getParameter("dan");%> 
	<%
	if((danParam != null && !danParam.isEmpty())){
		int dan = Integer.parseInt(danParam); %>

	<h2 style="color:yellowgreen; font-size:20px; font-weight:bold;"><%= dan%>단</h2>
	<ul>
	<%for(int i = 1; i <= 9 ; i++) { %>
	<li style="color:hotpink; font-size:20px; font-weight:bold;"><%=dan %> * <%=i %> = <%=dan * i %></li>
	<% } %>
	</ul>
	<% } else { %>
	<p style="color:yellowgreen; font-size:20px; font-weight:bold;"> 구구단을 출력할 값을 입력하세요. ex) /gugudan1.jsp?dan=2</p>
	<%}%>
	
</body>
</html>