<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page errorPage="error1.jsp"%>
<html>
	<head>
	</head>
	<body>
	<h1><B>실습데이터 입력<B></h1>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('효민',209901,95,100,95);");
	stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('보람',209902,95,95,95);");
	stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('은정',209903,100,100,100);");
	stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('지연',209904,100,95,90);");
	stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('소연',209905,80,100,70);");
	stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('큐리',209906,100,100,70);");
	stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('화영',209907,70,70,70);");
	stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('권준',209908,100,100,100);");
%>
	</body>
</html>