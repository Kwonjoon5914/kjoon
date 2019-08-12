<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<SCRIPT type="text/javascript" src="js/HuskyEZCreator.js" charset="utf-8"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript">

function writeCheck()
	{
	var sLang = "ko_KR";
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
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
	
    $(function() {
        $("#imgInp").on('change', function(){
            readURL(this);
        });
		
		$(".onlyHangul").keyup(function(event){
			if (!(event.keyCode >=37 && event.keyCode<=40)) {
			var inputVal = $(this).val();
			$(this).val(inputVal.replace(/[~!@\#$%^&*\()\-=+_']/gi,''));
			}
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
<body BACKGROUND="../resort/image/background.jpg">
<table align=center>
<form name=writeform method=post action="gongji_write.jsp" enctype="multipart/form-data">
	<tr>
		<td>&nbsp;</td>
		<td align="center">번호</td>
		<td><input type=hidden name="count" size="50" readonly="readonly">자동입력</td>
		<td>&nbsp;</td>
	</tr>
	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	<tr>
		<td>&nbsp;</td>
		<td align="center">제목</td>
		<td><input type="text" class="onlyHangul" name="title" size="50" maxlength="70" placeholder="최대 30자까지 입력가능합니다" maxlength="30" ></td>
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
		<td width=650px><textarea maxlength="400" id="content" name="content" cols="85" rows="13" placeholder="최대 400자까지 입력가능합니다"></textarea></td>
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
	<tr height="1"><td colspan="4"></td></tr>
	<tr height="1"><td colspan="4"></td></tr>
	<tr align="center">
		<td>&nbsp;</td>
		<td><input type="file" name="file" id="imgInp" required/></td>
		<td colspan="2" align=right><br><input type=button value="쓰기" OnClick="javascript:writeCheck();">
		<input type=button value="취소" OnClick="javascript:history.back(-1)"></br></td>
		<td>&nbsp;</td>
    </tr>
</form>
</table>
</body>
</html>