<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="user-scable= no, width=device-width" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta http-equiv="Cache-Control" content="co-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>
<script language='javascript' type='text/javascript'>
var orientationEvent;
var uAgent=navigator.userAgent.toLowerCase();
var mobilePhones='android';
if(uAgent.indexOf(mobilePhones)!=-1){
	orientationEvent="resize";	//안드로이드는 resize로 들어옴
}
else orientationEvent="orientationchange"; //아이폰은 이렇게 들어옴
window.addEventListener(orientationEvent, function()
{
	//alert("회전했어요");
	location.href('#');
}, false);

var prevScreen=0;
var sv_prevScreen=0;
function prevShow()
{
		ScreenShow( prevScreen );
}

// 서브메뉴를 선택(하단 버튼을 누름)했을때 함수
var muCnt = 5;	//서브메뉴
var scCnt = 11;	//화면
function fncShow( pos )
{
	var i = 0;
	
	//모든 일반 화면은 막는다.
	for( i=0; i<scCnt; i++  )
	{
		var obj = document.getElementById("s"+i);
		obj.style.display = 'none';
	}
	
	//메뉴 선택에 따라 중간메뉴 div는 보여주고, 누른 버튼의 배경을 바꿔준다.
	for(i=0; i<muCnt; i++)
	{
		var obj = document.getElementById("menu"+i);
		var obj2 = document.getElementById("m"+i);
		
		if(i == pos){
			obj.style.display='';
			obj2.style.background="#ff0000";
		}else{
			obj.style.display = 'none';
			obj2.style.background="#FFFF00";
		}
	}
}
//총 화면은 15개이고 화면이 선택된 번호에 따라 화면을 보여주는 함수
var scCnt = 11;
var ScrObj;

var timer1;

function ScrAnimation(){
	var offset = -50;
		if(parseInt(ScrObj.style.left) > 10)
		{
			ScrObj.style.left = parseInt(ScrObj.style.left) + offset + "px";
			timer1 = setTimeout("ScrAnimation", 1);
		}else{
			ScrObj.style.left=5;
			clearTimeout(timer1);
		}
}

function ScreenShow(pos)
{
	var i =0;
	//모든 메뉴페이지는 막는다.
	for(i=0;i<muCnt; i++){
		var obj = document.getElementById("menu"+i);
		obj.style.display='none';
	}
	
	//선택된 화면번호의 화면만 보여준다
	for(i=0; i<scCnt; i++)
	{
	var obj = document.getElementById("s"+i);
	

		if(i==pos){
			prevScreen = sv_prevScreen;
			sv_prevScreen=i;
			obj.style.display='';
			obj.style.position="relative";
			obj.style.top=35;
			obj.style.left=screen.width;
			obj.style.height=screen.height-120;
			
			ScrObj=obj;
			ScrAnimation();
		}else{
			obj.style.display='none';
		}
	}
}
</script>
<style type="text/css">
li{
	text-align:left;vertical-align:middle;margin:2;padding:10;height:20;background-color:#aaaa00; border:2px; solid:red; font-size:14px
}
ul{
	text-align:left;vertical-align:middle;margin:2;padding:10;height:20;background-color:#bbaabb; border:2px; solid:red; font-size:14px
}
</style>
</head>
<body onload='ScreenShow(0);'>
<center>
	<div class="container" style="width:device-width;height:device-height;">
		<div id="header1" style="background-color:#00FFFF;height:35px;width:15%;float:left;" onclick='prevShow();'><center>
		<img src="../image/back_btn.png" width=40px height=32px></center></div>
		<div id="header2" style="background-color:#00FFFF;height:35px;width:70%;float:left;"><center style="margin:10px;"><B>까나 리조트</B></center></div>
		<div id="header3" style="background-color:#00FFFF;height:35px;width:15%;float:left;" onclick='ScreenShow();'><center>
		<img src="../image/home_btn.png" width=30px height=32px></center></div>
	</div>
		<div id="menu0" style="background-color:##ff0000;display:none;width:device-width;">
		리조트 소개
			<li onclick='ScreenShow(0);'><font size=6>까나 리조트</font></li>
			<li onclick='ScreenShow(1);'><font size=6>VIP룸</font></li>
			<li onclick='ScreenShow(2);'><font size=6>일반 룸</font></li>
			<li onclick='ScreenShow(3);'><font size=6>합리적인 룸</font></li>
			<br>
		</div>
		<div id="menu1" style="background-color:#EEEEEE;display:none;width:device-width;">
		찾아오기
			<li onclick='ScreenShow(4);'><font size=6>찾아오는길</font></li>
			<br>
		</div>
		<div id="menu2" style="background-color:#EEEEEE;display:none;width:device-width;">
		주변명소
			<li onclick='ScreenShow(5);'><font size=6>높아산</font></li>
			<li onclick='ScreenShow(6);'><font size=6>검은모래해수욕장</font></li>
			<li onclick='ScreenShow(7);'><font size=6>따끈온천</font></li>
			<br>
		</div>
		<div id="menu3" style="background-color:#EEEEEE;display:none;width:device-width;">
		예약하기
			<li onclick='ScreenShow(8);'><font size=6>예약상황</font></li>
			<li onclick='ScreenShow(9);'><font size=6>예약하기</font></li>
			<br>
		</div>
		<div id="menu4" style="background-color:#EEEEEE;display:none;width:device-width;">
		리조트소식
			<li onclick='ScreenShow(10);'><font size=6>리조트 소식</font></li>
			<br>
		</div>
		
		<div id="s0" style="display:none;width:device-width;">
			<center>
			<iframe src="../main.jsp" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
			</center>
		</div>
		
		<div id="s1" style="display:none;width:device-width;">
			<center>
			<iframe src="../a_01.html" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
			</center>		
		</div>
		<div id="s2" style="display:none;width:device-width;">
			<center>
			<iframe src="../a_02.html" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
			</center>
		</div>
		<div id="s3" style="display:none;width:device-width;">
			<center>
			<iframe src="../a_03.html" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
			</center>
		</div>

		<div id="s4" style="display:none;">
		<center>
		<!--
			* 카카오맵 - 약도서비스
			* 한 페이지 내에 약도를 2개 이상 넣을 경우에는
			* 약도의 수 만큼 소스를 새로 생성, 삽입해야 합니다.
		-->
		<!-- 1. 약도 노드 -->
		<div align=center id="daumRoughmapContainer1564113111236" class="root_daum_roughmap root_daum_roughmap_landing"></div>

		<!-- 2. 설치 스크립트 -->
		<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

		<!-- 3. 실행 스크립트 -->
		<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1564113111236",
				"key" : "ui7r",
				"mapWidth" : "300",
				"mapHeight" : "150"
			}).render();
		</script>
		</center>
		</div>
		
		<div id="s5" style="display:none;">
			<iframe src="../c_01.html" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
		</div>
		<div id="s6" style="display:none;">
			<iframe src="../c_02.html" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
		</div>
		<div id="s7" style="display:none;">
			<iframe src="../c_03.html" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
		</div>
		<div id="s8" style="display:none;">
		<iframe src="../d_01.jsp" frameborder="0" border="0" bordercolor="white" width=380px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
		</div>
		<div id="s9" style="display:none;">
		<iframe src="../d_02.jsp" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
		</div>
		<div id="s10" style="display:none;">
		<iframe src="/DB/gongji/gongji_list.jsp" frameborder="0" border="0" bordercolor="white" width=330px height=465px marginwidth="0" marginheight="0" scroling="yes"></iframe>
		</div>

		
		<div id="m0" onclick='fncShow(0);' style="position:absolute;bottom:3px;position:absolute;left:1%;background-color:#ff0000;height:60px;width:18%;float:left;">
			<center>
			<img src="../image/mansion.png" width=40px height=40px><br>
			<font size=2>리조트 소개</font></center>
		</div>
		<div id="m1" onclick='fncShow(1);' style="position:absolute;bottom:3px;position:absolute;left:21%;background-color:#ff0000;height:60px;width:18%;float:left;">
			<center>
			<img src="../image/bus.png" width=40px height=40px><br>
			<font size=2>찾아오기</font></center>
		</div>
		<div id="m2" onclick='fncShow(2);' style="position:absolute;bottom:3px;position:absolute;left:41%;background-color:#ff0000;height:60px;width:18%;float:left;">
			<center>
			<img src="../image/beach.png" width=40px height=40px><br>
			<font size=2>주변명소</font></center>
		</div>
		<div id="m3" onclick='fncShow(3);' style="position:absolute;bottom:3px;position:absolute;left:61%;background-color:#ff0000;height:60px;width:18%;float:left;">
			<center>
			<img src="../image/time.png" width=40px height=40px><br>
			<font size=2>예약하기</font></center>
		</div>
		<div id="m4" onclick='fncShow(4);' style="position:absolute;bottom:3px;position:absolute;left:81%;background-color:#ff0000;height:60px;width:18%;float:left;">
			<center>
			<img src="../image/home_btn.png" width=40px height=40px><br>
			<font size=2>리조트소식</font></center>
		</div>
	</div>
</center>
</body>
</html>