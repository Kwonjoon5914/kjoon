<meta http-equiv="Content-Type" content="text/html" pageEncoding="utf8"/>
<meta charset="UTF-8">
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <script src="//code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<title>예약 상황</title>
</head>
<body BACKGROUND="image/background.jpg">
<center>
<%
		java.text.SimpleDateFormat formatter3 = new java.text.SimpleDateFormat("yyyy-MM-dd");
		String date4 = formatter3.format(new java.util.Date());
%>
	<h2><B><%=date4%>일 기준 예약 상황(30일)</B></h2>
	<BR>
</center>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	Calendar cal = Calendar.getInstance();
	
	ResultSet rset = stmt.executeQuery("SELECT * from kkanariresv where resv_date > now() ORDER BY resv_date, room;");
	
	String resv_name="";
	String resv_room="";
	String resv_date="";
	if(rset.next()){
		resv_name = rset.getString(1);
		resv_date = rset.getString(2);
		resv_room = rset.getString(3);
	}
%>
<center>
<table class="table table-striped"">
	<tr>
		<td>일자</td>
		<td>VIP룸</td>
		<td>일반룸</td>
		<td>합리적인룸</td>
	</tr>
<form name="" method=post action="d_02.jsp">
<%
	for(int i=0; i < 30; i++){
			
		java.text.SimpleDateFormat formatter2 = new java.text.SimpleDateFormat("yyyy-MM-dd");
		String date3 = formatter2.format(cal.getTime());
		
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd (E)", Locale.KOREAN);
		String today = formatter.format(new java.util.Date());
		String date2 = formatter.format(cal.getTime());

			out.println("<tr>");
			out.println("<td>"+date2+"</td>");

			if(date2.equals(today)){
				out.println("<td colspan=3>");
				out.println("<h4><B>당일에는 예약이 불가능 합니다</B><h4>");
				out.println("</td>");
				
			} else {
				
				if (resv_date.equals(date3)&&resv_room.equals("1")){

					String loginOK="";
					loginOK = (String)session.getAttribute("login_ok");
					
					if (loginOK != null) {
						if(loginOK.equals("yes")&&loginOK!=null){

						out.println("<td>");						
						out.println("<a href=d_02.jsp?room=1&resv_date="+date3+">"+resv_name+"</a>");
						out.println("</td>");

						}
						
					} else {
						
						out.println("<td>");
						
						String maskedName = "";    // 마스킹 이름
						String firstName = "";    // 성
						String lastName = "";    // 이름
						int lastNameStartPoint;    // 이름 시작 포인터
					 
						if(!resv_name.equals("") || resv_name != null){
							if(resv_name.length() > 1){
								firstName = resv_name.substring(0, 1);
								lastNameStartPoint = resv_name.indexOf(firstName);
								lastName = resv_name.substring(lastNameStartPoint + 1, resv_name.length());
					 
								String makers = "";
					 
								for(int l = 0; l < lastName.length(); l++){
									makers += "*";
								}
					 
								lastName = lastName.replace(lastName, makers);
								maskedName = firstName + lastName;
							}else{
								maskedName = "*";
							}
						}
						
						out.println(maskedName);
						out.println("</td>");
					
					}
					
					if(rset.next()){
						resv_name = rset.getString(1);
						resv_date = rset.getString(2);
						resv_room = rset.getString(3);
					}
					
				} else {
					
					out.println("<td>");
%>
					<a href=d_02.jsp?room=1&resv_date=<%=date2%>>예약가능</a>
<%
					out.println("</td>");
				}
				
				if (resv_date.equals(date3)&&resv_room.equals("2")){
					
					String loginOK="";
					loginOK = (String)session.getAttribute("login_ok");
					
					if (loginOK != null) {
						if(loginOK.equals("yes")&&loginOK!=null){

						out.println("<td>");
						out.println("<a href=d_02.jsp?room=2&resv_date="+date3+">"+resv_name+"</a>");
						out.println("</td>");
					
						}
						
					} else {

					out.println("<td>");
						String maskedName = "";    // 마스킹 이름
						String firstName = "";    // 성
						String lastName = "";    // 이름
						int lastNameStartPoint;    // 이름 시작 포인터
					 
						if(!resv_name.equals("") || resv_name != null){
							if(resv_name.length() > 1){
								firstName = resv_name.substring(0, 1);
								lastNameStartPoint = resv_name.indexOf(firstName);
								lastName = resv_name.substring(lastNameStartPoint + 1, resv_name.length());
					 
								String makers = "";
					 
								for(int j = 0; j < lastName.length(); j++){
									makers += "*";
								}
					 
								lastName = lastName.replace(lastName, makers);
								maskedName = firstName + lastName;
							}else{
								maskedName = "*";
							}
						}
					out.println(maskedName);
					out.println("</td>");
					
					}
					
					if(rset.next()){
						resv_name = rset.getString(1);
						resv_date = rset.getString(2);
						resv_room = rset.getString(3);
					}
					
				} else {
					out.println("<td>");
%>
					<a href=d_02.jsp?room=2&resv_date=<%=date2%>>예약가능</a>
<%
					out.println("</td>");
				}
				
				if (resv_date.equals(date3)&&resv_room.equals("3")){
					String loginOK="";
					loginOK = (String)session.getAttribute("login_ok");
					
					if (loginOK != null) {
						if(loginOK.equals("yes")&&loginOK!=null){

						out.println("<td>");
						out.println("<a href=d_02.jsp?room=3&resv_date="+date3+">"+resv_name+"</a>");
						out.println("</td>");
					
						}
						
					} else {

					out.println("<td>");
						String maskedName = "";    // 마스킹 이름
						String firstName = "";    // 성
						String lastName = "";    // 이름
						int lastNameStartPoint;    // 이름 시작 포인터
					 
						if(!resv_name.equals("") || resv_name != null){
							if(resv_name.length() > 1){
								
								firstName = resv_name.substring(0, 1);
								lastNameStartPoint = resv_name.indexOf(firstName);
								lastName = resv_name.substring(lastNameStartPoint + 1, resv_name.length());
					 
								String makers = "";
					 
								for(int k = 0; k < lastName.length(); k++){
									makers += "*";
								}
					 
								lastName = lastName.replace(lastName, makers);
								maskedName = firstName + lastName;
							}else{
								maskedName = "*";
							}
						}
					out.println(maskedName);
					out.println("</td>");
					
					}
					
					if(rset.next()){
						resv_name = rset.getString(1);
						resv_date = rset.getString(2);
						resv_room = rset.getString(3);
					}
					
				} else {
					out.println("<td>");
%>
					<a href=d_02.jsp?room=3&resv_date=<%=date2%>>예약가능</a>
<%
					out.println("</td>");
				}
			}
			out.println("</tr>");
			cal.add(cal.DATE,+1);
	}

	rset.close();
	stmt.close();
	conn.close();
%>

</form>
</table>
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
<script src="js/bootstrap.js"></script>
</body>
</html>