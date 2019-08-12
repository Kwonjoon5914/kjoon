<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page errorPage="error1.jsp"%>
<html>
	<head>
	</head>
	<body>
	<h1><B>테이블만들기 OK<B></h1>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
		stmt.execute( "create table examtable(" +
				"name varchar(20)," +
				"studentid int not null primary key," +
				"kor int," +
				"eng int," +
				"mat int)" +
				"DEFAULT CHARSET=utf8;");
%>
	</body>
</html>