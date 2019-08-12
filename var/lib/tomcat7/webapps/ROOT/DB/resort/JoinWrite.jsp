<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>

<head>
<script>
function add(){
	alert('회원가입 되었습니다. 환영합니다!');
	location.href = "index.html"
}
</script>
</head>
<body onload="add()" BACKGROUND="image/background.jpg">
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	String id = request.getParameter( "id" );
	String password = request.getParameter( "password" );
	String name = request.getParameter( "name" );
	String gender = request.getParameter( "gender" );
	String borndate = request.getParameter( "borndate" );
	String mail1 = request.getParameter( "mail1" );
	String mail2 = request.getParameter( "mail2" );
	String phone = request.getParameter( "phone" );
	String address = request.getParameter( "address" );

	stmt.execute("insert into userinfo (id, password, name, gender, date, mail1, mail2, phone, address) values ('"+id+"','"+password+"','"+name+"','"+gender+"','"+borndate+"','"+mail1+"','"+mail2+"','"+phone+"','"+address+"');");

	stmt.close();
	conn.close();
%>

</body>
</html>