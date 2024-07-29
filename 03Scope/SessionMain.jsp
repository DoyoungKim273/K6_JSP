<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<String> lists = new ArrayList<String>();
lists.add("리스트");
lists.add("컬렉션");
session.setAttribute("lists", lists);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 영역</title>
<style>
.m1{color:hotpink; text-align: center; font-size: 50px;}
.m2{color:skyblue; text-align: center; font-size: 50px;}
</style>
</head>
<body>
	<h2 class=m1>페이지</h2>
	<h2 class=m2>이동 후</h2>
	<h2 class=m1>session</h2>
	<h2 class=m2>영역의</h2>
	<h2 class=m1>속성 읽기</h2>
	<a href="SessionLocation.jsp">SessionLocation.jsp 바로가기</a>
</body>
</html>