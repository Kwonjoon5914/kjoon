<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://java.sun.com/xml/ns/javaee 
              http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
         version="2.5">
</web-app
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*,javax.sql.*,java.io.*, java.net.*" %>
<%@ page import = "javax.xml.parsers.*,org.w3c.dom.*" %>
<html>
<style>
        html, body{
            width: 99%;
            height: 80%;
			align: center;
        }
        table, td{
            text-align: center;
            border: 1px solid #000;
            border-collapse: collapse;
        }
        tr.head > td{
            background-color: antiquewhite;
            width: 3%;
        }
    </style>
<head>
</head>
<body>
<h1>날씨 조회</h1>
<table align=center>
	<tr>
<%
	DocumentBuilderFactory factory2 = DocumentBuilderFactory.newInstance();
	DocumentBuilder builder2 = factory2.newDocumentBuilder();
	Document doc2 = builder2.parse("http://www.kma.go.kr/wid/queryDFS.jsp?gridx=61&gridy=123");
	String wfKor2="";	//풍향 한국어
	Element root2 = doc2.getDocumentElement();
	NodeList tag_002 = doc2.getElementsByTagName("data");
	Element elmt2=(Element)tag_002.item(0);
	wfKor2=elmt2.getElementsByTagName("wfKor").item(0).getFirstChild().getNodeValue();            
	     if(wfKor2.equals("맑음")){
            out.println("<td><img src=sunnyback.png width=1850 height=500></td>");
         }
         else if(wfKor2.equals("구름 조금")){
            out.println("<td><img src=cloudback.png width=1850 height=500></td>");
         }
         else if(wfKor2.equals("구름 많음")){
            out.println("<td><img src=cloudback.png width=1850 height=500></td>");
         }
         else if(wfKor2.equals("흐림")){
            out.println("<td><img src=cloudback.png width=1850 height=500></td>");
         }
		 else if(wfKor2.equals("비")){
            out.println("<td><img src=rainyback.png width=1850 height=500></td>");
         }
%>
	</tr>
</table>
    <table>
        <tr class="head">
            <td><b>48시간중 몇번째 인지</td>
            <td>동네예보 3시간 단위</td>
            <td>현재 시간온도</td>
            <td>최고 온도</td>
			<td>최저 온도</td>
			<td>하늘 상태코드</td>
			<td>강수 상태코드</td>
			<td>날씨</td>
			<td>강수확률(%)</td>
			<td>12시간 예상 강수량</td>
			<td>12시간 예상 적설량</td>
			<td>풍속(m/s)</td>
			<td>풍향</td>
			<td>습도 %</td>
			<td>6시간 예상 강수량</td>
			<td>6시간 예상 적설량</b></td>
        </tr>
<%
	DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	DocumentBuilder builder = factory.newDocumentBuilder();
			
	Document doc = builder.parse("http://www.kma.go.kr/wid/queryDFS.jsp?gridx=61&gridy=123");
	doc.getDocumentElement().normalize();
			
	String seq="";	//48시간중 몇번째 인지 가르킴
	String hour="";	//동네예보 3시간 단위
	String day="";	//1번째날 (0: 오늘/1: 내일/2: 모레)
	String temp="";	//현재 시간온도
	String tmx="";	//최고 온도
	String tmn="";	//최저 온도
	String sky="";	//하늘 상태코드 (1: 맑음, 2: 구름조금, 3:구름많음, 4:흐림)
	String pty="";	//강수 상태코드 (0: 없음, 1: 비, 2: 비/눈, 3:눈/비, 4:눈)
	String wfKor="";	//날씨 한국어
	String wfEn="";	//날씨 영어
	String pop="";	//강수 확률%
	String r12="";	//12시간 예상 강수량
	String s12="";	//12시간 예상 적설량
	String ws="";	//풍속(m/s)
	String wd="";	//풍향 (0~7:북, 북동, 동, 남동, 남, 남서, 서, 북서)
	String wdKor="";	//풍향 한국어
	String wdEn="";	//풍향 영어
	String reh="";	//습도 %
	String r06="";	//6시간 예상 강수량
	String s06="";	//6시간 예상 적설량

      //생성된 document에서 각 요소들을 접근하여 데이터를 저장
      Element root = doc.getDocumentElement();
      NodeList tag_001 = doc.getElementsByTagName("data");
      
      for(int i=0; i<tag_001.getLength(); i++){
         Element elmt=(Element)tag_001.item(i);
         
         seq=tag_001.item(i).getAttributes().getNamedItem("seq").getNodeValue();
         hour=elmt.getElementsByTagName("hour").item(0).getFirstChild().getNodeValue();
         day=elmt.getElementsByTagName("day").item(0).getFirstChild().getNodeValue();
            if(day.equals("0")){day="오늘 ";}
            else if(day.equals("1")){day="내일 ";} 
            else if(day.equals("2")){day="모레 ";} 
         temp=elmt.getElementsByTagName("temp").item(0).getFirstChild().getNodeValue();
         tmx=elmt.getElementsByTagName("tmx").item(0).getFirstChild().getNodeValue();
         tmn=elmt.getElementsByTagName("tmn").item(0).getFirstChild().getNodeValue();
         sky=elmt.getElementsByTagName("sky").item(0).getFirstChild().getNodeValue();
         pty=elmt.getElementsByTagName("pty").item(0).getFirstChild().getNodeValue();
         wfKor=elmt.getElementsByTagName("wfKor").item(0).getFirstChild().getNodeValue();            
         wfEn=elmt.getElementsByTagName("wfEn").item(0).getFirstChild().getNodeValue();
         pop=elmt.getElementsByTagName("pop").item(0).getFirstChild().getNodeValue();
         r12=elmt.getElementsByTagName("r12").item(0).getFirstChild().getNodeValue();
         s12=elmt.getElementsByTagName("s12").item(0).getFirstChild().getNodeValue();
         ws=elmt.getElementsByTagName("ws").item(0).getFirstChild().getNodeValue();
         wd=elmt.getElementsByTagName("wd").item(0).getFirstChild().getNodeValue();
         wdKor=elmt.getElementsByTagName("wdKor").item(0).getFirstChild().getNodeValue();
         wdEn=elmt.getElementsByTagName("wdEn").item(0).getFirstChild().getNodeValue();
         reh=elmt.getElementsByTagName("reh").item(0).getFirstChild().getNodeValue();
         r06=elmt.getElementsByTagName("r06").item(0).getFirstChild().getNodeValue();
         s06=elmt.getElementsByTagName("s06").item(0).getFirstChild().getNodeValue();
%>

<%
         out.println("<tr>");
         out.println("<td width=100>"+seq+"</td>");
         out.println("<td width=100>"+day+hour+"시</td>");
         out.println("<td width=100>"+temp+"</td>");
		 
		 if(tmx.equals("-999.0")){
			 out.println("<td width=100>정보 없음</td>");
		 } else {
			 out.println("<td width=100>"+tmx+"</td>");
		 }

		 if(tmn.equals("-999.0")){
			 out.println("<td width=100>정보 없음</td>");
		 } else {
			 out.println("<td width=100>"+tmn+"</td>");
		 }         
		 
		 if(sky.equals("1")){
			 out.println("<td width=100><img src=sunny.png></td>");
		 }
		 else if(sky.equals("2")){
            out.println("<td width=100><img src=partlycloudy.png></td>");
         }
         else if(sky.equals("3")){
            out.println("<td width=100><img src=cloudy.png></td>");
         }
         else if(sky.equals("4")){
            out.println("<td width=100><img src=mostlycloudy.png></td>");
         }
		 
		 if(pty.equals("0")){
			 out.println("<td width=100><img src=sunny.png></td>");
		 }
		 else if(pty.equals("1")){
			 out.println("<td width=100><img src=drops.png width='50' height='50'></td>");
		 }
         else if(pty.equals("2")){
			 out.println("<td width=100><img src=drops.png width='50' height='50'></td>");
		 }
		 else if(pty.equals("3")){
			 out.println("<td width=100><img src=snowflake.png width='50' height='50'></td>");
		 }
		 else if(pty.equals("4")){
			 out.println("<td width=100><img src=snowflake.png width='50' height='50'></td>");
		 }
         
         if(wfKor.equals("맑음")){
            out.println("<td width=100><img src=sunny.png></td>");
         }
         else if(wfKor.equals("구름 조금")){
            out.println("<td width=100><img src=partlycloudy.png></td>");
         }
         else if(wfKor.equals("구름 많음")){
            out.println("<td width=100><img src=cloudy.png></td>");
         }
         else if(wfKor.equals("흐림")){
            out.println("<td width=100><img src=mostlycloudy.png></td>");
         }
		 else if(wfKor.equals("비")){
            out.println("<td width=100><img src=drops.png width='50' height='50'></td>");
         }
         out.println("<td width=100>"+pop+"</td>");
         out.println("<td width=100>"+r12+"</td>");
         out.println("<td width=100>"+s12+"</td>");
         out.println("<td width=100>");
		 out.println(ws.substring(0,3));
		 out.println("</td>");
		 
		 if(wd.equals("0")){
			 out.println("<td width=100><img src=0arrow.png width='50' height='50'></td>");
		 }
		 else if(wd.equals("1")){
			 out.println("<td width=100><img src=1arrow.png width='50' height='50'></td>");
		 }
		 else if(wd.equals("2")){
			 out.println("<td width=100><img src=2arrow.png width='50' height='50'></td>");
		 }
		 else if(wd.equals("3")){
			 out.println("<td width=100><img src=3arrow.png width='50' height='50'></td>");
		 }
		 else if(wd.equals("4")){
			 out.println("<td width=100><img src=4arrow.png width='50' height='50'></td>");
		 }
		 else if(wd.equals("5")){
			 out.println("<td width=100><img src=5arrow.png width='50' height='50'></td>");
		 }
		 else if(wd.equals("6")){
			 out.println("<td width=100><img src=6arrow.png width='50' height='50'></td>");
		 }
		 else if(wd.equals("7")){
			 out.println("<td width=100><img src=7arrow.png width='50' height='50'></td>");
		 }
         out.println("<td width=100>"+reh+"</td>");
         out.println("<td width=100>"+r06+"</td>");
         out.println("<td width=100>"+s06+"</td>");
         out.println("</tr>"); 
      }
%>
</table>

</body>
</html>