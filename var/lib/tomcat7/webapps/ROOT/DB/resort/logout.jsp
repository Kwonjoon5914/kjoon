<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
</head>
<body background="image/injulme2.jpg" text="ff0000">
<center>
<%
	session.invalidate();
	out.println("<h2>로그아웃 되었습니다.</h2>");
	//로그아웃 후 일반적으로는 홈으로 간다(여기서는 main.html)
	out.println("<input type=button value='메인페이지' OnClick=\"location.href='main.jsp'\">");
%>
</center>
</body>
</html>