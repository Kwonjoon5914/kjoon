<%@ page import="java.io.*" contentType="text/html; charset=UTF-8" %>
<%
	// jsp?from=20&cnt=30 갖고오기
	String fromTemp = request.getParameter("from");
	String cntTemp = request.getParameter("cnt");
%>
<HTML>
<HEAD>
<center><H1><B>전국 무료 와이파이</B></H1>
	<style>
		#wifi_table {
			margin: 0 auto;
		}
	</style>
	
	<%
	File f= new File("/var/lib/tomcat7/webapps/ROOT/jsp/20190708/Freewifidata.txt");
	BufferedReader br = new BufferedReader(new FileReader(f));
	
	String readtxt = "";
	
	// 받아온 값 String -> Int 바꾸기.
	int fromPT = Integer.parseInt(fromTemp);
	int cntPT = Integer.parseInt(cntTemp);
	
	// 빈 파일일 경우
	if((readtxt=br.readLine())==null) {
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
	
	out.println("<TABLE border=1 id='wifi_table'>");
	out.println("<TR align=center>");
	
	out.println("<TD width=120>" +"번호"+ "</TD>");
	out.println("<TD>" +field_name[9]+ "</TD>");
	out.println("<TD>" +field_name[12]+ "</TD>");
	out.println("<TD>" +field_name[13]+ "</TD>");
	out.println("<TD>" +"거리"+ "</TD>");
	out.println("</TR>");
	
	while((readtxt= br.readLine())!=null) {
		
		// 앞에서 증가안하면 위에서 초기화된 값 0인 상태
		LineCnt++;
		
		if(LineCnt < fromPT) continue;// fromPt 번째부터
		if(LineCnt > fromPT+cntPT) break;// fromPT + cntPT 번째까지 출력
		
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
			out.println("<TD>현재지점과 거리 : " +dist+ "</TD>");
		out.println("</TR>");
		
	}
	out.println("</TABLE>");
	br.close();
	%>
</HEAD>
<BODY>
</BODY>
</HTML>