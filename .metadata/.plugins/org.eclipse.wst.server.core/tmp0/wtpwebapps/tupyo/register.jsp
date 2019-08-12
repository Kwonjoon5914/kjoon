<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>
	<head>
	<title>register</title>
	<meta charset="UTF-8">
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
function validate(){
      var re_name =  /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]{1,10}$/; //이름 한글,숫자인지 검사할 규칙
      var newName = document.getElementById("newName");      
      
      if(insert.newName.value == ""){ //이름이 비어있을 때
         alert("이름을 입력해 주세요.")
         insert.newName.focus();
         return false;
      }
      if(!check(re_name, newName, "이름은 10자 이내 한글만 허용합니다.")){
         return false;
      }
   }
   function check(re, what, message) {
          if(re.test(what.value)) {
              return true;
          }
          alert(message);
          what.value = "";
          what.focus();
          //return false;
      }
</script>

</head>
<body>
<form method="post" name="insert" action="insertDB.jsp" onsubmit='return validate();'>
<table width=600px style="text-align:left">
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();

	ResultSet rset = stmt.executeQuery("select * from hubo_table order by id");

		while (rset.next()){
			out.println("<tr>");
			out.println("<td colspan='2'><p>"+"기호번호 : "+rset.getInt(1)+"</p></td>");
			out.println("<td colspan='2'><p>"+"후보명 : "+rset.getString(2)+"</p></td>");
			out.println("<td><a href=deleteDB.jsp?id="+rset.getInt(1)+"&name="+rset.getString(2)+"><button type='button'>삭제</button></td>");         
			out.println("</tr>");
		}		  
	rset.close();
	stmt.close();
	conn.close();
%>	

		<tr>
			<td width=150px align=center>기호번호 :</td>
			<td><input type='number' placeholder="자동입력" name=id readonly="readonly"><br></td>
			<td width=150px align=center>후보명:</td>
			<td><input type='text' placeholder="후보명을 입력하세요" maxlength="6" id=newName name=newName onkeypress="HangulSpecialKey()"><br></td>
			<td>
			<div><input type="submit" value="등록"></div>
			</td>
		</tr>
</table>
</form>

</body>
</html>