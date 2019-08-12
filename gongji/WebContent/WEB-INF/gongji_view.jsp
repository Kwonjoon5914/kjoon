<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%
	String key = request.getParameter("key");
	String onegeul = request.getParameter("rootid");
	String datgeulorder = request.getParameter("recnt");
	String datgeullev = request.getParameter("relevel");

%>
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	stmt.execute("UPDATE gongji SET viewcnt=viewcnt+1 where id='"+key+"';");

	ResultSet rset = stmt.executeQuery("select id, title, date, viewcnt, content, rootid, relevel, recnt from gongji where id="+key+";");
%>
<html>
<head>
<meta charset="UTF-8">
<SCRIPT LANGUAGE="JavaScript">
	function submitForm(mode){
		if(mode == "delete"){
			var key = "<%=key%>";
			var rootid = "<%=onegeul%>";
			var recnt = "<%=datgeulorder%>";
			fm.action = "gongji_delete.jsp?key="+key+"&rootid="+rootid+"&recnt="+recnt;
		}
		else if(mode == "reinsert"){
			var rootid = "<%=onegeul%>";
			var relevel = "<%=datgeullev%>";
			var recnt = "<%=datgeulorder%>";
			fm.action = "gongji_reinsert.jsp?rootid="+rootid+"&relevel="+relevel+"&recnt="+recnt;
		}
		fm.submit();
	}
</SCRIPT>
</head>
<body>

<table cellspacing=1 width=600 border=1 align=center>
<form method=post name='fm'>
<%
		while (rset.next()){
			out.println("<tr>");
			out.println("<td width=150><p align=left><B>"+"번호"+"</B><p></td>");
			out.println("<td align=center colspan=2><p align=left>"+rset.getInt(1)+"<p></td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td width=150><p align=left><B>"+"제목"+"</B><p></td>");
			out.println("<td align=center colspan=2><p align=left>"+rset.getString(2)+"</p></td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td width=150><p align=left><B>"+"일자"+"</B><p></td>");
			out.println("<td align=center colspan=2><p align=left>"+rset.getDate(3)+"</p></td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td width=150><p align=left><B>"+"조회수"+"</B><p></td>");
			out.println("<td align=center colspan=2><p align=left>"+rset.getInt(4)+"</p></td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td width=150><p align=left><B>"+"내용"+"</B><p></td>");
			out.println("<td align=center colspan=2><p align=left>"+rset.getString(5)+"</p></td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td width=150><p align=left><B>"+"원글"+"</B><p></td>");
%>
			<td align=center colspan=2><p align=left><input type=number name=onegeul value=<%=rset.getInt(6)%> readonly></p></td>
<%
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td width=150><p align=left><B>"+"댓글수준"+"</B><p></td>");
%>
			<td align=center><p align=left><input type=number name=datgeullev value=<%=rset.getInt(7)%> readonly></p></td>
			<td align=center><p align=center>댓글내 순서<input type=number name=datgeulorder value=<%=rset.getInt(8)%> readonly></p></td>
<%
			out.println("</tr>");
		}	
	rset.close();
	stmt.close();
	conn.close();
%>

<table cellspacing=1 width=650 align=center>
	<tr align="right">
		<td>&nbsp;</td>
		<td colspan="2">
		<input name="key" type="hidden" value="<%=key%>">
		<input type=button value="목록" OnClick="window.location='gongji_list.jsp'">
		<input type=submit formaction="gongji_update.jsp" formmethod="get" value="수정">
		<input type=button value="삭제" OnClick="submitForm('delete')">
		<input type=button value="댓글" OnClick="submitForm('reinsert')">
		</td>
		<td>&nbsp;</td>
    </tr>
</table>
</table>
</form>
</body>
</html>