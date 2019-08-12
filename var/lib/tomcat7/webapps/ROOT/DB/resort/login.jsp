<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<html>
<style>
table,th,td{
	color:white;
}
</style>
<head>
<%
	String jump = request.getParameter( "jump" );
%>
</head>
<body background="image/0000.png">
<center>
<form method="post" action="loginck.jsp">
<table>
	<th colspan=2 align=center><h2>관리자 로그인<h2></th>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="passwd"></td>
	</tr>
	<tr>
		<td colspan=2 align=center><input type="submit" value="전송"></td>
	</tr>
</table>
<input type="hidden" name="jump" value="<%=jump%>">
</form>
</center>
</body>
</html>