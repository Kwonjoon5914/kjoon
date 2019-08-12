<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>
<html>
<head>
<meta charset="UTF-8">
<title>(주)트와이스 재고 현황-상품등록</title>
<h1 align=center><B>(주)트와이스 재고 현황-상품등록</B></h1>
<style>
	img {
	max-width:100%;
	width:300px;
	}
</style>
<script language = "javascript">

function writeCheck(){
	
	var form = document.writeform;
	form.validate()
	if( !form.id2.value ) {
		alert( "상품번호를 적어주세요" );
		form.id2.focus();
		return false;
	}
	if( !form.name2.value ) {
		alert( "상품명을 적어주세요" );
		form.name2.focus();
		return false;
	}
	if( !form.number2.value )
	{
		alert( "재고 현황을 적어주세요" );
		form.number2.focus();
		return false;
	}
	if( !form.detailcontent.value ) {
		alert( "상품설명을 적어주세요" );
		form.detailcontent.focus();
		return false;
	}
	return true;
	}
    function numberMaxLength(e){
        if(e.value.length > e.maxLength){
            e.value = e.value.slice(0, e.maxLength);
        }
    }
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script language = "javascript">
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
</script>
</head>
<body>
<%	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
%>
<form name="writeform" method="post" action="jaego_insertok.jsp" enctype="multipart/form-data" onsubmit=" OnClick="javascript:writeCheck();"">
<table cellspacing=1 width=600 border=1 align=center>
	<tr>
		<td width=150><p align=left>&nbsp;상품 번호<p></td>
		<td align=center><p align=left><input type="number" min="0" max="999999" name=id2 id=id2><p></td>
	</tr>
	<tr>
		<td width=150><p align=left>&nbsp;상품명<p></td>
		<td align=center><p align=left><input type=text maxlength="10" name=name2>&nbsp;</p></td>
	</tr>
	<tr>
		<td width=150><p align=left>&nbsp;재고현황<p></td>
		<td align=center><p align=left><input type="number" min="0" max="999999" name=number2 id=number2></p></td>
	</tr>
<%
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
		String today = formatter.format(new java.util.Date());
%>
	<tr>
		<td width=150><p align=left>&nbsp;상품등록일<p></td>
<%
		out.println("<td align=center><p align=left>&nbsp;"+today+"</p></td>");
%>
	</tr>
	<tr>
		<td width=150><p align=left>&nbsp;재고등록일<p></td>
<%
		out.println("<td align=center><p align=left>&nbsp;"+today+"</p></td>");
%>
	</tr>
	<tr>
		<td width=150><p align=left>&nbsp;상품설명<p></td>
		<td align=center><p align=left><input type=text maxlength="15" name=detailcontent>&nbsp;</p></td>
	</tr>
	<tr>
		<td width=150><p align=left>&nbsp;상품사진<p></td>
		<td align=center><p align=left><input type="file" name="file" id="imgInp" required/>
		<img id="blah" src="#" alt="이미지 예시"/></p></td>
	</tr>
</table>
<%
	stmt.close();
	conn.close();
%>
<table cellspacing=1 width=600 align=center>
	<tr align="right">
	<br>
		<td><input type=submit value="등록완료">
    </tr>
    </table>
</form>

</body>
</html>