<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>
<html>
<head>
<meta charset="UTF-8">
<title>(주)트와이스 재고 현황-상품상세</title>
<h1 align=center><B>(주)트와이스 재고 현황-상품상세</B></h1>
<style>
	img {
	max-width:100%;
	width:300px;
	}
</style>
<script language = "javascript">

function writeCheck()
	{
	var form = document.writeform;

	if( !form.title.value )	// form 에 있는 name 값이 없을 때
	{
    alert( "제목을 적어주세요" );// 경고창 띄움
    form.title.focus();		// form 에 있는 name 위치로 이동
    return;
	}

  if( !form.content.value )
	{
	alert( "내용을 적어주세요" );
	form.content.focus();
	return;
	}
	form.submit();
	}
</script>
</head>
<body>
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	String id = request.getParameter("id");

	ResultSet rset = stmt.executeQuery("select * from twicejaego where id="+id+";");
	
%>
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
		out.println("<td align=center><p align=left>&nbsp;"+rset.getInt(3)+"</p></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"상품등록일"+"<p></td>");
		out.println("<td align=center><p align=left>&nbsp;"+rset.getDate(4)+"</p></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=150><p align=left>&nbsp;"+"재고등록일"+"<p></td>");
		out.println("<td align=center><p align=left>&nbsp;"+rset.getDate(5)+"</p></td>");
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
<form name=writeform method=post action="jaego_update.jsp">
<table cellspacing=1 width=600 align=center>
	<tr align="right">
	<br>
		<td><input type=button value="재고수정" OnClick="window.location='jaego_numberupdate.jsp?id=<%=id%>'">
		<button type=button><a href=jaego_delete.jsp?id=<%=id%>>상품삭제</button></td>
    </tr>
    </table>
</form>
</body>
</html>