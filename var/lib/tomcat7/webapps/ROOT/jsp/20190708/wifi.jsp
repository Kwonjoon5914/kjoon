<%@ page import="java.io.*" contentType="text/html; charset=UTF-8" %>

<HTML>
<HEAD>
	<%
		File f= new File("/var/lib/tomcat7/webapps/ROOT/jsp/20190708/Freewifidata.txt");
		BufferedReader br= new BufferedReader(new FileReader(f));
		
		String readtxt;
		
		// 빈 파일일 경우
		if((readtxt = br.readLine()) == null) {
			out.println("빈 파일입니다\n");
			return;
		}
		// 첫줄은 필드명이기 때문에 따로 읽는다.
		// 탭을 기준으로 필드를 나눈다.
		String[] field_name= readtxt.split("\t");
		
		// 융합기술 위도경도
		// 위도 :37.3856012
		// 경도 :127.1203785
		// 우리집 위도경도
		// 위도 :37.2785691
		// 경도 :127.1109105
		
		double lat=37.3856012;
		double lng=127.1203785;

		int LineCnt=0;
		
		out.println("<TABLE border=1>");
		out.println("<TR align=center>");
		while((readtxt = br.readLine())!=null) {
			String[] field = readtxt.split("\t");
			out.println("<TR>");
			out.println("<TD>"+LineCnt+"번째 항목</TD>");
			// 9번 : 지번주소
			out.println("<TD>"+field[9]+"</TD>");
			// 12번 : 위도주소
			out.println("<TD>"+field[12]+"</TD>");
			// 13번 : 경도주소
			out.println("<TD>"+field[13]+"</TD>");
			// 거리 계산
			double dist=Math.sqrt(Math.pow(Double.parseDouble(field[12])-lat, 2) + 
								 Math.pow(Double.parseDouble(field[13])-lng, 2));
			out.println("<TD>현재지점과 거리 : " + dist + "</TD>");
			out.println("</TR>");
			LineCnt++;
		}
		out.println("</TABLE>");
		br.close();
		%>
</HEAD>
<BODY>
<frame src="wifi4.jsp" >
</BODY>
</HTML>
