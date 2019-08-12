<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>

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

	stmt.execute("UPDATE review SET viewcnt=viewcnt+1 where id='"+key+"';");

	ResultSet rset = stmt.executeQuery("select id, title, date, viewcnt, content, rootid, relevel, recnt, file from review where id="+key+";");
%>

<html>
<head>
<style>
	img {
	max-width:100%;
	width:300px;
	}
</style>
<meta charset="UTF-8">
<SCRIPT LANGUAGE="JavaScript">
	function submitForm(mode){
		if(mode == "delete"){
			var key = "<%=key%>";
			var rootid = "<%=onegeul%>";
			var recnt = "<%=datgeulorder%>";
			fm.action = "review_delete.jsp?key="+key+"&rootid="+rootid+"&recnt="+recnt;
		}
		else if(mode == "reinsert"){
			var rootid = "<%=onegeul%>";
			var relevel = "<%=datgeullev%>";
			var recnt = "<%=datgeulorder%>";
			fm.action = "review_reinsert.jsp?rootid="+rootid+"&relevel="+relevel+"&recnt="+recnt;
		}
		fm.submit();
	}
</SCRIPT>
</head>
<body BACKGROUND="../image/background.jpg">

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
%>
			<p align=left><input type=hidden name=onegeul value=<%=rset.getInt(6)%> readonly></p>
			<p align=left><input type=hidden name=datgeullev value=<%=rset.getInt(7)%> readonly></p>
			<p align=center><input type=hidden name=datgeulorder value=<%=rset.getInt(8)%> readonly></p>
<%
		if(rset.getString(9).replace("/var/lib/tomcat7/webapps/ROOT/DB/resort/file/","").equals("null")||rset.getString(9).replace("/var/lib/tomcat7/webapps/ROOT/DB/resort/file/","").equals("")){
		} else {
			out.println("<tr>");
			out.println("<td width=150><p align=left>&nbsp;"+"파일"+"<p></td>");
			out.println("<td align=center colspan=2><p align=left>&nbsp;"+"<img src="+rset.getString(9).replace("/var/lib/tomcat7/webapps/ROOT","")+"></p></td>");
			out.println("</tr>");
			}
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
		<input type=button value="목록" OnClick="window.location='review_list.jsp'">
<%
		String loginOK="";
		loginOK = (String)session.getAttribute("login_ok");
		if (loginOK != null) {
			if(loginOK.equals("yes")&&loginOK!=null){
%>
			<input type=submit formaction="review_update.jsp" formmethod="get" value="수정">
			<input type=button value="삭제" OnClick="submitForm('delete')">
<%		
			}
		}
%>
		<input type=button value="댓글" OnClick="submitForm('reinsert')">
		</td>
		<td>&nbsp;</td>
    </tr>
</table>
</table>
</form>
</body>
</html>