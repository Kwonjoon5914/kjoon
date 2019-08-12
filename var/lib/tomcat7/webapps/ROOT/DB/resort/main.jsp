<meta http-equiv="Content-Type" content="text/html" pageEncoding="utf8"/>
<meta charset="UTF-8">
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*, java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <script src="//code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<title>까나리조트에 오신것을 대 환영합니다</title>
<style>
	.carousel-inner > .item > img,
	.carousel-inner > .item > a > img {
		max-width: 100%;
		margin: auto;
		width: 900;
		height: 500;
	}
	table,th,td{
		color:red;
	}
	</style>
</head>
<body BACKGROUND="image/background2.jpg">
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
<%		
			}
		}
%>
<center>
<br>
<br>
  <!-- Header -->
  <header class="bg-primary py-5 mb-5">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12">
<%
    //현재 시간을 초로 가져오기
    long curTime = System.currentTimeMillis();
    Date date=null;    
    long oldTime=0l;
    Cookie lastTime=null;  
    boolean bln_Cookie = false;
 
   
    Cookie co[] = request.getCookies();
   
    if(co != null){
       
        for(Cookie compareCo: co){
            //out.print(compareCo.getName() + "  :  " + compareCo.getValue()+"<br/>");  
            if( compareCo.getName().equals("lastTime") ){
                lastTime = compareCo;
                oldTime = Long.valueOf(compareCo.getValue());
                date=new Date(oldTime);
                bln_Cookie = true;
                break;
            }
           
        }
       
    }
%>
<%
    if(!bln_Cookie){
        date=new Date(curTime);
        oldTime = curTime;
        lastTime = new Cookie("lastTime", Long.toString(curTime));
        lastTime.setMaxAge(60*60*24*365);
        lastTime.setPath("/");
        response.addCookie(lastTime);
        out.print("<h2>처음 방문하시는군요! 환영합니다.<h2><br/>");
        out.print("<hr color='blue'>");
 
    }else{
           
        lastTime.setValue(Long.toString(curTime));
        lastTime.setMaxAge(60*60*24*365);
        lastTime.setPath("/");
        response.addCookie(lastTime);
    }
   
%>
 
<h2>당신의 최근 접속일은 <%=date.toLocaleString() %> 입니다</h2><br/>
          <h1 class="display-4 text-white mt-5 mb-2">까나리조트는 정말 좋은 곳입니다.</h1>
          <p class="lead mb-5 text-white-50">이제 아시아를 넘어 세계로 뻗어가는 글로벌 리조트로써 전세계 어디에서나 한결같이 품격있는 서비스와 시설로 고객에게 깊은 감동을 주는 브랜드를 지향하고 있습니다.
균형 있는 라이프스타일을 추구하며 품격의 가치를 아는 고객을 위해
<br>
세련되고 모던한 감각을 지닌 안락한 객실과 세심한 배려가 묻어나는 서비스를 준비합니다.
또한 까나리조트만의 감각적인
<br>
오트 퀴진과 다양한 경험을 제공하는 시설은 감동을 더해드립니다.
<br>
까나리조트에서 품격 있는 휴식으로 삶의 균형을 완성해가시길 바랍니다.</p>
        </div>
      </div>
    </div>
  </header>
  <!-- Page Content -->
      <div class="col-lg-12">
        <h2>까나리조트는...?</h2>
        <hr>
        <p>까나 그룹의 사명은 ‘까나리’에서 비롯되었습니다. 괴테의 세계적인 명작 <젊은 베르테르의 슬픔>에 나오는 여주인공 ‘까나리’에서 따온 아름다운 이름으로 ‘까나리’는 소설을 넘어 전 세계 독자들에게 사랑받는 ‘만인의 연인’이 되었습니다. </p>
        <p>까나 그룹도 사랑과 자유, 풍요가 가득한 세상을 만들겠다는 꿈으로 대한민국을 대표하는 기업으로 성장했고 이제 세계 곳곳에서 세계인의 사랑을 받는 기업으로 도약하고 있습니다. 아시아를 선도하는 글로벌 그룹으로 세계의 모든 고객에게 보다 풍요로운 생활, 아름다운 미래를 선사할 것입니다.</p>
      </div>
    <!-- /.row -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
	<li data-target="#myCarousel" data-slide-to="3"></li>
	<li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
<div class="carousel-inner">
    <div class="item active">
      <img src="image/pool.jpg" alt="">
    </div>

    <div class="item">
      <img src="image/pool2.jpg" alt="">
    </div>

    <div class="item">
      <img src="image/pool3.jpg" alt="">
    </div>

    <div class="item">
      <img src="image/pool4.jpg" alt="">
    </div>

    <div class="item">
      <img src="image/pool5.jpg" alt="">
    </div>
</div>

  <!-- Left and right controls -->
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
</a>
</div>
</center>
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
</body>
</html>