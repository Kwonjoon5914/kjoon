<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page errorPage="error1.jsp"%>
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
	<h1><B>조회</B></h1>

<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	ResultSet rset = stmt.executeQuery("select name, studentid, kor, eng, mat,"+
	"(kor+eng+mat), ROUND(((kor+eng+mat)/3),2), rank from (select name, studentid,"+
	"kor, eng, mat, (kor+eng+mat), ROUND(((kor+eng+mat)/3),2), CASE WHEN @prev_value "+
	"= ROUND(((kor+eng+mat)/3),2) THEN @vRank WHEN @prev_value := ROUND(((kor+eng+mat)/3),2)"+
	"THEN @vRank := @vRank + 1 END AS rank FROM examtable AS p, (SELECT @vRank := 0, @prev_value := NULL)"+
	"AS r ORDER BY ROUND(((kor+eng+mat)/3),2) DESC) AS CNT;");
%>
<table cellspacing=1 width=600 border=1>
	<tr>
		<td width=50><p align=center>이름</td>
		<td width=50><p align=center>학번</td>
		<td width=50><p align=center>국어</td>
		<td width=50><p align=center>영어</td>
		<td width=50><p align=center>수학</td>
		<td width=50><p align=center>총점</td>
		<td width=50><p align=center>평균</td>
		<td width=50><p align=center>등수</td>
	</tr>
<%
	int to = 10;
		while (rset.next()){
			cnt++;
			if(cnt>=from&&cnt<from+to){
			out.println("<tr>");
			out.println("<td width=50><p align=center><a href=oneviewDB.jsp?name=" + rset.getString(1) + "&studentid=" + rset.getInt(2) + ">" + rset.getString(1)+"</a></p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(2))+"</p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(3))+"</p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(4))+"</p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(5))+"</p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(6))+"</p></td>");
			out.println("<td width=50><p align=center>" + Double.toString(rset.getDouble(7))+"</p></td>");
			out.println("<td width=50><p align=center>" + Integer.toString(rset.getInt(8))+"</p></td>");
			out.println("</tr>");
			}
		}
	rset.close();
	stmt.close();
	conn.close();
%>
</table>
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
</body>
</html>