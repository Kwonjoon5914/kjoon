<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>
<html>
<head>
<meta charset="UTF-8">
<title>(주)트와이스 재고 현황-재고수정</title>
<h1 align=center><B>(주)트와이스 재고 현황-재고수정</B></h1>

<script language = "javascript">

function writeCheck(){
	
	var form = document.writeform;
	form.validate()
	
	if( !form.number.value ) {
		alert( "재고수량을 적어주세요" );
		form.number.focus();
		return false;
	}
	return true;
	}
</script>
<style>
	img {
	max-width:100%
	width:300px
	}
</style>
</head>
<body>

<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	String id = request.getParameter("id");

	ResultSet rset = stmt.executeQuery("select * from twicejaego where id="+id+";");
	
%>
<form name=writeform method=post action="jaego_updateok.jsp?id=<%=id%>" onsubmit=" OnClick="javascript:writeCheck();">
<table cellspacing=1 width=600 border=1 align=center>
<%
	while (rset.next()){
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"상품 번호"+"<p></td>");
		out.println("<td align=center><p align=left>&nbsp;"+rset.getInt(1)+"<p></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"상품명"+"<p></td>");
		out.println("<td align=center><p align=left>&nbsp;"+rset.getString(2)+"</p></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"재고 현황"+"<p></td>");
		out.println("<td align=center><p align=left><input type=number min='0' max='999999' name=number>&nbsp;</p></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"상품등록일"+"<p></td>");
		out.println("<td align=center><p align=left>&nbsp;"+rset.getDate(4)+"</p></td>");
		out.println("</tr>");
		
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
		String today = formatter.format(new java.util.Date());
		
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"재고등록일"+"<p></td>");
		out.println("<td align=center><p align=left>&nbsp;"+today+"</p></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"상품설명"+"<p></td>");
		out.println("<td align=center><p align=left>&nbsp;"+rset.getString(6)+"</p></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"상품사진"+"<p></td>");
		out.println("<td align=center><p align=left>&nbsp;"+"<img src="+rset.getString(7).replace("/var/lib/tomcat7/webapps/ROOT","")+"></p></td>");
		out.println("</tr>");
	}
	rset.close();
	stmt.close();
	conn.close();
%>
<table cellspacing=1 width=600 align=center>
	<tr align="right">
	<br>
		<td><input type=submit value="재고수정완료">
    </tr>
    </table>
</form>
</body>
</html>