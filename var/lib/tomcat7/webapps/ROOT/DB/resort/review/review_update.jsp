<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<SCRIPT type="text/javascript" src="js/HuskyEZCreator.js" charset="utf-8"></SCRIPT>

<%
	String key = request.getParameter("key");
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
<script language = "javascript">
    $(function() {
		
		$(".onlyHangul").keyup(function(event){
			if (!(event.keyCode >=37 && event.keyCode<=40)) {
			var inputVal = $(this).val();
			$(this).val(inputVal.replace(/[~!@\#$%^&*\()\-=+_']/gi,''));
			}
		});
    });
function writeCheck()
	{
	var sLang = "ko_KR";
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
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
	
    $(function() {
        $("#imgInp").on('change', function(){
            readURL(this);
        });
    });
	
    function readURL(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }

          reader.readAsDataURL(input.files[0]);
        }
    }
</script>
</head>
<body>

<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	ResultSet rset = stmt.executeQuery("select id, title, date, content, file from review where id="+key+";");

	while(rset.next()){
%>
<table border=1 align=center>
<form name=writeform method=post action="review_updateok.jsp" enctype="multipart/form-data">

<table align=center>
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
		<td><input type="text" class="onlyHangul" maxlength="30" name="title" size="50" maxlength="70" value=<%=rset.getString(2)%> placeholder="최대 30자까지 입력가능합니다"></td>
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
		<td width=650><textarea maxlength="400" id="content" name="content" cols="52" rows="13" placeholder="최대 400자까지 입력가능합니다"><%=rset.getString(4)%></textarea></td>
		<SCRIPT type="text/javascript">
         var oEditors = [];
         nhn.husky.EZCreator.createInIFrame({
               oAppRef: oEditors,
               elPlaceHolder: "content",
               sSkinURI: "SmartEditor2Skin.html",
               fCreator: "createSEditor2"
         });
		</SCRIPT>
		<td>&nbsp;</td>
	</tr>
	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	<tr>
		<td>&nbsp;</td>
		<td align="center">파일</td>
<%
	if(!rset.getString(5).replace("/var/lib/tomcat7/webapps/ROOT/DB/resort/file/","").equals("null")){
		out.println("<td align=center colspan=2><p align=left>&nbsp;"+"<img id=blah src="+rset.getString(5).replace("/var/lib/tomcat7/webapps/ROOT","")+"></p></td>");
%>
		<td align=center><p align=left><input type="file" name="file2" id="imgInp" required/>
<%
	} else {
%>
		<td align=center><p align=left><img id="blah" src="#" alt="파일 예시."/></p></td>
		<td align=center><p align=left><input type="file" name="file2" id="imgInp" required/></p></td>
		<td>&nbsp;</td>
		</tr>
<%
		}
	}
	rset.close();
	stmt.close();
	conn.close();
%>

	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	<tr height="1"><td colspan="4"></td></tr>
	<tr height="1"><td colspan="4"></td></tr>
	<tr align="center">
		<td>&nbsp;</td>
		<td colspan="2"><input type=button value="수정완료" OnClick="javascript:writeCheck();">
		<input type=button value="취소" OnClick="window.location='review_list.jsp'">
		<td>&nbsp;</td>
    </tr>
    </table>
</form>
</table>
</body>
</html>