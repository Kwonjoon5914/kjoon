<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<html>
<style type='text/css'>
td {
font-size:12; text-align:center;
}
</style>
<script>
var muCnt=5;

function fncShow(pos){
	var i = 0;
	for(i;i<muCnt;i++){
		var obj = document.getElementById("menu"+i);
		var obj2 = document.getElementById("m"+i);
		if(i==pos){
			obj.style.display='';
			obj2.style.color="#ff0000";
		}else{
			obj.style.display = 'none';
			obj2.style.color="#000000";
		}
	}
}
//function fncHide(pos){
	//var obj=document.getElementById("menu+pos);
	//obj.style.display='none';
//}
</script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">    
<head>
	<title>Kkana Resort</title>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <script src="//code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body background="image/background3.jpg">

<div class="table-responsive">
<table cellpadding='0' cellspacing='0' border='0' class="table">
	<tr height='40' class="table-success" background="image/background3.jpg">
		<td rowspan=2><a href="main.jsp" target=main><img src="image/logo.png" width='280' height='125' border='0'></a></td>
		<td width='200' onmouseover='fncShow(0);' id='m0' class="table-warning"><h2><b>리조트소개</b></h2></td>
		<td width='200' onmouseover='fncShow(1);' id='m1' class="table-warning"><h2><b>찾아오기</b></h2></td>
		<td width='200' onmouseover='fncShow(2);' id='m2' class="table-warning"><h2><b>주변여행지</b></h2></td>
		<td width='200' onmouseover='fncShow(3);' id='m3' class="table-warning"><h2><b>예약하기</b></h2></td>
		<td width='200' onmouseover='fncShow(4);' id='m4' class="table-warning"><h2><b>리조트소식</b><h2></td>
		<td><a href="login_main.jsp" target=main><img src="image/123.png" width='125' height='125' border='0'></a></td>
		<td><a href="JoinForm.jsp" target=main><img src="image/injulme2.jpg" width='125' height='125' border='0'></a></td>
	</tr>
	<tr height='30'>
		<td colspan='6'>
		<div class="table-responsive">
			<table id='menu0' style='display:none;' cellpadding='0' cellspacing='0' border='0' width='500' height='30' class="table" background="image/background3.jpg">
			<tr>
				<td width='200' style='text-align:left; font-size:25px;'>
				<a href='main.jsp' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 까나 리조트</span>
				</a>
				<a href='a_01.html' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| VIP룸</span>
				</a>
				<a href='a_02.html' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 일반룸</span>
				</a>
				<a href='a_03.html' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 합리적인룸 |</span>
				</a>
				</td>
			</tr>
			</table>
		</div>
		<div class="table-responsive">
			<table id='menu1' style='display:none;' cellpadding='0' cellspacing='0' border='0' width='500' height='30' class="table" background="image/background3.jpg">
				<td width='500' style='text-align:left; font-size:25px;'>
				<a href='b_01.html' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 찾아오는길 |</span>
				</a>
				</td>
			</table>
		</div>
		<div class="table-responsive">
			<table id='menu2' style='display:none;' cellpadding='0' cellspacing='0' border='0' width='500' height='30' class="table" background="image/background3.jpg">
				<td width='500' style='text-align:left; font-size:25px;'>
				<a href='c_01.html' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 높아산</span>
				</a>
				<a href='c_02.html' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 검은모래해수욕장</span>
				</a>
				<a href='c_03.html' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 따끈온천 |</span>
				</a>
				</td>
			</table>
		</div>
		<div class="table-responsive">
			<table id='menu3' style='display:none;' cellpadding='0' cellspacing='0' border='0' width='500' height='30' class="table" background="image/background3.jpg">
			<tr>
				<td width='500' style='text-align:left; font-size:25px;'>
				<a href='d_01.jsp' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 예약상황</span>
				</a>
				<a href='d_02.jsp' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 예약하기 |</span>
				</a>
				</td>
			</tr>
			</table>
		</div>
		<div class="table-responsive">
			<table id='menu4' style='display:none;' cellpadding='0' cellspacing='0' border='0' width='500' height='30' class="table" background="image/background3.jpg">
			<tr>
				<td width='500' style='text-align:left; font-size:25px;'>
				<a href='../gongji/gongji_list.jsp' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 리조트소식</span>
				</a>
				<a href='./review/review_list.jsp' target=main>
				<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 이용후기 |</span>
				</a>
				</td>
			</tr>
			</table>
		</div>
		</td>
	</tr>
</table>
</div>

</body>
</html>