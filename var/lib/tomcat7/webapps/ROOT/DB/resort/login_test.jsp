<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<html>
<head>
<%
//세션을 체크해서 없다면 로그인창으로 보낸다. 그리고 로그인이 되면 자기자신에게 와야 하므로
//자기자신의 url을 써줘야 한다 login_test.jsp
	String loginOK=null;
	String jumpURL="login.jsp?jump=login_test.jsp";
	
	loginOK = (String)session.getAttribute("login_ok");
	if(loginOK==null){
		response.sendRedirect(jumpURL);
		return;
	}
	if(!loginOK.equals("yes")){
		response.sendRedirect(jumpURL);
		return;
	}
%>
</head>
<body>
<center>
<h1>로그인 오케이</h1>
<br>
<br>
<a href="logout.jsp">로그아웃</a>
</center>
</body>
</html>