<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>
<%
	String key = request.getParameter("key");
%>
<html>
<head>
<meta charset="UTF-8">
<script language = "javascript">

function writeCheck()
	{
	var form = document.writeform;

	if( !form.count.value )
	{
    alert( "번호를 적어주세요" );
    form.count.focus();
    return;
	}

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
	
	ResultSet rset = stmt.executeQuery("select id, title, date, content from gongji where id="+key+";");
%>
<table border=1 align=center>
<form name=writeform method=post action="gongji_updateok.jsp">
	<tr>
		<td>
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
		<td width="5"></td>
		<td width="5"></td>
	</tr>
</table>
<table>
	<tr>
		<td>&nbsp;</td>
		<td align="center">번호</td>
		<td><input type=hidden name="count" size="50" value="<%=key%>" maxlength="70" readonly="readonly"><%=key%></td>
		<td>&nbsp;</td>
	</tr>
	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	<tr>
		<td>&nbsp;</td>
		<td align="center">제목</td>
		<td><input maxlength="30" name="title" size="50" maxlength="70" placeholder="최대 30자까지 입력가능합니다"></td>
		<td>&nbsp;</td>
	</tr>
	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	<tr>
		<td>&nbsp;</td>
		<td align="center">날짜</td>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
	String today = formatter.format(new java.util.Date());
%>
		<td><input type=hidden name="date" size="50" value="<%=today%>" readonly="readonly"><%=today%></td>
		<td>&nbsp;</td>
	</tr>
	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	<tr>
		<td>&nbsp;</td>
		<td align="center">내용</td>
		<td><textarea maxlength="400" name="content" cols="52" rows="13" placeholder="최대 400자까지 입력가능합니다"></textarea></td>
		<td>&nbsp;</td>
	</tr>
	<tr height="1"><td colspan="4"></td></tr>
	<tr height="1"><td colspan="4"></td></tr>
	<tr align="center">
		<td>&nbsp;</td>
		<td colspan="2"><input type=button value="수정완료" OnClick="javascript:writeCheck();">
		<input type=button value="취소" OnClick="window.location='gongji_list.jsp'">
		<input type=button value="삭제" OnClick="window.location='gongji_delete.jsp?key=<%=key%>'">
		<td>&nbsp;</td>
    </tr>
    </table>
	</td>
	</tr>
</form>
</table>
</body>
</html>