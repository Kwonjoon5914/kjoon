<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.net.*,java.io.*" %>
<%@ page errorPage="error1.jsp"%>
<%
	String name = request.getParameter("name");
	String studentid = request.getParameter("studentid");
%>
<html>
	<head>
	</head>
	<body>

<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	ResultSet rset = stmt.executeQuery("select * from examtable where studentid = " + studentid + ";");
%>

<h1>[<%=name%>]조회</h1>
<table cellspacing=1 width=450 border=1>
	<tr>
		<td width=50><p align=center>이름</td>
		<td width=50><p align=center>학번</td>
		<td width=50><p align=center>국어</td>
		<td width=50><p align=center>영어</td>
		<td width=50><p align=center>수학</td>
	</tr>
	
<%
	while (rset.next()){
			out.println("<tr>");
			out.println("<td width=50><p align=center>" + rset.getString(1)+"</p></td>");	
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(2))+"</p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(3))+"</p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(4))+"</p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(5))+"</p></td>");
			out.println("</tr>");
		}
	rset.close();
	stmt.close();
	conn.close();
%>
</table>
</body>
</html>