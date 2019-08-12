<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head>
</head>
<body onload="add()" BACKGROUND="image/background.jpg">
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	String name = request.getParameter( "name" );
	String resv_date = request.getParameter( "resv_date" );
	String room = request.getParameter( "room" );
	String addr = request.getParameter( "addr" );
	String telnum = request.getParameter( "telnum" );
	String in_name = request.getParameter( "in_name" );
	String comment = request.getParameter( "comment" );

	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
	String today = formatter.format(new java.util.Date());
	String processing = "1";
	
	String sql = String.format("SELECT * from kkanariresv where resv_date = '%s' AND room = '%s' ORDER BY resv_date, room;", resv_date, room);

	ResultSet rset = stmt.executeQuery(sql);
	
	if(rset.next()){

%>
<script>
function add(){
	alert('이미 예약된 방입니다. 다른 날짜 또는 방을 선택하여 주세요.');
	location.href = "d_02.jsp"
}
</script>
<%
	} else {

	stmt.execute("insert into kkanariresv (name, resv_date, room, addr, telnum, in_name, comment, write_date, processing) values ('"+name+"','"+resv_date+"','"+room+"','"+addr+"','"+telnum+"','"+in_name+"','"+comment+"','"+today+"','"+processing+"');");
%>
	<script>
function add(){
	alert("예약되었습니다! 목록으로 돌아가 확인하여 주세요!");
	location.href = "d_01.jsp"
}
	</script>
<%	
	}
	rset.close();
	stmt.close();
	conn.close();
%>

</body>
</html>