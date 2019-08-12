<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<html lang="en">
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
<head>
  <title>Kkana Resort</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="</script'>https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="</script'>http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="main.jsp" target=main><img src="image/logo.png" width='500' height='150' border='0'></a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="main.jsp" target=main>Home</a></li>
        <li class="dropdown">

           <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container">
  <h3>Navbar With Dropdown</h3>
  <p>This example adds a dropdown menu for the "Page 1" button in the navigation bar.</p>
</div>

</body>
</html>