<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 영역</title>
<style> .m1 {color: skyblue; font-size:100px; text-align:center;}</style>
</head>
<body>
	<h2 class=m1>페이지 이동 후 session 영역의 속성 읽기</h2>
	<% 
	ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
	for(String str : lists)
		out.print(str + "<br />");
	%>
</body>
</html>