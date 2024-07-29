
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public int add(int num1, int num2) {
		return num1 + num2;
	}%>
<%
String str1 = request.getParameter("num1");
String str2 = request.getParameter("num2");
int num1 = 0;
int num2 = 0;
try {
	num1 = Integer.parseInt(str1);
	num2 = Integer.parseInt(str2);
} catch (NumberFormatException e) {
	out.println("값이 입력되지 않았습니다.");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
	<%
	int fontSize = 30;
	%>
	<%
	try {
		int result = add(10, 20);
	%>
	<br />
	<h1 style="color: pink; font-size: 30px;">덧셈 결과 1 :</h1>
	<%=result%><br />
	<h2 style="color: orange; font-size: 30px;">덧셈 결과 2 :</h2>
	<%=add(30, 40)%><br />
	<h3 style="color: skyblue; font-size: 30px;">덧셈 결과 3 :</h3>
	<%=add(num1, num2)%>
	<%
	} catch (Exception e) {
	out.println("에러를 방지합니다.");
	}
	%>

</body>
</html>