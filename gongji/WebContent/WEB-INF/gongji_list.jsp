<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%
	String pageNum = request.getParameter("pageNum");
	String fromstr = request.getParameter("from");
	String key = request.getParameter("key");
%>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<h1 align=center><B>공지사항 리스트</B></h1>
<hr align=center width=600>
<%
int cnt = 0;
int startpoint = 1;
int from=0;

if (pageNum != null) startpoint = Integer.parseInt(pageNum);
	else startpoint = 1;
if (fromstr != null) from = Integer.parseInt(fromstr);
	else from = 1;
%>
</head>
<body>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	ResultSet rset = stmt.executeQuery("select id, title, viewcnt, recnt, date, rootid, relevel from gongji order by rootid DESC, recnt asc;");
%>
<table cellspacing=1 width=600 border=1 align=center>
	<tr>
		<td width=50><p align=center>번호</td>
		<td width=350><p align=center>제목</td>
		<td width=100><p align=center>조회수</td>
		<td width=100><p align=center>등록일</td>
	</tr>
<%
	int to = 10;
		while (rset.next()){
			cnt++;
			if(cnt>=from&&cnt<from+to){
			out.println("<tr>");
			out.println("<td align=center><p align=center>"+rset.getInt(1)+"<p></td>");
			out.println("<td>");
			
			int relevel=rset.getInt(7);
			if(relevel>0){
				while(relevel>0){
					
				out.print(">");
				relevel--;
				}
				out.print("[Re]");
			}
			SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
			String geuldate = simpleDate.format(rset.getDate(5));
			
			java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
			String today = formatter.format(new java.util.Date());
			if(today.equals(geuldate)){
%>
			<img src='new.jpg' />
<%
		}
			out.println("<a href=gongji_view.jsp?key="+rset.getInt(1)+"&rootid="+rset.getInt(6)+"&relevel="+rset.getInt(7)+"&recnt="+rset.getInt(4)+">" + rset.getString(2) + "</a></td>");
			out.println("<td align=center><p align=center>"+rset.getInt(3)+"<p></td>");
			out.println("<td align=center><p align=center>"+rset.getDate(5)+"</p></td>");
			out.println("</tr>");
			}
		}
	rset.close();
	stmt.close();
	conn.close();
%>
<table cellspacing=1 align=center>
<%
	out.println("<tr>");
	if (startpoint != 1) {			//1페이지가 포함되었을땐 <<, <가 나타나지 않는다
	out.println("<td align=center><a href=gongji_list.jsp?pageNum="+1+">&lt;&lt;</font></a></td>");	//맨 앞으로
	out.println("<td align=center><a href=gongji_list.jsp?pageNum="+(startpoint-10)+">&lt;</font></a></td>");		//10페이지 앞으로
	}
	for(int i=0; i<10; i++){		//10개 페이지 링크 출력, 페이지번호와 시작 번호를 매칭...수열
	if((10*startpoint-9)+(i*10) > cnt) break;		//총량을 벗어날 경우 페이지 링크를 더 표시하지 않는다
	out.println("<td align=center><a href='gongji_list.jsp?pageNum="+startpoint+"&from="+((10*startpoint-9)+(i*10))+"&cnt=4' target='main'>"+(startpoint+i)+"</a></td>");
	}
	if (10*startpoint < cnt-100) {		//마지막 페이지에서는 >, >>가 안나타나도록
	out.println("<td align=center><a href=gongji_list.jsp?pageNum="+(startpoint+10)+">&gt;</a></td>");		//10페이지 뒤로
	out.println("<td align=center><a href=gongji_list.jsp?pageNum="+(cnt/100*10)+">&gt;&gt;></a></td>");	//마지막 페이지로
	}
	out.println("</tr>");
%>
</table>
<table cellspacing=1 width=600 align=center>
<form method="post" action="gongji_insert.jsp">
<%
	out.println("<tr style='float: right;'>");
	out.println("<td align=center><input type='submit' value='신규'></td>");
	out.println("</tr>");
%>
</form>

</table>
</table>
</body>
</html>