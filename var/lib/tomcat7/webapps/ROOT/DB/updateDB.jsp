<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8" />
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*" %>
<%
	String name=new String(request.getParameter("username").getBytes("8859_1"),"UTF-8");
	String studentid = request.getParameter("studentid");
	String kor_score = request.getParameter("korscore");
	String eng_score = request.getParameter("engscore");
	String mat_score = request.getParameter("matscore");
%>
<%
	String pageNum = request.getParameter("pageNum");
	String fromstr = request.getParameter("from");
%>
<html>
<head>
<%
int cnt = 0;
int startpoint = 1;						//시작점은 하나로 잡았다
int from=0;

if (pageNum != null) startpoint = Integer.parseInt(pageNum);
	else startpoint = 1;
if (fromstr != null) from=Integer.parseInt(fromstr);
	else from = 1;
//뭔가 get되면 시작점변경
%>
</head>
<body>
	<h1><B>레코드 수정<B></h1>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
		Statement stmt = conn.createStatement();
		
		stmt.execute("update examtable set name='" + name + "', kor='"+ kor_score + "', eng='"+ eng_score + "', mat='"+ mat_score + "' where studentid='"+ studentid + "';");

		ResultSet rset = stmt.executeQuery("select * from examtable;");
	%>
	<table cellspacing=1 width=450 border=1>
	<%
		int num = Integer.parseInt(studentid);
		
		out.println("<tr>");
		out.println("<td width=50><p align=center>이름</p></td>");
		out.println("<td width=50><p align=center>학번</p></td>");
		out.println("<td width=50><p align=center>국어</p></td>");
		out.println("<td width=50><p align=center>영어</p></td>");
		out.println("<td width=50><p align=center>수학</p></td>");
		out.println("</tr>");

	int to = 10;
		while (rset.next()){
			cnt++;
			if(cnt>=from&&cnt<from+to){
			if(num == rset.getInt(2)){
				out.println("<tr bgcolor='#f7ff00'>");
				out.println("<td width=50><p align=center><a href=oneviewDB.jsp?name=" + rset.getString(1) + "&studentid=" + rset.getInt(2) + ">" + rset.getString(1)+"</a></p></td>");
				out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(2))+"</p></td>");
				out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(3))+"</p></td>");
				out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(4))+"</p></td>");
				out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(5))+"</p></td>");
				out.println("</tr>");
			} 
			else{
				out.println("<tr>");
				out.println("<td width=50><p align=center><a href=oneviewDB.jsp?name=" + rset.getString(1) + "&studentid=" + rset.getInt(2) + ">" + rset.getString(1)+"</a></p></td>");
				out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(2))+"</p></td>");
				out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(3))+"</p></td>");
				out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(4))+"</p></td>");
				out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(5))+"</p></td>");
				out.println("</tr>");
				}
			}
		}
		rset.close();
		stmt.close();
		conn.close();

	%>
	</table>
</body>
<%
if (startpoint != 1) {			//1페이지가 포함되었을땐 <<, <가 나타나지 않는다
	out.println("<a href=AllviewDB1.jsp?pageNum="+1+">&lt;&lt;</font></a>");	//맨 앞으로
	out.println("<a href=AllviewDB1.jsp?pageNum="+(startpoint-10)+">&lt;</font></a>");		//10페이지 앞으로
}
for(int i=0; i<10; i++){		//10개 페이지 링크 출력, 페이지번호와 시작 번호를 매칭...수열
	if((10*startpoint-9)+(i*10) > cnt) break;		//총량을 벗어날 경우 페이지 링크를 더 표시하지 않는다
	out.println("<a href='AllviewDB1.jsp?pageNum="+startpoint+"&from="+((10*startpoint-9)+(i*10))+"&cnt=9' target='main'>"+(startpoint+i)+"</a>");
}
if (10*startpoint < cnt-100) {		//마지막 페이지에서는 >, >>가 안나타나도록
	out.println("<a href=AllviewDB1.jsp?pageNum="+(startpoint+10)+">&gt;</font></a>");		//10페이지 뒤로
	out.println("<a href=AllviewDB1.jsp?pageNum="+(cnt/100*10)+">&gt;&gt;</font></a></center><br>");	//마지막 페이지로
}
%>
</html>