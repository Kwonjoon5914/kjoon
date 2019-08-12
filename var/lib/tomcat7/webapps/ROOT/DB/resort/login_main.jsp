<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<html>
<head>
<%
//세션을 체크해서 없다면 로그인창으로 보낸다. 그리고 로그인이 되면 자기자신에게 와야 하므로
//자기자신의 url을 써줘야 한다 login_test.jsp
	String loginOK=null;
	String jumpURL="login.jsp?jump=login_main.jsp";
	
	loginOK = (String)session.getAttribute("login_ok");

	if(loginOK==null){
		//out.println("a1");
		response.sendRedirect(jumpURL);
		return;
	}
	if(!loginOK.equals("yes")){
		//out.println("a2");
		response.sendRedirect(jumpURL);
		return;
	}
%>
</head>
<body background="image/injulme2.jpg" text="ff0000">
<center>
<h1>로그인 중입니다.</h1>
<br>
<br>
<a href="main.jsp"><h1>메인페이지로 돌아가기</h1></a>
<br>
<br>
<br>
<br>
<br>
<br>
<a href="logout.jsp"><h1>로그아웃</h1></a>
</center>
</body>
</html>