<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head>
<script type="text/javascript">
// Input text onKeyPress 이벤트 한글만 입력

function check_key() {
 var char_ASCII = event.keyCode;
                
  //숫자
 if (char_ASCII >= 48 && char_ASCII <= 57 )
   return 1;
 //영어
 else if ((char_ASCII>=65 && char_ASCII<=90) || (char_ASCII>=97 && char_ASCII<=122))
    return 2;
 //특수기호
 else if ((char_ASCII>=33 && char_ASCII<=47) || (char_ASCII>=58 && char_ASCII<=64) 
   || (char_ASCII>=91 && char_ASCII<=96) || (char_ASCII>=123 && char_ASCII<=126))
    return 4;
 //한글
 else if ((char_ASCII >= 12592) || (char_ASCII <= 12687))
    return 3;
 else 
    return 0;
}
function HangulSpecialKey() {
	if(check_key() != 3){
	event.returnValue = false;
	alert("한글만 입력하세요!");
	return;
	}
}
function NumberSpecialKey() {
	if(check_key() != 1){
	event.returnValue = false;
	alert("숫자만 입력하세요!");
	return;
	}
}
</script>
</head>
	<body>

<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	ResultSet rset = stmt.executeQuery("select * from hubo_table order by id;");

	String name = request.getParameter( "newName" );
	
	int id = 1;
		while(rset.next()){
			if(id == rset.getInt(1)) id++;
			else break;
		}
		
	stmt.execute("insert into hubo_table (id, name) values ('"+id+"','"+name+"');");

%>
<table>
		<tr>
			<td><p align=center><h2>후보등록 결과 : 후보가 추가되었습니다.<h2></p></td>
		</tr>
</table>
<table cellspacing=1 width=600>
<%
	rset = stmt.executeQuery("select * from hubo_table order by id;");
		while (rset.next()){
			out.println("<tr>");
			out.println("<td align=center><p align=center>"+"기호번호 : "+rset.getInt(1)+"<p></td>");
			out.println("<td align=center><p align=center>"+"후보명 : "+rset.getString(2)+"</td>");
			out.println("<td><a href=deleteDB.jsp?id="+rset.getInt(1)+"&name="+rset.getString(2)+"><button type='button'>삭제</button></td>");         
			out.println("</tr>");
		}		  
	rset.close();
	stmt.close();
	conn.close();
%>
</table>

</body>
</html>