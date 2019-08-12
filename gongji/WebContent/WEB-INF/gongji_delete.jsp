<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8" />
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*" %>
<%
	String key = request.getParameter("key");
%>
<%
	String onegeul = request.getParameter("rootid");
	String datgeulorder = request.getParameter("recnt");
%>
<html>
<head>
<script>
function add(){
	alert("삭제되었습니다!");
	location.href = "gongji_list.jsp"
}
</script>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
		Statement stmt = conn.createStatement();
		
		if(datgeulorder.equals("0")){
		stmt.execute("delete from gongji where rootid = " + onegeul + ";");
		}else{
		stmt.execute("delete from gongji where recnt = " + datgeulorder + ";");
		stmt.execute("update gongji set recnt=recnt-1 where recnt > " + datgeulorder + ";");
		}
		stmt.close();
		conn.close();
	%>
</head>
<body onload ="add()">
</body>
</html>