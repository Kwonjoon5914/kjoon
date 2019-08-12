<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>
<%
	String key = request.getParameter("key");
	String onegeul = request.getParameter("rootid");
	String datgeullev = request.getParameter("relevel");
	String datgeulorder = request.getParameter("recnt");
%>
<html>
<head>
<meta charset="UTF-8">
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
	
	ResultSet rset = stmt.executeQuery("select relevel from gongji where rootid = " + onegeul + " and recnt > " + datgeulorder + " order by recnt asc;");

%>
<%
	int recnt=0;
	int relevel=0;
	recnt = Integer.parseInt(datgeulorder);
	relevel = Integer.parseInt(datgeullev);
	while(rset.next()){
	if(Integer.parseInt(datgeullev) >= rset.getInt(1)){
		break;
	}else{
		recnt++;
	}
}
recnt++;
%>
<%
	rset.close();
	stmt.close();
	conn.close();
%>
<table align=center>
<form name=writeform method=post action="gongji_write.jsp"><td>
<table border="1">
	<tr>
		<td align="center" border="1">번호</td>
		<td colspan=3><input type=hidden name="count" size="50" value="댓글" readonly="readonly">댓글insert</td>

	</tr>
	<tr>
		<td align="center">제목</td>
		<td colspan=3><input maxlength="30" name="title" size="50" maxlength="70" placeholder="최대 30자까지 입력가능합니다"></td>
	</tr>
	<tr>
		<td align="center">일자</td>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
	String today = formatter.format(new java.util.Date());
%>
		<td colspan=3><input type=hidden name="date" size="50" value="<%=today%>" readonly="readonly"><%=today%></td>
	</tr>
	<tr>
		<td align="center">내용</td>
		<td colspan=3><textarea maxlength="400" name="content" cols="52" rows="13" placeholder="최대 400자까지 입력가능합니다"></textarea></td>
	</tr>
	<tr>
		<td width=150><p align=left><B>원글</B><p></td>
		<td align=center colspan=3><p align=left><input type=number name="onegeul" value=<%=onegeul%> readonly="readonly"></p></td>
	</tr>
	<tr width=200>
		<td><p align=left><B>댓글수준</B><p></td>
<%
%>
		<td align=center><p align=left><input type=number name="datgeullev" value="<%=relevel+1%>" readonly="readonly"></p></td>
		<td align=center><p align=center>댓글내 순서</p></td>
		<td align=center><p align=left><input type=number name="datgeulorder" value="<%=recnt%>" readonly="readonly"></p></td>
	</tr>
	<tr align="center" width=600>
		<td>&nbsp;</td>
		<td align=right colspan=3>
			<input type=button value="취소" OnClick="javascript:history.back(-1)">
			<input type=button value="쓰기" OnClick="javascript:writeCheck();">
		</td>
    </tr>
</table>
</form>
</table>
</body>
</html>