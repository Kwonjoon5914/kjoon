<meta http-equiv="content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import ="java.sql.*,javax.sql.*,java.io.*,java.util.*" %>
<%--html에서 받아올 때 한글 깨짐 방지--%>
<% request.setCharacterEncoding("UTF-8"); %>

<HTML>
<HEAD>
</HEAD>
<BODY>
<h1><center>JSP Database 실습 1</center></h1>
<table cellspacing=1 width=600 border=1>
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	stmt.execute("UPDATE visitant SET count=count+1;");
	
	ResultSet rset = stmt.executeQuery("select * from visitant;");
	
	while(rset.next()){
		out.println("<br><br>현재 홈페이지 방문조회수는" + rset.getInt(1) +" 입니다</br></br>");
	}
	stmt.close();
	rset.close();
	conn.close();
%>
</table>
</BODY>
</HTML>