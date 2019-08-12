<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%
	String pageNum = request.getParameter("pageNum");
	String fromstr = request.getParameter("from");
%>
<html>
<head>
<meta charset="UTF-8">
<title>(주)트와이스 재고 현황-전체 현황</title>
<h1 align=center><B>(주)트와이스 재고 현황-전체 현황</B></h1>
<hr align=center width=600>
<%
int cnt = 0;
int startpoint = 1;						//시작점
int from=0;

if (pageNum != null) startpoint = Integer.parseInt(pageNum);
	else startpoint = 1;
if (fromstr != null) from=Integer.parseInt(fromstr);
	else from = 1;
//뭔가 get되면 시작점변경
%>
</head>
<body>
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	ResultSet rset = stmt.executeQuery("select id, name, number, invenidendate, registdate from twicejaego order by invenidendate desc;");
%>
<table cellspacing=1 width=800 border=1 align=center>
	<tr>
		<td width=50><p align=center>상품번호</td>
		<td width=250><p align=center>상품명</td>
		<td width=100><p align=center>현재 재고수</td>
		<td width=50><p align=center>재고파악일</td>
		<td width=50><p align=center>상품등록일</td>
	</tr>
<%
	int to = 5;
		while (rset.next()){
			cnt++;
			if(cnt>=from&&cnt<from+to){
			out.println("<tr>");
			out.println("<td align=center><p align=center><a href=jaego_view.jsp?id="+rset.getInt(1)+">" +rset.getInt(1)+"</a><p></td>");		
			out.println("<td align=center><p align=center><a href=jaego_view.jsp?id="+rset.getInt(1)+">"+rset.getString(2)+"</a></p></td>");
			out.println("<td align=center><p align=center>"+rset.getInt(3)+"</p></td>");
			out.println("<td align=center><p align=center>"+rset.getDate(4)+"</p></td>");
			out.println("<td align=center><p align=center>"+rset.getDate(5)+"</p></td>");
			out.println("</tr>");
			}	
		}
	rset.close();
	stmt.close();
	conn.close();
%>
<form method="post" action="jaego_insert.jsp">
<table cellspacing=1 width=800 align=center>
<%
	out.println("<tr style='float: right;'>");
	out.println("<td align=right><input type='submit' value='신규등록'></td>");
	out.println("</tr>");
%>
</table>
</form>
<table cellspacing=1 align=center>
<%
	out.println("<tr>");
	if (startpoint != 1) {			//1페이지가 포함되었을땐 <<, <가 나타나지 않는다
	out.println("<td align=center><a href=jaego_list.jsp?pageNum="+1+">&lt;&lt;</font></a></td>");	//맨 앞으로
	out.println("<td align=center><a href=jaego_list.jsp?pageNum="+(startpoint-5)+">&lt;</font></a></td>");		//10페이지 앞으로
	}
	for(int i=0; i<10; i++){		//10개 페이지 링크 출력, 페이지번호와 시작 번호를 매칭...수열
	if((10*startpoint-9)+(i*5) > cnt) break;		//총량을 벗어날 경우 페이지 링크를 더 표시하지 않는다
	out.println("<td align=center><a href='jaego_list.jsp?pageNum="+startpoint+"&from="+((10*startpoint-9)+(i*5))+"&cnt=4' target='main'>"+(startpoint+i)+"</a></td>");
	}
	if (10*startpoint < cnt-100) {		//마지막 페이지에서는 >, >>가 안나타나도록
	out.println("<td align=center><a href=jaego_list.jsp?pageNum="+(startpoint+5)+">&gt;</a></td>");		//10페이지 뒤로
	out.println("<td align=center><a href=jaego_list.jsp?pageNum="+(cnt/100*10)+">&gt;&gt;></a></td>");	//마지막 페이지로
	}
	out.println("</tr>");
%>
</table>
</table>
</body>
</html>