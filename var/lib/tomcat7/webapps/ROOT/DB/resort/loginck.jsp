<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<style>
table,th,td{
	color:white;
}
</style>
<head>
</head>
<body background="image/injulme2.jpg" onload="add()">
<center>
<%
	
	String jump = request.getParameter( "jump" );
	String id = request.getParameter( "id" );
	String pass = request.getParameter( "passwd" );
	
	boolean bPassChk=false;
	
	//아이디, 패스워드 체크
	if( id.replaceAll(" ","").equals("admin")&& pass.replaceAll(" ","").equals("admin"))
	{
		bPassChk=true;
	}else{
		bPassChk=false;
	}
%>
<%
	//패스워드 체크가 끝나면, 세션을 기록하고 점프한다.
	if(bPassChk){
		session.setAttribute("login_ok","yes");
		session.setAttribute("login_id",id);
%>
<script>
function add(){
	alert("로그인되었습니다!");
	location.href = "main.jsp"
}
</script>
<%
	}else{
%>
<script>
function add(){
	alert("로그인실패! 아이디 또는 패스워드를 확인해주세요!");
	location.href = "login.jsp"
}
</script>
<%
}
%>
</center>
</body>
</html>