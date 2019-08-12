<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<script>
function add(){
	alert("수정되었습니다!");
	location.href = "d_01.jsp"
}
</script>
</head>
<body onload="add()">
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
	String today = formatter.format(new java.util.Date());
	
	String name = request.getParameter("name");
	String resv_date = request.getParameter("resv_date");
	String room = request.getParameter("room");
	String addr = request.getParameter("addr");
	String telnum = request.getParameter("telnum");
	String in_name = request.getParameter("in_name");
	String comment = request.getParameter("comment");
	String write_date = request.getParameter("write_date");
	String processing = request.getParameter("processing");

	String Prevresv_date = request.getParameter("Prevresv_date");
	String PrevRoom = request.getParameter("roomNo");

	String sql = String.format("SELECT * from kkanariresv where resv_date = '%s' AND room = '%s' ORDER BY resv_date, room;", resv_date, room);

	ResultSet rset = stmt.executeQuery(sql);
	
	if(rset.next()){
%>

<script>
function add(){
	alert('이미 예약된 날짜 또는 방입니다. 다른 날짜 또는 방을 선택하여 주세요.');
	history.back();
}
</script>
<%
	} else if(){
		
	}



	else {
	
	stmt.execute("update kkanariresv set name='"+ name + "',resv_date='"+resv_date+"',room="+room+",addr='"+addr+"',telnum='"+telnum+"',in_name='"+in_name+"',comment='"+comment+"',write_date='"+write_date+"',processing='"+processing+"' where room=" + PrevRoom + " and resv_date='" + Prevresv_date + "';");

	rset.close();
	stmt.close();
	conn.close();
	}
%>

</body>
</html>