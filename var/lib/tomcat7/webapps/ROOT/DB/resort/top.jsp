<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>

<html>
<style type='text/css'>
td {
font-size:12; text-align:center;
}
html, body { margin: 0; padding: 0; }
ul.menu { margin: 20px auto 0 auto; }
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
	<link rel="stylesheet" href="css/style.css" media="screen">
</head>
<body background="image/background3.jpg">
<center>
<ul class="menu" align=center>
	<li><a href="main.jsp" target=main><img src="image/logo.png" width='280' height='125' border='0'></a></li>
	<li><a href="login_main.jsp" target=main><img src="image/123.png" width='100' height='100' border='0'></li>
	<li><a href="#">리조트소개</a>
		<ul>
			<li><a href="main.jsp" target=main>까나 리조트</a></li>
			<li><a href="a_01.html" target=main>VIP룸</a></li>
			<li><a href="a_02.html" target=main>일반룸</a></li>
			<li><a href="a_03.html" target=main>합리적인룸</a></li>
		</ul>
	</li>
	<li><a href="#">찾아오기</a>
		<ul>
			<li><a href="b_01.html" target=main>찾아오는길</a></li>
		</ul>
	</li>
	<li><a href="#">주변여행지</a>
		<ul>
			<li><a href="c_01.html" target=main>높아산</a></li>
			<li><a href="c_02.html" target=main>검은모래해수욕장</a></li>
			<li><a href="c_03.html" target=main>따끈온천</a></li>
		</ul>
	</li>
	<li><a href="#">예약하기</a>
		<ul>
			<li><a href="d_01.jsp" target=main>예약상황</a></li>
			<li><a href="d_02.jsp" target=main>예약하기</a></li>
		</ul>
	</li>
	<li><a href="#">리조트소식</a>
		<ul>
			<li><a href="../gongji/gongji_list.jsp" target=main>공지사항</a></li>
			<li><a href="./review/review_list.jsp" target=main>이용후기</a></li>
		</ul>
	</li>
	<li><a href="JoinForm.jsp" target=main><img src="image/injulme2.jpg" width='100' height='100' border='0'></a></li>
</ul>
</center>
</body>
</html>