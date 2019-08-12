<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	String id = request.getParameter("id");	
	String number = request.getParameter( "number" );
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
	String today = formatter.format(new java.util.Date());

	stmt.execute("update twicejaego set number='"+ number + "',registdate='"+today+"' where id="+ id + ";");
	
	stmt.close();
	conn.close();
%>
<html>
<head>
<script>
function add(){
	alert("수정되었습니다!");
	location.href = "jaego_list.jsp"
}
</script>
</head>
<body onload="add()">
</body>
</html>