<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<html>
	<head>
	</head>
	<body>
	<h1><B>랜덤데이터 입력<B></h1>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122122,'통조림',12,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122123,'바나나',10,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122124,'따알기',12,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122125,'사아과',14,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122126,'배애애',9,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122127,'참외애',93,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122128,'복숭아',54,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122129,'자아두',45,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122130,'사과아',23,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122131,'버내너',43,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
	stmt.execute("insert into twicejaego (id, name, number, invenidendate, registdate, detailcontent) values (122132,'아몬드',11,20170610,20190101,'알래스카산 통조림으로 맘모스의 아침식사');");
%>
	</body>
</html>