<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
	<head>
	<title>voteOK</title>
	</head>
<body>
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	String id = request.getParameter( "choicehubo" );
	String age = request.getParameter( "choiceage" );

	stmt.execute("insert into Tupyo_table (id, age) values ('"+id+"','"+age+"');");
%>
<table>
		<tr>
			<td><p align=center><h2>투표 결과 : 투표하였습니다.<h2></p></td>
		</tr>
</table>
<form method="post" action="voteOK.jsp">
	<td width=200><p>
	<select name=choicehubo>

<%
	ResultSet rset = stmt.executeQuery("select * from hubo_table order by id");

	while (rset.next()){
%>
		<td colspan='2'><p><option value="<%=rset.getInt(1)%>"><%=rset.getInt(1)%>번<%=rset.getString(2)%></p></td>
<%
	}
	rset.close();
	stmt.close();
	conn.close();
%>
	</select>
	<select name=choiceage>
		<option value=10>10대
		<option value=20>20대
		<option value=30>30대
		<option value=40>40대
		<option value=50>50대
		<option value=60>60대
		<option value=70>70대
		<option value=80>80대
		<option value=90>90대
	</select>
	</p>
	</td>
	<td>
	<input type="submit" value="투표하기">
	</td>
</form>
</body>
</html>