<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>busy holiday</title>
	<link href="https://fonts.googleapis.com/css?family=Fugaz+One|Nanum+Myeongjo&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<style>
		p.logo{font-family: 'Fugaz One', cursive;
			   align:center;
			   font-size: 24px}
		p.hangeul{
			   font-family: 'Nanum Myeongjo', serif;}
		.mytable { 
			border-collapse:collapse;
			text-align:center;
			align:center;
		}  
		.mytable th, .mytable td { 
			border:1px solid black; 
			font-family: 'Nanum Myeongjo', serif;
			text-align:center;
			font-size:1em;
		}
		a.no_line{
		text-decoration: none; <%--밑줄이 없애기 --%>
		}
		a.head{
		font-family: 'Nanum Myeongjo', serif;
		text-decoration : none; 
		color:#000000;
		}
		.box{
		position: relative;
		max-width:100%;
		height: 30%;
		}
		
	</style>
	</head>
	<body>
		<div>
			<div> <%--상단 로고 --%>
				<table width=100% calss=mytable>
					<th width=10%><a class=head href="category.jsp"><img align=center width=30 height=30 src="./menu.png" > 강좌 둘러보기</a></th>
					<%-- <td width=20></td> <th><a class=hangeul href="openClass.jsp">강좌 개설</a></th> --%>
					<td width=80%><p class=logo align=center>busy holiday</p></td>
					<th width=10%><a class=head href="login.jsp">로그인/회원가입</a></th>
				</table>	
			</div>
						
			<%-- 상단 사진 돌아가는 부분 --%>
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			  </ol>
			  <div align=center class="carousel-inner">
			    <div width=10 height=10 class="carousel-item active">
			      <img src="./friends.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div width=10 height=10 class="carousel-item">
			      <img  src="./music.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div width=10 height=10 class="carousel-item">
			      <img  src="./pasta.jpg" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>


			
			
			<div> <%-- 중간 강좌내용 --%>
			</div>
			
			<div> <%-- 하단 후원확보--%>
			</div>
			
			<div> <%-- 하단 회사 내용 --%>
			</div>
			
		</div>
	</body>
</html>