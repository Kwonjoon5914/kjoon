<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8" />
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*" %>
<html>
<head>
<script>
function add(){
	alert("삭제되었습니다!");
	location.href = "jaego_list.jsp"
}
</script>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
		Statement stmt = conn.createStatement();

		String id = request.getParameter("id");
		
		stmt.execute("delete from twicejaego where id = " + id + ";");
		
		stmt.close();
		conn.close();
	%>
</head>
<body onload ="add()">
</body>
</html>