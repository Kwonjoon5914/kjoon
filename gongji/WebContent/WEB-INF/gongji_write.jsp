<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head>
<script>
function add(){
	alert("입력되었습니다!");
	location.href = "gongji_list.jsp"
}
</script>

</head>
<body onload="add()">
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	String title = request.getParameter( "title" );
	String date2 = request.getParameter( "date" );
	String content = request.getParameter( "content" );
	String onegeul = request.getParameter( "onegeul" );
	String datgeullev = request.getParameter( "datgeullev" );
	String datgeulorder = request.getParameter( "datgeulorder" );

	if(datgeullev==null){
	stmt.execute("insert into gongji (title, date, content) values ('"+title+"','"+date2+"','"+content+"');");
	stmt.executeUpdate("update gongji set rootid = last_insert_id() where id = last_insert_id();");
	}else{
		
	stmt.executeUpdate("update gongji set recnt=recnt+1 where rootid= " + onegeul + " and recnt >= " + datgeulorder + ";");
	stmt.execute("insert into gongji (title, date, content ,rootid, relevel, recnt) values ('"+title+"','"+date2+"','"+content+"','"+onegeul+"','"+datgeullev+"','"+datgeulorder+"');");
	
}

	stmt.close();
	conn.close();
%>
</body>
</html>