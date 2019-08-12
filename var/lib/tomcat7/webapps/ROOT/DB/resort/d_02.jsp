<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
<%
	String resv_date = request.getParameter( "resv_date" );
	String room = request.getParameter( "room" );
	String ModName = "";
	String ModAddr = "";
	String ModTelnum = "";
	String ModIn_name = "";
	String ModComment = "";
	String ModRoom = "";
	String ModWrite_date = "";
	String ModProcessing = "";
%>

        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>예약신청</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="//code.jquery.com/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
		<script>

			$( document ).ready(function() {
				
				var roomNo = parseInt($('#roomNo')[0].value);
				//var roomNo = 2;
				//console.log(roomNo);
				
				var room = $('#room > option');
				//console.log(room);
				 
				room.each(function(i, item) {
					//console.log(i, roomNo, item);
					if (i === roomNo-1) {
						item.setAttribute("selected", "selected");
					}
				}); 
			});
		
	
	function submitForm(mode){
		if(mode == "delete"){
			var name2 = "<%=ModName%>";
			var resv_date2 = "<%=resv_date%>";
			var room2 = "<%=room%>";
			var addr2 = "<%=ModAddr%>";
			var telnum2 = "<%=ModTelnum%>";
			var in_name2 = "<%=ModIn_name%>";
			var comment2 = "<%=ModComment%>";
			
			fm.action = "adm_delete.jsp?name="+name2+"&resv_date="+resv_date2+"&room="+room2+"&addr="+addr2+"&telnum="+telnum2+"&in_name="+in_name2+"&comment="+comment2;
		}
		
		else if(mode == "update"){
			var name2 = document.getElementById("name").value;
			var resv_date2 = document.getElementById("resv_date").value;
			var room2 = document.getElementById("room").value;
			var addr2 = document.getElementById("addr").value;
			var telnum2 = document.getElementById("telnum").value;
			var in_name2 = document.getElementById("in_name").value;
			var comment2 = document.getElementById("comment").value;
			var temp = "<%=resv_date%>";
			var write_date2 = document.getElementById("write_date").value;
			var processing2 = document.getElementById("processing").value;

			
			fm.action = "adm_update.jsp?name="+name2+"&resv_date="+resv_date2+"&room="+room2+"&addr="+addr2+"&telnum="+telnum2+"&in_name="+in_name2+"&comment="+comment2 + "&Prevresv_date=" + temp + "&write_date=" + write_date2 + "&processing=" + processing2;
		}
		fm.submit();
	}
</script>
    </head>
    <body BACKGROUND="image/background.jpg">
		<%	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
		Statement stmt = conn.createStatement();

		ResultSet rset = stmt.executeQuery("select * from kkanariresv where room=" + room + " and resv_date='" + resv_date + "';");
		if (rset.next()){
		
			ModName = rset.getString(1);
			ModAddr = rset.getString(4);
			ModTelnum = rset.getString(5);
			ModIn_name = rset.getString(6);
			ModComment = rset.getString(7);
			ModWrite_date = rset.getString(8);
			ModProcessing = rset.getString(9);
			
			ModRoom = rset.getString(3);
			}
		%>
			<!-- 모달창 -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
            <hr/>
                <!-- 본문 들어가는 부분 -->
<%
		String loginOK="";
		loginOK = (String)session.getAttribute("login_ok");
		if (loginOK != null) {
			if(loginOK.equals("yes")&&loginOK!=null){
%>
		<table align=right>
			<tr>
				<td align=right><h3>관리자계정으로 로그인된 상태입니다.</h3></td>
				<td align=right><a href="logout.jsp" target=main><h3>로그아웃하기</h3></a></td>
			</tr>
		</table>
		<br>
		<br>
		<br>
<%		
			}
		}
%>
        <div class="container"><!-- 좌우측의 공간 확보 -->
            <hr/>
                <!-- 본문 들어가는 부분 -->
        <form class="form-horizontal" role="form" method="post" action="d_02_write.jsp;">
		<input type="hidden" id="roomNo" name="roomNo" value="<%=room%>">
            <div class="form-group" id="divName">
                <label for="input" class="col-lg-2 control-label">성명</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyHangul" id="name" name="name" value="<%=ModName%>" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="10">
                </div>
            </div>
            <div class="form-group" id="divResv_date">
                <label for="input" class="col-lg-2 control-label">예약일자</label>
                <div class="col-lg-10">
                    <input type="date" class="form-control" id="resv_date" name="resv_date" value="<%=resv_date%>" data-rule-required="true" placeholder="예약일자">
                </div>
            </div>
            <div class="form-group" id="divRoom">
                <label for="input" class="col-lg-2 control-label">예약방</label>
                <div class="col-lg-10">
					<select class="form-control" id="room" name="room">
						<option value="1">1.VIP룸</option>
						<option value="2">2.일반룸</option>
						<option value="3">3.합리적인룸</option>
						<!--
						<option value="3" selected="selected">3.합리적인룸</option>
						-->
					</select>
                </div>
			</div>
            <div class="form-group" id="divAddr">
                <label for="input" class="col-lg-2 control-label">주소</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="addr" name="addr" value="<%=ModAddr%>" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="50">
                </div>
            </div>
            <div class="form-group" id="divTelnum">
                <label for="input" class="col-lg-2 control-label">전화 번호</label>
                <div class="col-lg-10">
                    <input type="tel" class="form-control onlyNumber" id="telnum" name="telnum" value="<%=ModTelnum%>" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                </div>
            </div>
            <div class="form-group" id="divIn_name">
                <label for="input" class="col-lg-2 control-label">입금자명</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyHangul" id="in_name" name="in_name" value="<%=ModIn_name%>" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="10">
                </div>
            </div>
            <div class="form-group" id="divComment">
                <label for="input" class="col-lg-2 control-label">남기실말</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="comment" name="comment" value="<%=ModComment%>" data-rule-required="true" placeholder="30자 이내로 입력 가능합니다." maxlength="30">
                </div>
            </div>
<%
		if(ModName!=""){
%>
            <div class="form-group" id="divComment">
                <label for="input" class="col-lg-2 control-label">접수일자</label>
                <div class="col-lg-10">
                    <input type="date" class="form-control" id="write_date" name="write_date" value="<%=ModWrite_date%>" data-rule-required="true" placeholder="10자 이내로 입력 가능합니다." maxlength="10">
                </div>
            </div>
            <div class="form-group" id="divComment">
                <label for="input" class="col-lg-2 control-label">진행상황</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="processing" name="processing" value="<%=ModProcessing%>" data-rule-required="true" placeholder="1자 이내로 입력 가능합니다." maxlength="1">
                </div>
            </div>
<%
		}
%>
            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
<%
		if(ModName==""){
%>
                    <button type="submit" class="btn btn-default">예약하기</button>
<%
		}
%>
        </form>
		<table>
		
<%
		if (loginOK != null) {
			if(loginOK.equals("yes")&&loginOK!=null){
%>		<form method="post" name="fm">
					<input type="button" class="btn btn-default" value="뒤로가기" onClick="window.location='d_01.jsp'">
<%
		if(ModName!=""){
%>
                    <input type="button" class="btn btn-default" value="수정하기" onClick="submitForm('update')">
                    <input type="button" class="btn btn-default" value="삭제하기" onClick="submitForm('delete')">
<%
		}
%>
<input type="hidden" id="roomNo" name="roomNo" value="<%=room%>">
		</form>
<%
			}
		}

	rset.close();
	stmt.close();
	conn.close();
%>
		</table>
        </div>
        </div>
        <script>
         
            $(function(){
                //모달을 전역변수로 선언
                var modalContents = $(".modal-contents");
                var modal = $("#defaultModal");
                 
                $('.onlyAlphabetAndNumber').keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
                    }
                });
                 
                $(".onlyHangul").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
                    }
                });
             
                $(".onlyNumber").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[^0-9]/gi,''));
                    }
                });
                //------- 검사하여 상태를 class에 적용
                 
                $('#name').keyup(function(event){
                     
                    var divName = $('#divName');
                     
                    if($.trim($('#name').val())==""){
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                });

                $('#resv_date').keyup(function(event){
                     
                    var divResv_date = $('#divResv_date');
                     
                    if($.trim($('#resv_date').val())==""){
                        divResv_date.removeClass("has-success");
                        divResv_date.addClass("has-error");
                    }else{
                        divResv_date.removeClass("has-error");
                        divResv_date.addClass("has-success");
                    }
                });

                $('#room').keyup(function(event){
                     
                    var divRoom = $('#divRoom');
                     
                    if($.trim($('#room').val())==""){
                        divRoom.removeClass("has-success");
                        divRoom.addClass("has-error");
                    }else{
                        divRoom.removeClass("has-error");
                        divRoom.addClass("has-success");
                    }
                });

                $('#addr').keyup(function(event){
                     
                    var divAddr = $('#divAddr');
                     
                    if($.trim($('#addr').val())==""){
                        divAddr.removeClass("has-success");
                        divAddr.addClass("has-error");
                    }else{
                        divAddr.removeClass("has-error");
                        divAddr.addClass("has-success");
                    }
                });

                $('#telnum').keyup(function(event){
                     
                    var divTelnum = $('#divTelnum');
                     
                    if($.trim($('#telnum').val())==""){
                        divTelnum.removeClass("has-success");
                        divTelnum.addClass("has-error");
                    }else{
                        divTelnum.removeClass("has-error");
                        divTelnum.addClass("has-success");
                    }
                });

                $('#in_name').keyup(function(event){
                     
                    var divIn_name = $('#divIn_name');
                     
                    if($.trim($('#In_name').val())==""){
                        divIn_name.removeClass("has-success");
                        divIn_name.addClass("has-error");
                    }else{
                        divIn_name.removeClass("has-error");
                        divIn_name.addClass("has-success");
                    }
                });

                $('#comment').keyup(function(event){
                     
                    var divComment = $('#divComment');
                     
                    if($.trim($('#comment').val())==""){
                        divComment.removeClass("has-success");
                        divComment.addClass("has-error");
                    }else{
                        divComment.removeClass("has-error");
                        divComment.addClass("has-success");
                    }
                });

                //------- validation 검사
                $( "form" ).submit(function( event ) {
                     
                    var divName = $('#divName');
                    var divResv_date = $('#divResv_date');
                    var divRoom = $('#divRoom');
                    var divAddr = $('#divAddr');
                    var divTelnum = $('#divTelnum');
                    var divIn_name = $('#divIn_name');
                    var divComment = $('#divComment');
                     
                    //이름 검사
                    if($('#name').val()==""){
                        modalContents.text("이름을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                        $('#name').focus();
                        return false;
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                     
                    //예약일자
<%
			java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
			String today = formatter.format(new java.util.Date());

%>
                    if($('#resv_date').val()==""){
                        modalContents.text("날짜를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divResv_date.removeClass("has-success");
                        divResv_date.addClass("has-error");
                        $('#resv_date').focus();
                        return false;
                    }else{
                        divResv_date.removeClass("has-error");
                        divResv_date.addClass("has-success");
                    }

                    if($('#resv_date').val()<="<%=today%>"){
                        modalContents.text("당일예약이나 이전 날짜 예약은 불가능합니다. 오늘 이후 예약일자를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divResv_date.removeClass("has-success");
                        divResv_date.addClass("has-error");
                        $('#resv_date').focus();
                        return false;
                    }else{
                        divResv_date.removeClass("has-error");
                        divResv_date.addClass("has-success");
                    }

                    if($('#resv_date').val()=="<%=resv_date%>"&&$('#room').val()=="<%=ModRoom%>"){
                        modalContents.text("이미 예약된 날짜입니다. 다른 날짜를 선택해주세요.");
                        modal.modal('show');
                         
                        divResv_date.removeClass("has-success");
                        divResv_date.addClass("has-error");
                        $('#resv_date').focus();
                        return false;
                    }else{
                        divResv_date.removeClass("has-error");
                        divResv_date.addClass("has-success");
                    }
                    //예약방
                    if($('#room').val()==""){
                        modalContents.text("0~3사이의 숫자를 선택하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divRoom.removeClass("has-success");
                        divRoom.addClass("has-error");
                        $('#room').focus();
                        return false;
                    }else{
                        divRoom.removeClass("has-error");
                        divRoom.addClass("has-success");
                    }
                     
                    //주소
                    if($('#addr').val()==""){
                        modalContents.text("주소를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divAddr.removeClass("has-success");
                        divAddr.addClass("has-error");
                        $('#addr').focus();
                        return false;
                    }else{
                        divAddr.removeClass("has-error");
                        divAddr.addClass("has-success");
                    }

                    //전화 번호
                    if($('#telnum').val()==""){
                        modalContents.text("전화 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divTelnum.removeClass("has-success");
                        divTelnum.addClass("has-error");
                        $('#telnum').focus();
                        return false;
                    }else{
                        divTelnum.removeClass("has-error");
                        divTelnum.addClass("has-success");
                    }

                    //입금자명
                    if($('#in_name').val()==""){
                        modalContents.text("입금자명을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divIn_name.removeClass("has-success");
                        divIn_name.addClass("has-error");
                        $('#in_name').focus();
                        return false;
                    }else{
                        divIn_name.removeClass("has-error");
                        divIn_name.addClass("has-success");
                    }

                    //남기실 말
                    if($('#comment').val()==""){
                        modalContents.text("남기실 말을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divComment.removeClass("has-success");
                        divComment.addClass("has-error");
                        $('#comment').focus();
                        return false;
                    }else{
                        divComment.removeClass("has-error");
                        divComment.addClass("has-success");
                    }
                });
            });

        </script>
                <!--// 본문 들어가는 부분 -->
            <hr/>
            <!-- 푸터 들어가는 부분 -->
             
            <div>
                <p class="text-center">
					<small><strong>경기도 성남시 분당구 황새울로 329번길 5</strong></small><br>
					<small>대표 : 권준 ㆍ 주소 :  경기도 성남시 분당구 황새울로 329번길 5 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 064-123-1234</small><br>
					<small>Copyrightⓒ test.com All rights reserved.</small>
                </p>
            </div>
            <!--// 푸터 들어가는 부분 -->
        </div>
	<script src="js/bootstrap.js"></script>
	</body>
</html>