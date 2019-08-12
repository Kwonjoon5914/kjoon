<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("count");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	String title = request.getParameter( "title" );
	String content = request.getParameter( "content" );

	stmt.execute("update gongji set title='"+ title + "', content='"+ content + "' where id="+ Integer.parseInt(id) + ";");
	stmt.close();
	conn.close();
%>
<html>
<head>
<script>
function add(){
	alert("수정되었습니다!");
	location.href = "gongji_list.jsp"
}
</script>
</head>
<body onload="add()">
</body>
</html>